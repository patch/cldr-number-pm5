use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 22;
use CLDR::Number;

my $f = CLDR::Number->new;

# Tests adapted from:
# TwitterCldr (twitter-cldr-rb)
# https://github.com/twitter/twitter-cldr-rb/tree/master/spec/formatters/numbers

# number_formatter_spec.rb
$f->locale('sv');
is $f->decimal(12),      '12',       'format a basic integer';
is $f->decimal(12.0),    '12,0',     'format a basic decimal';
is $f->decimal(1337),    '1 337',    'formats an integer larger than 999';
is $f->decimal(1337.37), '1 337,37', 'formats a decimal larger than 999.9';
$f->decimal_precision(0); is $f->format(12.1),  '12',   'formats with precision of 0';
$f->decimal_precision(1); is $f->format(12.25), '12,3', 'rounds and formats with precision of 1';

# decimal_formatter_spec.rb
$f->locale('nl');
is $f->decimal(12.0),  '12,0',  'format positive decimals correctly';
is $f->decimal(-12.0), '-12,0', 'format negative decimals correctly';
$f->decimal_precision(3);
is $f->decimal(-12), '-12,000', 'respect the decimal_precision attribute';

# percent_formatter_spec.rb
$f->locale('da');
is $f->percent(12),  '12 %',  'format the number correctly';
is $f->percent(-12), '-12 %', 'format negative numbers correctly';
$f->percent_precision(3);
is $f->percent(-12), '-12,000 %', 'respect the percent_precision attribute';

# currency_formatter_spec.rb
$f->locale('ms');
is $f->currency(12),  '$12.00',    'use a dollar sign when no other currency symbol is given (and default to a precision of 2)';
is $f->currency(-12), '-($12.00)', 'handles negative numbers';
$f->currency_sign('S/.');  is $f->currency(12), 'S/.12.00',  'use the specified currency symbol when specified';
$f->currency_code('XYZ');  is $f->currency(12), 'XYZ12.00',  'use the currency code as the symbol if the currency code cannot be identified';
$f->currency_code('CAD');  is $f->currency(12), '$12.00',    'respect the :use_cldr_symbol option';
$f->currency_code('THB');  is $f->currency(12), '฿12.00',    'use the currency symbol for the corresponding currency code';
$f->currency_precision(3); is $f->currency(12), '$12.000',   'overrides the default precision';
$f->currency_code('TND');  is $f->currency(12), 'TND12.000', 'use the currency-specific default precision';
$f->currency_code('CHF');
$f->currency_rounding(5);
is $f->currency(12.03), 'CHF12.05', 'use the currency rounding for the currency code';
is $f->currency(12.02), 'CHF12.00', 'use the currency rounding for the currency code';
