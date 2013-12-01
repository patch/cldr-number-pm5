use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 7;
use CLDR::Number;

my $cldr = CLDR::Number->new;

$cldr->locale('ar-DZ');
is $cldr->decimal, ',', 'decimal directly from ar-DZ';

$cldr->locale('ar-EG');
is $cldr->decimal, '.', 'decimal inherited from ar';

$cldr->locale('lu');
is $cldr->decimal, ',', 'decimal directly from lu';
is $cldr->minus,   '-', 'minus inherited from root';

my $curf = $cldr->currency_formatter(locale => 'sv-FI');
is $curf->decimal, ':', 'currency decimal inherited from sv';

$curf->locale('en-AU');
$curf->currency_code('AUD');
is $curf->currency_sign, '$', 'currency sign directly from en-AU';
$curf->currency_code('JPY');
is $curf->currency_sign, '¥', 'currency sign inherited from en';
