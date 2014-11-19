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
my $currency1_cldr_file = "main/*/currencies.json";
my $currency2_cldr_file = "supplemental/currencyData.json";
my $system_cldr_file    = "supplemental/numberingSystems.json";
my $currency_pm_file    = 'lib/CLDR/Number/Data/Currency.pm';
my $system_pm_file      = 'lib/CLDR/Number/Data/System.pm';

$currency1_cldr_file = "$cldr_dir/$currency1_cldr_file";
$currency2_cldr_file = "$cldr_dir/$currency2_cldr_file";
$system_cldr_file    = "$cldr_dir/$system_cldr_file";

my %parent_of = (
    'en-AG' => 'en-001',
    'en-AI' => 'en-001',
    'en-BB' => 'en-001',
    'en-BM' => 'en-001',
    'en-BS' => 'en-001',
    'en-BW' => 'en-001',
    'en-BZ' => 'en-001',
    'en-CC' => 'en-001',
    'en-CK' => 'en-001',
    'en-CM' => 'en-001',
    'en-CX' => 'en-001',
    'en-DM' => 'en-001',
    'en-ER' => 'en-001',
    'en-FJ' => 'en-001',
    'en-FM' => 'en-001',
    'en-GB' => 'en-001',
    'en-GD' => 'en-001',
    'en-GH' => 'en-001',
    'en-GM' => 'en-001',
    'en-GY' => 'en-001',
    'en-JM' => 'en-001',
    'en-KE' => 'en-001',
    'en-KI' => 'en-001',
    'en-KN' => 'en-001',
    'en-KY' => 'en-001',
    'en-LC' => 'en-001',
    'en-LR' => 'en-001',
    'en-LS' => 'en-001',
    'en-MG' => 'en-001',
    'en-MS' => 'en-001',
    'en-MU' => 'en-001',
    'en-MW' => 'en-001',
    'en-MY' => 'en-001',
    'en-NA' => 'en-001',
    'en-NF' => 'en-001',
    'en-NG' => 'en-001',
    'en-NR' => 'en-001',
    'en-NU' => 'en-001',
    'en-PG' => 'en-001',
    'en-PH' => 'en-001',
    'en-PN' => 'en-001',
    'en-PW' => 'en-001',
    'en-RW' => 'en-001',
    'en-SB' => 'en-001',
    'en-SC' => 'en-001',
    'en-SD' => 'en-001',
    'en-SL' => 'en-001',
    'en-SS' => 'en-001',
    'en-SX' => 'en-001',
    'en-SZ' => 'en-001',
    'en-TC' => 'en-001',
    'en-TK' => 'en-001',
    'en-TO' => 'en-001',
    'en-TT' => 'en-001',
    'en-TV' => 'en-001',
    'en-TZ' => 'en-001',
    'en-UG' => 'en-001',
    'en-VC' => 'en-001',
    'en-VU' => 'en-001',
    'en-WS' => 'en-001',
    'en-ZA' => 'en-001',
    'en-ZM' => 'en-001',
    'en-ZW' => 'en-001',
    'en-150' => 'en-GB',
    'en-AU' => 'en-GB',
    'en-BE' => 'en-GB',
    'en-DG' => 'en-GB',
    'en-FK' => 'en-GB',
    'en-GG' => 'en-GB',
    'en-GI' => 'en-GB',
    'en-HK' => 'en-GB',
    'en-IE' => 'en-GB',
    'en-IM' => 'en-GB',
    'en-IN' => 'en-GB',
    'en-IO' => 'en-GB',
    'en-JE' => 'en-GB',
    'en-MO' => 'en-GB',
    'en-MT' => 'en-GB',
    'en-NZ' => 'en-GB',
    'en-PK' => 'en-GB',
    'en-SG' => 'en-GB',
    'en-SH' => 'en-GB',
    'en-VG' => 'en-GB',
    'es-AR' => 'es-419',
    'es-BO' => 'es-419',
    'es-CL' => 'es-419',
    'es-CO' => 'es-419',
    'es-CR' => 'es-419',
    'es-CU' => 'es-419',
    'es-DO' => 'es-419',
    'es-EC' => 'es-419',
    'es-GT' => 'es-419',
    'es-HN' => 'es-419',
    'es-MX' => 'es-419',
    'es-NI' => 'es-419',
    'es-PA' => 'es-419',
    'es-PE' => 'es-419',
    'es-PR' => 'es-419',
    'es-PY' => 'es-419',
    'es-SV' => 'es-419',
    'es-US' => 'es-419',
    'es-UY' => 'es-419',
    'es-VE' => 'es-419',
    'pt-AO' => 'pt-PT',
    'pt-CV' => 'pt-PT',
    'pt-GW' => 'pt-PT',
    'pt-MO' => 'pt-PT',
    'pt-MZ' => 'pt-PT',
    'pt-ST' => 'pt-PT',
    'pt-TL' => 'pt-PT',
    'az-Cyrl' => 'root',
    'bm-Nkoo' => 'root',
    'bs-Cyrl' => 'root',
    'en-Dsrt' => 'root',
    'ha-Arab' => 'root',
    'mn-Mong' => 'root',
    'ms-Arab' => 'root',
    'pa-Arab' => 'root',
    'shi-Latn' => 'root',
    'sr-Latn' => 'root',
    'uz-Arab' => 'root',
    'uz-Cyrl' => 'root',
    'vai-Latn' => 'root',
    'zh-Hant' => 'root',
    'zh-Hant-MO' => 'zh-Hant-HK',
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
                sign => escape_control($locales{currencies}{$locale}{$_}),
            } } sort grep {
                $locale eq 'root' && $_ ne $locales{currencies}{root}{$_}
                || $locale ne 'root' && (
                    parent_of($locale) eq 'root'
                        && !defined $locales{currencies}{root}{$_}
                        && $_ ne $locales{currencies}{$locale}{$_}
                    || defined $locales{currencies}{parent_of($locale)}{$_}
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