use utf8;
use strict;
use warnings;
use charnames qw( :full );
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 18;
use CLDR::Number;

my $f = CLDR::Number->new;
my ($in, $out);

# Tests from examples in:
# UTS #35: Unicode LDML, Part 3: Numbers
# http://www.unicode.org/reports/tr35/tr35-numbers.html

# 2.3 Number Symbols
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
