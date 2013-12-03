use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 6;
use Test::Exception;
use CLDR::Number;

my ($cldr, $curf, $decf);

$cldr = CLDR::Number->new;
$curf = $cldr->currency_formatter;
throws_ok { $curf->format(1.99) } qr{Missing required attribute: currency_code};

$cldr = CLDR::Number->new(locale => 'sv');
is $cldr->decimal_sign, ',', 'Swedish decimal from format generator';

$decf = $cldr->decimal_formatter;
is $decf->decimal_sign, ',', 'Swedish decimal from decimal formatter';
is $decf->format(1.99), '1,99', 'formatted Swedish decimal';

$curf = $cldr->currency_formatter(currency_code => 'SEK');
is $curf->decimal_sign, ':', 'Swedish currency decimal from currency formatter';
is $curf->format(1.99), '1:99 kr', 'formatted Swedish currency';
