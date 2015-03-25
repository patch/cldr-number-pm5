use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 15;
use Test::Differences;
use CLDR::Number;

my $cldr = CLDR::Number->new;

$cldr->locale('ar-DZ');
is $cldr->decimal_sign, ',', 'decimal directly from ar-DZ';

$cldr->locale('ar-EG');
is $cldr->decimal_sign, '٫', 'decimal inherited from ar';

$cldr->locale('lu');
is $cldr->decimal_sign, ',', 'decimal directly from lu';
is $cldr->minus_sign,   '-', 'minus inherited from root';

$cldr->locale('es-US');
is $cldr->decimal_sign, '.', 'decimal inherited from es-419, not es';
is $cldr->group_sign,   ',', 'group inherited from es-419, not es';

my $curf = $cldr->currency_formatter(locale => 'sv-FI');
is $curf->decimal_sign, ':', 'currency decimal inherited from sv';

$curf->locale('en-AU');
$curf->currency_code('AUD');
is $curf->currency_sign, '$', 'currency sign directly from en-AU';
$curf->currency_code('JPY');
is $curf->currency_sign, 'JP¥', 'currency sign inherited from en-001';

$cldr->locale('shi-Tfng-MA');
eq_or_diff(
    $cldr->_locale_inheritance,
    [qw( shi-Tfng-MA shi-Tfng shi root )],
    'locale inheritance'
);

$cldr->locale('root');
eq_or_diff(
    $cldr->_locale_inheritance,
    [qw( root )],
    'root has a single level of inheritance'
);

$cldr->locale('es-MX');
eq_or_diff(
    $cldr->_locale_inheritance,
    [qw( es-MX es-419 es root )],
    'locale inheritance with added step'
);

$cldr->locale('az-Cyrl');
eq_or_diff(
    $cldr->_locale_inheritance,
    [qw( az-Cyrl root )],
    'locale inheritance with removed step'
);

$cldr->locale('zh-Hant-MO');
eq_or_diff(
    $cldr->_locale_inheritance,
    [qw( zh-Hant-MO zh-Hant-HK zh-Hant root )],
    'locale inheritance with added and removed steps'
);

$cldr->locale('en-US-u-va-posix');
eq_or_diff(
    $cldr->_locale_inheritance,
    [qw( en-US-u-va-posix en-US en root )],
    'locale inheritance with Unicode extension'
);
