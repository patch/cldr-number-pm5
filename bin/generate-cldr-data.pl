#!/usr/bin/perl
use v5.10;
use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use JSON qw( decode_json );
use Text::Xslate;

my $cldr_dir = shift || '';

my $version            = '0.09_01';
my $currency_cldr_file = "supplemental/currencyData.json";
my $system_cldr_file   = "supplemental/numberingSystems.json";
my $currency_pm_file   = 'lib/CLDR/Number/Data/Currency.pm';
my $system_pm_file     = 'lib/CLDR/Number/Data/System.pm';

$currency_cldr_file = "$cldr_dir/$currency_cldr_file";
$system_cldr_file   = "$cldr_dir/$system_cldr_file";

my $tx = Text::Xslate->new(path => ['bin/template']);

open my $currency_cldr_fh, '<', $currency_cldr_file
    or die "Can't open $currency_cldr_file: $!";
binmode $currency_cldr_fh, ':bytes';
my $currency_cldr_data = decode_json(
    do { local $/; <$currency_cldr_fh> }
)->{supplemental}{currencyData}{fractions};
close $currency_cldr_fh
    or die "Can't close $currency_cldr_file: $!";

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