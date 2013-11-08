use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 38;
use CLDR::Number;

my $cldr = CLDR::Number->new;
my ($decf, $perf, $scif, $curf);

# Tests adapted from examples in:
# UTS #35: Unicode LDML, Part 3: Numbers
# http://www.unicode.org/reports/tr35/tr35-numbers.html

# 2.3 Number Symbols
$decf = $cldr->decimal_formatter(locale => 'en');
$decf->pattern('#,###');         is $decf->format(100_000_000),  '100,000,000',  'group by 3';
$decf->pattern('#,####');        is $decf->format(1_0000_0000),  '1,0000,0000',  'group by 4';
$decf->pattern('#,##,###');      is $decf->format(12_34_56_789), '12,34,56,789', 'primary group by 3, secondary group by 2';
$decf->pattern('###,###,####');  is $decf->format(100_000_0000), '100,000,0000', 'primary group by 4, secondary group by 3';
$decf->pattern('#,##,###,####'); is $decf->format(100_000_0000), '100,000,0000', 'ignore tertiary group';
$decf->pattern('##,#,###,####'); is $decf->format(100_000_0000), '100,000,0000', 'ignore tertiary group';

SKIP: {
    skip 'format_short NYI', 1;
    # 2.4.1 Compact Number Formats
    $decf = $cldr->decimal_formatter(locale => 'fr');
    is $decf->format_short(12_345), '12 K', 'short decimal format';
};

# 2.4.2 Currency Formats
$curf = $cldr->currency_formatter(locale => 'en', currency_code => 'USD');
$curf->pattern('¤#,##0.00');             is $curf->format(-3.27), '-$3.27',  'default negative currency';
$curf->pattern('¤#,##0.00;(¤#,##0.00)'); is $curf->format(-3.27), '($3.27)', 'custom negative currency';

# 2.5 Miscellaneous Patterns
$decf = $cldr->decimal_formatter(locale => 'en');
is $decf->at_least(99),   '99+',    'at least 99';
is $decf->range(99, 103), '99–103', 'range from 99 to 103';

# 3.1 Number Patterns
$decf = $cldr->decimal_formatter(locale => 'fr');
$decf->pattern('#,##0.##');   is $decf->format(1_234.567), '1 234,57';
$decf->pattern('#,##0.###');  is $decf->format(1_234.567), '1 234,567';
$decf->pattern('###0.#####'); is $decf->format(1_234.567), '1234,567';
$decf->pattern('###0.0000#'); is $decf->format(1_234.567), '1234,5670';
$decf->pattern('00000.0000'); is $decf->format(1_234.567), '01234,5670';
$curf->pattern('#,##0.00 ¤');
$decf = $cldr->currency_formatter(locale => 'fr');
$curf->currency_code('EUR'); is $curf->format(1_234.567), '1 234,57 €';
$curf->currency_code('JPY'); is $curf->format(1_234.567), '1 235 ¥';

# 3.3 Formatting
$decf = $cldr->decimal_formatter(locale => 'en');
# TODO: maximum integer digits
$decf->pattern('00000');  is $decf->format(1997),    '01997',  'minimum integer digits';
$decf->pattern('0.##');   is $decf->format(0.125),   '0.12',   'maximum fraction digits';
$decf->pattern('0.0000'); is $decf->format(0.125),   '0.1250', 'minimum fraction digits';
$decf->pattern('0.####'); is $decf->format(0.10004), '0.1',    'trailing fractional zeros are not displayed';

SKIP: {
    skip 'scientific_formatter NYI', 7;
    # 3.4 Scientific Notation
    $scif = $cldr->scientific_formatter(locale => 'en');
    $scif->pattern('0.###E0');
    is $scif->format(1234), '1.234E3', 'scientific notation';
    $scif->pattern('0.###E+0');
    is $scif->format(10),  '1E+1', 'scientific with explicit positive exponent';
    is $scif->format(1),   '1E+0', 'scientific with explicit positive exponent';
    is $scif->format(0.1), '1E-1', 'scientific with explicit positive exponent when negative';
    $scif->pattern('00.###E0');   is $scif->format(0.00123), '12.3E-4',  'scientific with minimum integer digits';
    $scif->pattern('##0.####E0'); is $scif->format(12345),   '12.345E3', 'scientific with maximum integer digits';
    $scif->pattern('##0.##E0');   is $scif->format(12345),   '12.3E3',   'scientific with significant digits logic';
};

# 3.5 Significant Digits
$decf = $cldr->decimal_formatter(locale => 'en');
$decf->pattern('@@@');  is $decf->format(12345),   '12300', 'significant digits; min/max: 3';
$decf->pattern('@@@');  is $decf->format(0.12345), '0.123', 'significant digits; min/max: 3';
$decf->pattern('@@##'); is $decf->format(3.14159), '3.142', 'significant digits; min: 2, max: 4';
$decf->pattern('@@##'); is $decf->format(1.23004), '1.23',  'significant digits; min: 2, max: 4';
$decf->pattern('@##');  is $decf->format(0.1203),  '0.12',  'significant digits; min: 1, max: ';

# 3.6 Padding
$curf = $cldr->currency_formatter(locale => 'en');
$curf->currency_code('USD');
$curf->pattern('¤*x#,##0.00');
is $curf->format(123),  '$xx123.00', 'padding (applied)';
is $curf->format(1234), '$1,234.00', 'padding (not applied)';

# Rounding
$decf = $cldr->decimal_formatter(locale => 'en');
$decf->pattern('0.65');
is $decf->format(1.234), '1.3', 'rounding to 0.65';

# 3.7 Quoting Rules
$decf = $cldr->decimal_formatter(locale => 'en');
$decf->pattern("'X '#' Q '");
is $decf->format(1939), 'X 1939 Q ', 'pattern quoting';
