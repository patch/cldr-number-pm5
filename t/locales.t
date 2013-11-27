use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 13;
use CLDR::Number;

my $cldr = CLDR::Number->new;
is $cldr->locale, 'root', 'locale is root when undefined with no default';
ok !$cldr->default_locale, 'no default for the default locale';

$cldr->locale('xx');
is $cldr->locale, 'root', 'locale is root when invalid with no default';

$cldr->default_locale('xx');
ok !$cldr->default_locale, 'default locale does not fallback like locale';

$cldr = CLDR::Number->new(default_locale => 'en-US');
is $cldr->default_locale, 'en-US', 'default locale is set';
is $cldr->locale, 'en-US', 'locale is default when undefined with default';

$cldr->locale('xx');
is $cldr->locale, 'en-US', 'locale is default when invalid with default';

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
