![Perl CLDR](https://www.gravatar.com/avatar/656f15a25eff4437f5a82e7c929f41dd?s=96)

[![Build status](https://travis-ci.org/patch/cldr-number-pm5.png)](https://travis-ci.org/patch/cldr-number-pm5)
[![Coverage status](https://coveralls.io/repos/patch/cldr-number-pm5/badge.png)](https://coveralls.io/r/patch/cldr-number-pm5)
[![CPAN version](https://badge.fury.io/pl/CLDR-Number.png)](http://badge.fury.io/pl/CLDR-Number)

# NAME

CLDR::Number - Localized number formatters using the Unicode CLDR

# VERSION

This document describes CLDR::Number v0.16, built with Unicode CLDR v28.

# SYNOPSIS

```perl
use CLDR::Number;

# new object with 'es' (Spanish) locale
$cldr = CLDR::Number->new(locale => 'es');

# decimals
$decf = $cldr->decimal_formatter;

# when locale is 'es' (Spanish)
say $decf->format(1234.5);  # '1234,5'

# when locale is 'es-MX' (Mexican Spanish)
say $decf->format(1234.5);  # '1,234.5'

# when locale is 'ar' (Arabic)
say $decf->format(1234.5);  # '١٬٢٣٤٫٥'

# percents
$perf = $cldr->percent_formatter;

# when locale is 'tr' (Turkish)
say $perf->format(0.05);  # '%5'

# currencies
$curf = $cldr->currency_formatter(currency_code => 'USD');

# when locale is 'en' (English) and currency is USD (US dollars)
say $curf->format(9.99);  # '$9.99'

# when locale is 'en-CA' (Canadian English) and currency is USD
say $curf->format(9.99);  # 'US$9.99'

# when locale is 'fr-CA' (Canadian French) and currency is USD
say $curf->format(9.99);  # '9,99 $ US'
```

# DEPRECATION

Using the `locale` method as a setter is deprecated. In the future the object’s
locale will become immutable. Please see
[issue #38](https://github.com/patch/cldr-number-pm5/issues/38) for details and
to submit comments or concerns.

# DESCRIPTION

Software localization includes much more than just translations. Numbers,
prices, and even percents should all be localized based on the user’s language,
script, and region. Fortunately, the Unicode Common Locale Data Repository
(CLDR) provides locale data and specifications for formatting numeric data to
use with many of the world’s locales.

This class provides common attributes shared among the supported formatter
classes as well as methods to instantiate decimal, percent, and currency
formatter objects. The value for any attribute (such as **locale** or
**decimal\_sign**) will be passed to the formatter objects on instantiation but
can be overwritten by manually passing another value for the attribute or
calling a setter method on the formatter object.

## Methods

- decimal\_formatter

    Returns a decimal formatter, which is a [CLDR::Number::Format::Decimal](https://metacpan.org/pod/CLDR::Number::Format::Decimal) object
    instantiated with all of the attributes from your CLDR::Number object as well as
    any attributes passed to this method.

- percent\_formatter

    Returns a percent formatter, which is a [CLDR::Number::Format::Percent](https://metacpan.org/pod/CLDR::Number::Format::Percent) object
    instantiated with all of the attributes from your CLDR::Number object as well as
    any attributes passed to this method.

- currency\_formatter

    Returns a currency formatter, which is a [CLDR::Number::Format::Currency](https://metacpan.org/pod/CLDR::Number::Format::Currency)
    object instantiated with all of the attributes from your CLDR::Number object as
    well as any attributes passed to this method.

## Common Attributes

These are common attributes among this class and all formatter classes. All
attributes other than **locale**, **default\_locale**, and **cldr\_version** have
defaults that change depending on the current **locale**. All string attributes
are expected to be character strings, not byte strings.

- locale

    Default: value of **default\_locale** attribute if it exists, otherwise `root`

    Valid: Unicode locale identifiers

    Examples: `es` (Spanish), `es-ES` (European Spanish), `es-419` (Latin
    American Spanish), `zh-Hant` (Traditional Chinese), `zh-Hans` (Simplified
    Chinese), `chr` (Cherokee)

    The locale is case-insensitive and can use either `-` (hyphen-minus) or `_`
    (low line) as a separator.

- default\_locale

    Default: none

    Valid: Unicode locale identifiers

    Use this if you want a locale other than the generic `root` if the **locale**
    attribute is not set or not valid.

- numbering\_system

    Valid: currently only decimal numbering systems are supported

    Examples: `latn` (Western Digits), `arab` (Arabic-Indic Digits), `hanidec`
    (Chinese Decimal Numerals), `fullwide` (Full Width Digits)

    In the future, algorithmic numbering systems like `hant` (Traditional Chinese
    Numerals), `hebr` (Hebrew Numerals), and `roman` (Roman Numerals) will be
    supported.

    The numbering system may alternately be provided as a Unicode locale extension
    subtag. For example, locale `ja-u-nu-fullwide` for the Japanese language
    (`ja`) with the numbering system (`nu`) set to Full Width Digits
    (`fullwide`).

- decimal\_sign

    Examples: `.` (full stop) for **root**, **en**; `,` (comma) for **de**, **fr**

- group\_sign

    Examples: `,` (comma) for **root**, **en**; `.` (full stop) for **de**; ` `
    (no-break space) for **fr**

- plus\_sign

    Examples: `+` (plus sign) for **root**, **en**, and most locales

- minus\_sign

    Examples: `-` (hyphen-minus) for **root**, **en**, and most locales

- infinity

    Examples: `∞` (infinity) for **root**, **en**, and almost all locales

- nan

    Examples: `NaN` for **root**, **en**, and most locales; many other variations for
    individual locales like `не число` for **ru** and `非數值` for **zh-Hant**

- cldr\_version

    Value: `28`

    This is a read-only attribute that will always reflect the currently supported
    Unicode CLDR version.

# NOTES

The Unicode private-use characters U+F8F0 through U+F8F4 are used internally and
are therefore not supported in custom patterns and signs.

# SEE ALSO

- [CLDR::Number::FAQ](https://metacpan.org/pod/CLDR::Number::FAQ)
- [CLDR::Number::TODO](https://metacpan.org/pod/CLDR::Number::TODO)
- [Unicode beyond just characters: Localization with the
CLDR](http://patch.codes/talks/localization-with-the-unicode-cldr/) (video and
slides)
- [Perl Advent Calendar:
CLDR TL;DR](http://perladvent.org/2014/2014-12-23.html)
- [UTS #35: Unicode LDML, Part 3:
Numbers](http://www.unicode.org/reports/tr35/tr35-numbers.html)
- [CLDR Translation Guidelines: Number
Patterns](http://cldr.unicode.org/translation/number-patterns)
- [CLDR Translation Guidelines: Number
Symbols](http://cldr.unicode.org/translation/number-symbols)

# AUTHOR

Nova Patch &lt;patch@cpan.org>

This project is brought to you by [Shutterstock](http://www.shutterstock.com/).
Additional open source projects from Shutterstock can be found at
[code.shutterstock.com](http://code.shutterstock.com/).

# COPYRIGHT AND LICENSE

© 2013–2015 Shutterstock, Inc.

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

Unicode is a registered trademark of Unicode, Inc., in the United States and
other countries.
