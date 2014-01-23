use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 36;
use Test::Warn;
use CLDR::Number;

my $cldr = CLDR::Number->new;
my $decf = $cldr->decimal_formatter;

$decf->locale('en');
is $decf->format(5.0),              '5';
is $decf->format(0),                '0';
is $decf->format(.5),               '0.5';
is $decf->format(.05),              '0.05';
is $decf->format(.005),             '0.005';
is $decf->format(50_000.05),        '50,000.05';
is $decf->format(5_000_000.05),     '5,000,000.05';
is $decf->format(5_000_000_000.05), '5,000,000,000.05';
is $decf->format(-50_000.05),       '-50,000.05';

$decf->locale('fr');
is $decf->format(5.0),              '5';
is $decf->format(0),                '0';
is $decf->format(.5),               '0,5';
is $decf->format(.05),              '0,05';
is $decf->format(.005),             '0,005';
is $decf->format(50_000.05),        '50 000,05';
is $decf->format(5_000_000.05),     '5 000 000,05';
is $decf->format(5_000_000_000.05), '5 000 000 000,05';
is $decf->format(-50_000.05),       '-50 000,05';

TODO: {
    local $TODO = 'non-Latin scripts NYI';

    $decf->locale('ar');
    is $decf->format(-50.0),   '50-';
    is $decf->format(-50_000), '50,000-';
    is $decf->format(-50.05),  '50.05-';
    is $decf->format(-.05),    '0.05-';
}

$decf->locale('bn');
is $decf->format(1_23_456),    '1,23,456';
is $decf->format(1_23_45_678), '1,23,45,678';

warning_is {
    is $decf->format(undef), undef, 'decimal format when undef';
} 'Use of uninitialized value in CLDR::Number::Format::Decimal::format';

warning_is {
    is $decf->at_least(undef), undef, 'decimal at_least when undef';
} 'Use of uninitialized value in CLDR::Number::Format::Decimal::at_least';

warning_is {
    is $decf->range(undef, 1), undef, 'decimal range when A is undef';
} 'Use of uninitialized value in CLDR::Number::Format::Decimal::range';

warning_is {
    is $decf->range(1, undef), undef, 'decimal range when B is undef';
} 'Use of uninitialized value in CLDR::Number::Format::Decimal::range';

warning_is {
    my $perf = $cldr->percent_formatter;
    is $perf->format(undef), undef, 'percent format when undef';
} 'Use of uninitialized value in CLDR::Number::Format::Percent::format';

warning_is {
    my $curf = $cldr->currency_formatter(currency_code => 'EUR');
    is $curf->format(undef), undef, 'currency format when undef';
} 'Use of uninitialized value in CLDR::Number::Format::Currency::format';
