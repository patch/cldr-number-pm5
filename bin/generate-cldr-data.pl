#!/usr/bin/perl
use v5.10;
use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Unicode::UCD qw( charinfo );
use JSON qw( decode_json );
use Text::Xslate;

my $cldr_dir = shift || '';

my $version             = '0.09_01';
my $parent_cldr_file    = 'supplemental/parentLocales.json';
my $system_cldr_file    = 'supplemental/numberingSystems.json';
my $currency1_cldr_file = 'main/*/currencies.json';
my $currency2_cldr_file = 'supplemental/currencyData.json';
my $base_pm_file        = 'lib/CLDR/Number/Data/Base.pm';
my $system_pm_file      = 'lib/CLDR/Number/Data/System.pm';
my $currency_pm_file    = 'lib/CLDR/Number/Data/Currency.pm';

for my $path (
    $parent_cldr_file,
    $system_cldr_file,
    $currency1_cldr_file,
    $currency2_cldr_file,
) {
    $path = "$cldr_dir/$path";
}

open my $parent_cldr_fh, '<', $parent_cldr_file
    or die "Can't open $parent_cldr_file: $!";
binmode $parent_cldr_fh, ':bytes';
my %parent_of = %{decode_json(
    do { local $/; <$parent_cldr_fh> }
)->{supplemental}{parentLocales}{parentLocale}};
close $parent_cldr_fh
    or die "Can't close $parent_cldr_file: $!";

my %currency_override = (
    'en-AU' => { AUD => '$' },
);

my $tx = Text::Xslate->new(path => ['bin/template']);

my %locales;
for my $file (glob $currency1_cldr_file) {
    open my $fh, '<', $file
        or die "Can't open $file: $!";
    binmode $fh, ':bytes';
    my $main = decode_json(
        do { local $/; <$fh> }
    )->{main};
    my ($locale, $data) = %$main;
    $data = $data->{numbers}{currencies};
    $locales{currencies}{$locale} = {
        map  { $_ =>  $data->{$_}{symbol} }
        grep { exists $data->{$_}{symbol} }
        keys %$data
    };
    close $fh
        or die "Can't close $file: $!";
}

open my $currency2_cldr_fh, '<', $currency2_cldr_file
    or die "Can't open $currency2_cldr_file: $!";
binmode $currency2_cldr_fh, ':bytes';
my $currency_cldr_data = decode_json(
    do { local $/; <$currency2_cldr_fh> }
)->{supplemental}{currencyData}{fractions};
close $currency2_cldr_fh
    or die "Can't close $currency2_cldr_file: $!";

open my $system_cldr_fh, '<', $system_cldr_file
    or die "Can't open $system_cldr_file: $!";
binmode $system_cldr_fh, ':bytes';
my $system_cldr_data = decode_json(
    do { local $/; <$system_cldr_fh> }
)->{supplemental};
close $system_cldr_fh
    or die "Can't close $system_cldr_file: $!";

my $cldr_version = $system_cldr_data->{version}{_cldrVersion};

open my $base_pm_fh, '>', $base_pm_file
    or die "Can't open $base_pm_file: $!";
printf {$base_pm_fh} $tx->render('base.tx', {
    name          => 'Base',
    version       => $version,
    cldr_version  => $cldr_version,
    use_charnames => 1,
    use_constants => 1,
    parents       => [
        map  { [ $_, $parent_of{$_} ] }
        sort { $parent_of{$a} eq 'root' && $parent_of{$b} ne 'root' && -1
            || $parent_of{$b} eq 'root' && $parent_of{$a} ne 'root' && 1
            || $parent_of{$a} cmp $parent_of{$b}
            || $a cmp $b }
        keys %parent_of
    ],
});
close $base_pm_fh
    or die "Can't close $base_pm_file: $!";

my %currencies = %$currency_cldr_data;
my @currencies = map {
    my %currency = %{$currencies{$_}};
    { code => $_, attributes => [
        map  { { name => tr{_}{}dr =~ s{(\p{Lu})}{_\L$1}r, value => $currency{$_} } }
        grep { exists $currency{$_} } qw( _digits _rounding _cashDigits _cashRounding )
    ] }
} 'DEFAULT', sort grep { length == 3 } keys %currencies;

open my $currency_pm_fh, '>', $currency_pm_file
    or die "Can't open $currency_pm_file: $!";
printf {$currency_pm_fh} $tx->render('currency.tx', {
    name          => 'Currency',
    version       => $version,
    cldr_version  => $cldr_version,
    use_charnames => 1,
    currencies    => \@currencies,
    locales       => [
        grep { @{$_->{currencies}} }
        map  { my $locale = $_; {
            code       => /-/ ? "'$locale'" : $locale,
            currencies => [ map { {
                code => $_,
                sign => escape_control($currency_override{$locale}{$_}
                                       || $locales{currencies}{$locale}{$_}),
            } } sort grep {
                exists $currency_override{$locale}{$_}
                || $locale eq 'root' && $_ ne $locales{currencies}{root}{$_}
                || $locale ne 'root' && (
                    parent_of($locale) eq 'root'
                        && !exists $locales{currencies}{root}{$_}
                        && $_ ne $locales{currencies}{$locale}{$_}
                    || exists $locales{currencies}{parent_of($locale)}{$_}
                        && $locales{currencies}{$locale}{$_}
                            ne $locales{currencies}{parent_of($locale)}{$_}
                )
            } keys %{$locales{currencies}{$locale}} ]
        } } sort {
            $a eq 'root' && -1 || $b eq 'root' || $a cmp $b
        } keys %{$locales{currencies}}
    ],
});
close $currency_pm_fh
    or die "Can't close $system_pm_file: $!";

my %systems = %{$system_cldr_data->{numberingSystems}};
my @systems = map  { { name    => sprintf('% -8s', $_),
                       numbers => join ' ', split //, $systems{$_}{_digits} } }
              grep { $systems{$_}{_type} eq 'numeric' }
              sort keys %systems;

open my $system_pm_fh, '>', $system_pm_file
    or die "Can't open $system_pm_file: $!";
printf {$system_pm_fh} $tx->render('system.tx', {
    name          => 'System',
    version       => $version,
    cldr_version  => $cldr_version,
    systems       => \@systems,
});
close $system_pm_fh
    or die "Can't close $system_pm_file: $!";

sub escape_control {
    my ($str) = @_;

    return qq{'$str'} if $str !~ s{ ( \p{Cf} ) }{
        '\\N{' . charinfo(ord $1)->{name} . '}'
    }xe;

    return qq{"$str"};
}

sub parent_of {
    my ($locale) = @_;

    return $parent_of{$locale}
        if exists $parent_of{$locale};

    return $1
        if $locale =~ /^(.+)-/;

    return 'root'
        if $locale ne 'root';

    return '';
}