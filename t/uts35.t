use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 38;
use CLDR::Number;

my $f = CLDR::Number->new;
my ($in, $out);

# Tests adapted from examples in:
# UTS #35: Unicode LDML, Part 3: Numbers
# http://www.unicode.org/reports/tr35/tr35-numbers.html

# 2.3 Number Symbols
$f->locale('en');
$f->decimal_pattern('#,###');    is $f->decimal(100_000_000),  '100,000,000',  'group by 3';
$f->decimal_pattern('#,####');   is $f->decimal(1_0000_0000),  '1,0000,0000',  'group by 4';
$f->decimal_pattern('#,##,###'); is $f->decimal(12_34_56_789), '12,34,56,789', 'primary group by 3, secondary group by 2';
$in  = 100_000_0000;
$out = '100,000,0000';
$f->decimal_pattern('###,###,####');  is $f->decimal($in), $out, 'primary group by 4, secondary group by 3';
$f->decimal_pattern('#,##,###,####'); is $f->decimal($in), $out, 'ignore tertiary group';
$f->decimal_pattern('##,#,###,####'); is $f->decimal($in), $out, 'ignore tertiary group';

# 2.4.1 Compact Number Formats
$f->locale('fr');
is $f->short_decimal(12_345), '12 K', 'short decimal format';

# 2.4.2 Currency Formats
$in = -3.27;
$f->locale('en');
$f->currency_code('USD');
$f->currency_pattern('¤#,##0.00');             is $f->currency($in), '-$3.27',  'default negative currency';
$f->currency_pattern('¤#,##0.00;(¤#,##0.00)'); is $f->currency($in), '($3.27)', 'custom negative currency';

# 2.5 Miscellaneous Patterns
$f->locale('en');
is $f->at_least(99),   '99+',    'at least 99';
is $f->range(99, 103), '99–103', 'range from 99 to 103';

# 3.1 Number Patterns
$in = 1_234.567;
$f->locale('fr');
$f->decimal_pattern('#,##0.##');   is $f->decimal($in), '1 234,57';
$f->decimal_pattern('#,##0.###');  is $f->decimal($in), '1 234,567';
$f->decimal_pattern('###0.#####'); is $f->decimal($in), '1234,567';
$f->decimal_pattern('###0.0000#'); is $f->decimal($in), '1234,5670';
$f->decimal_pattern('00000.0000'); is $f->decimal($in), '01234,5670';
$f->currency_pattern('#,##0.00 ¤');
$f->currency_code('EUR'); is $f->currency($in), '1 234,57 €';
$f->currency_code('JPY'); is $f->currency($in), '1 235 ¥';

# 3.3 Formatting
$f->locale('en');
# TODO: maximum integer digits
$f->decimal_pattern('00000');  is $f->decimal(1997),    '01997',  'minimum integer digits';
$f->decimal_pattern('0.##');   is $f->decimal(0.125),   '0.12',   'maximum fraction digits';
$f->decimal_pattern('0.0000'); is $f->decimal(0.125),   '0.1250', 'minimum fraction digits';
$f->decimal_pattern('0.####'); is $f->decimal(0.10004), '0.1',    'trailing fractional zeros are not displayed';

# 3.4 Scientific Notation
$f->locale('en');
$f->scientific_pattern('0.###E0');
is $f->scientific(1234), '1.234E3', 'scientific notation';
$f->scientific_pattern('0.###E+0');
is $f->scientific(10),  '1E+1', 'scientific with explicit positive exponent';
is $f->scientific(1),   '1E+0', 'scientific with explicit positive exponent';
is $f->scientific(0.1), '1E-1', 'scientific with explicit positive exponent when negative';
$f->scientific_pattern('00.###E0');   is $f->scientific(0.00123), '12.3E-4',  'scientific with minimum integer digits';
$f->scientific_pattern('##0.####E0'); is $f->scientific(12345),   '12.345E3', 'scientific with maximum integer digits';
$f->scientific_pattern('##0.##E0');   is $f->scientific(12345),   '12.3E3',   'scientific with significant digits logic';

# 3.5 Significant Digits
$f->locale('en');
$f->decimal_pattern('@@@');  is $f->decimal(12345),   '12300', 'significant digits; min/max: 3';
$f->decimal_pattern('@@@');  is $f->decimal(0.12345), '0.123', 'significant digits; min/max: 3';
$f->decimal_pattern('@@##'); is $f->decimal(3.14159), '3.142', 'significant digits; min: 2, max: 4';
$f->decimal_pattern('@@##'); is $f->decimal(1.23004), '1.23',  'significant digits; min: 2, max: 4';
$f->decimal_pattern('@##');  is $f->decimal(0.1203),  '0.12',  'significant digits; min: 1, max: ';

# 3.6 Padding
$f->locale('en');
$f->currency_code('USD');
$f->currency_pattern('¤*x#,##0.00');
is $f->decimal(123),  '$xx123.00', 'padding (applied)';
is $f->decimal(1234), '$1,234.00', 'padding (not applied)';

# Rounding
$f->locale('en');
$f->decimal_pattern('0.65');
is $f->decimal(1.234), '1.3', 'rounding to 0.65';

# 3.7 Quoting Rules
$f->locale('en');
$f->decimal_pattern("'X '#' Q '");
is $f->decimal(1939), 'X 1939 Q ', 'pattern quoting';
