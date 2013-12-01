use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 5;
use CLDR::Number;

my $cldr = CLDR::Number->new(locale => 'sv');
is $cldr->decimal_sign, ',', 'Swedish decimal from format generator';

my $decf = $cldr->decimal_formatter;
is $decf->decimal_sign, ',', 'Swedish decimal from decimal formatter';
is $decf->format(1.99), '1,99', 'formatted Swedish decimal';

my $curf = $cldr->currency_formatter(currency_code => 'SEK');
is $curf->decimal_sign, ':', 'Swedish currency decimal from currency formatter';
is $curf->format(1.99), '1:99 kr', 'formatted Swedish currency';
