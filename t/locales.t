use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 24;
use CLDR::Number;

my $cldr = CLDR::Number->new;

# conversion
$cldr->locale('zh_Hant_HK');
is $cldr->locale, 'zh-Hant-HK', 'convert undercore to dash';

$cldr->locale('ZH-Hant-HK');
is $cldr->locale, 'zh-Hant-HK', 'convert language to lowercase';

$cldr->locale('zh-hANT-hk');
is $cldr->locale, 'zh-Hant-HK', 'convert script to titlecase';

$cldr->locale('zh-Hant-hk');
is $cldr->locale, 'zh-Hant-HK', 'convert region to uppercase';

$cldr->locale('AST');
is $cldr->locale, 'ast', 'convert 3-letter language to lowercase';

$cldr->locale('en-');
is $cldr->locale, 'en', 'allow trailing dash and remove';

$cldr->locale('fr_');
is $cldr->locale, 'fr', 'allow trailing underscore and remove';

# BCP 47 conversion
$cldr->locale('und');
is $cldr->locale, 'root', 'und → root';

# defaults
$cldr = CLDR::Number->new;
is $cldr->locale, 'root', 'locale is root when undefined with no default';
ok !$cldr->default_locale, 'no default for the default locale';

$cldr->locale('xx');
is $cldr->locale, 'root', 'locale is root when invalid with no default';

$cldr = CLDR::Number->new(default_locale => 'xx');
ok !$cldr->default_locale, 'default locale does not fallback like locale';

$cldr = CLDR::Number->new(default_locale => 'en-US');
is $cldr->default_locale, 'en-US', 'default locale is set';
is $cldr->locale, 'en-US', 'locale is default when undefined with default';

$cldr->locale('xx');
is $cldr->locale, 'en-US', 'locale is default when invalid with default';

# fallbacks
$cldr = CLDR::Number->new;
$cldr->locale('en-XX');
is $cldr->locale, 'en', 'locale is language when invalid country';

$cldr->locale('eo-IR');
is $cldr->locale, 'eo', 'locale is language when unavailable country';

$cldr->locale('en-Xxxx');
is $cldr->locale, 'en', 'locale is language when invalid script';

$cldr->locale('zh-Latn');
is $cldr->locale, 'zh', 'locale is language when unavailable script';

$cldr->locale('zh-Hant-US');
is $cldr->locale, 'zh-Hant', 'locale is language-script when unavailable country';

$cldr->locale('en-Hant-US');
is $cldr->locale, 'en-US', 'locale is language-country when unavailable script';

$cldr->locale('es-419');
is $cldr->locale, 'es-419', 'numeric regions are supported';

# inheritance
$cldr->locale('zh-Hant-HK');
is_deeply $cldr->_locale_inheritance, [qw( zh-Hant-HK zh-Hant zh root )], 'locale inheritance';

$cldr->locale('en-US-u-va-posix');
is_deeply $cldr->_locale_inheritance, [qw( en-US-u-va-posix en-US en root )], 'locale inheritance';
