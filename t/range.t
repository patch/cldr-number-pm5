use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 6;
use CLDR::Number;

my ($cldr, $decf, $perf, $curf);

$cldr = CLDR::Number->new(locale => 'ja');
$decf = $cldr->decimal_formatter;
$perf = $cldr->percent_formatter;
$curf = $cldr->currency_formatter(currency_code => 'JPY');

is $decf->range(1, 5),       '1～5',           'range of numbers (ja)';
is $perf->range(0.01, 0.05), '1%～5%',         'range of percents (ja)';
is $curf->range(1, 5),       '￥1.00～￥5.00', 'range of prices (ja)';

$cldr = CLDR::Number->new(locale => 'de');
$decf = $cldr->decimal_formatter;
$perf = $cldr->percent_formatter;
$curf = $cldr->currency_formatter(currency_code => 'EUR');

is $decf->range(1, 5),       '1–5',         'range of numbers (de)';
is $perf->range(0.01, 0.05), '1 %–5 %',       'range of percents (de)';
is $curf->range(1, 5),       '1,00 €–5,00 €', 'range of prices (de)';
