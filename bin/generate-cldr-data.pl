#!/usr/bin/perl
use v5.10;
use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Unicode::UCD qw( charinfo );
use Scalar::Util qw( looks_like_number );
use List::Util qw( any none first );
use List::MoreUtils qw( part );
use JSON qw( decode_json );
use Text::Xslate;
use CLDR::Number;

my $cldr_dir = shift || '';

my $version             = '0.19';
my $parent_cldr_file    = 'supplemental/parentLocales.json';
my $system_cldr_file    = 'supplemental/numberingSystems.json';
my $number_cldr_file    = 'main/*/numbers.json';
my $currency1_cldr_file = 'main/*/currencies.json';
my $currency2_cldr_file = 'supplemental/currencyData.json';
my $base_pm_file        = 'lib/CLDR/Number/Data/Base.pm';
my $system_pm_file      = 'lib/CLDR/Number/Data/System.pm';
my $currency_pm_file    = 'lib/CLDR/Number/Data/Currency.pm';

for my $path (
    $parent_cldr_file,
    $system_cldr_file,
    $number_cldr_file,
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

my %local_alias = (
    'ca-ES-VALENCIA' => 'ca-ES-u-va-valencia',
    'en-US-POSIX'    => 'en-US-u-va-posix',
);

# Use to override CLDR data if an official error is discovered, for example:
#    'en-AU' => { AUD => '$' },
my %currency_override = (
);

my $tx = Text::Xslate->new(path => ['bin/template']);

my ($cldr_version, %locales);
for my $file (glob $number_cldr_file) {
    open my $fh, '<', $file
        or die "Can't open $file: $!";
    binmode $fh, ':bytes';
    my $main = decode_json(
        do { local $/; <$fh> }
    )->{main};
    my ($locale, $data) = %$main;
    $locale = normalize($locale);
    $cldr_version //= $data->{identity}{version}{_cldrVersion};
    $data = $data->{numbers};
    my $system = $data->{defaultNumberingSystem};
    $locales{numbers}{$locale} = {
        pattern => {
            at_least => $data->{"miscPatterns-numberSystem-$system"}{atLeast},
            currency => $data->{"currencyFormats-numberSystem-$system"}{standard},
            decimal  => $data->{"decimalFormats-numberSystem-$system"}{standard},
            percent  => $data->{"percentFormats-numberSystem-$system"}{standard},
            range    => $data->{"miscPatterns-numberSystem-$system"}{range},
        },
        symbol => {
            currency_decimal => $data->{"symbols-numberSystem-$system"}{currencyDecimal},
            decimal          => $data->{"symbols-numberSystem-$system"}{decimal},
            group            => $data->{"symbols-numberSystem-$system"}{group},
            infinity         => $data->{"symbols-numberSystem-$system"}{infinity},
            minus            => $data->{"symbols-numberSystem-$system"}{minusSign},
            nan              => $data->{"symbols-numberSystem-$system"}{nan},
            permil           => $data->{"symbols-numberSystem-$system"}{perMille},
            percent          => $data->{"symbols-numberSystem-$system"}{percentSign},
            plus             => $data->{"symbols-numberSystem-$system"}{plusSign},
        },
        attr => {
            system    => $system,
            min_group => $data->{minimumGroupingDigits},
        }
    };
    close $fh
        or die "Can't close $file: $!";
}

$CLDR::Number::Data::Base::PARENT = \%parent_of;
$CLDR::Number::Data::Base::DATA = { map { $_ => 1 } keys %{$locales{numbers}} };
for my $locale (keys %{$locales{numbers}}) {
    $locales{inheritance}{$locale} = CLDR::Number::_build_inheritance(
        CLDR::Number::_split_locale($locale)
    );
}

for my $file (glob $currency1_cldr_file) {
    open my $fh, '<', $file
        or die "Can't open $file: $!";
    binmode $fh, ':bytes';
    my $main = decode_json(
        do { local $/; <$fh> }
    )->{main};
    my ($locale, $data) = %$main;
    $locale = normalize($locale);
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

my @categories = (
    [ pattern => [qw( at_least currency decimal percent range )] ],
    [ symbol  => [qw( currency_decimal decimal group infinity minus nan percent permil plus )] ],
    [ attr    => [qw( min_group system )] ],
);

my @locale_parts =
    part { @{$_->{categories}} ? 1 : 0 }
    map  { my $locale = $_; {
        code       => $locale,
        categories => [
            grep { @{$_->{subcategories}} > 0 }
            map  { my $category = $_; {
                name          => $category->[0],
                subcategories => [map { {
                    name  => $_,
                    value => escape_control($locales{numbers}{$locale}{$category->[0]}{$_}),
                } } grep {
                    my $subcat = $_;
                    my $value  = $locales{numbers}{$locale}{$category->[0]}{$subcat};
                    defined $value && (
                        $locale eq 'root' ||
                        $value ne first { defined }
                                    map { $locales{numbers}{$_}{$category->[0]}{$subcat} }
                                        parents($locale)
                    ) && (
                        # TODO: remove when fixed http://unicode.org/cldr/trac/ticket/8967
                        $subcat ne 'min_group' || looks_like_number($value)
                    )
                } @{$category->[1]}],
            } } @categories
        ],
    } } sort {
        $a eq 'root' && -1 || $b eq 'root' || $a cmp $b
    } keys %{$locales{numbers}};

my @unused_lines;
for my $locale (map { $_->{code} } @{$locale_parts[0]}) {
    if (!@unused_lines || length(join ' ', @{$unused_lines[-1]}, $locale) > 72) {
        push @unused_lines, [ $locale ];
    }
    else {
        push @{$unused_lines[-1]}, $locale;
    }
}

open my $base_pm_fh, '>', $base_pm_file
    or die "Can't open $base_pm_file: $!";
print {$base_pm_fh} $tx->render('base.tx', {
    name          => 'Base',
    version       => $version,
    cldr_version  => $cldr_version,
    use_charnames => 1,
    use_constants => 1,
    locales       => [ map { $_->{code} = quote_key($_->{code}); $_ } @{$locale_parts[1]} ],
    unused        => [ map { join ' ', @$_ } @unused_lines ],
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
print {$currency_pm_fh} $tx->render('currency.tx', {
    name          => 'Currency',
    version       => $version,
    cldr_version  => $cldr_version,
    use_charnames => 1,
    currencies    => \@currencies,
    locales       => [
        grep { @{$_->{currencies}} }
        map  { my $locale = $_; {
            code       => quote_key($locale),
            currencies => [ map { {
                code => $_,
                sign => escape_control(
                    $currency_override{$locale}{$_}
                    || $locales{currencies}{$locale}{$_}
                ),
            } } sort grep { my $currency = $_;
                exists $currency_override{$locale}{$currency}
                || $locale eq 'root' && $currency ne $locales{currencies}{root}{$currency}
                || $locale ne 'root' && (
                    (
                        (none { defined }
                         map  { $locales{currencies}{$_}{$currency} }
                              parents($locale))
                        || $locales{currencies}{$locale}{$currency}
                            ne first { defined }
                               map   { $locales{currencies}{$_}{$currency} }
                                     parents($locale)
                    )
                    && any { $currency ne $_ }
                       grep   { defined }
                       map    { $locales{currencies}{$_}{$currency} }
                              $locale, parents($locale)
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
print {$system_pm_fh} $tx->render('system.tx', {
    name          => 'System',
    version       => $version,
    cldr_version  => $cldr_version,
    systems       => \@systems,
});
close $system_pm_fh
    or die "Can't close $system_pm_file: $!";

sub quote_key {
    my ($key) = @_;

    return $key =~ /-/ ? "'$key'" : $key;
}

sub escape_control {
    my ($str) = @_;

    $str =~ s{ ( \p{Cf} ) }{ '\\N{' . charinfo(ord $1)->{name} . '}' }xeg;

    return $str       if $str =~ /^[0-9]+$/;
    return qq["$str"] if $str =~ /\\/;
    return "q[$str]"  if $str =~ /'/;
    return "'$str'";
}

sub parents {
    my ($locale) = @_;

    return @{$locales{inheritance}{$locale}}[1..$#{$locales{inheritance}{$locale}}];
}

sub normalize {
    my ($locale) = @_;

    return $local_alias{$locale} || $locale;
}