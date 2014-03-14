![Perl CLDR](https://www.gravatar.com/avatar/656f15a25eff4437f5a82e7c929f41dd?s=96)

# NAME

CLDR::Number - Localized number formatters using the Unicode CLDR

# VERSION

This document describes CLDR::Number v0.06\_1, built with Unicode CLDR v24.

# SYNOPSIS

```perl
use CLDR::Number;

my $cldr = CLDR::Number->new(locale => 'es');

# decimals
my $decf = $cldr->decimal_formatter;

say $decf->format(1234.5);  # '1 234,5' (Spanish)

$decf->locale('es-MX');
say $decf->format(1234.5);  # '1,234.5' (Mexican Spanish)

# percents
my $perf = $cldr->percent_formatter(locale => 'tr');

say $perf->format(0.05);  # '%5' (Turkish)

# currencies
my $curf = $cldr->currency_formatter(
    locale        => 'en',
    currency_code => 'USD',
);

say $curf->format(9.99);  # '$9.99' (English / USD)

$curf->locale('en-CA');
say $curf->format(9.99);  # 'US$9.99' (Canadian English / USD)

$curf->locale('fr-CA');
say $curf->format(9.99);  # '9,99 $US' (Canadian French / USD)
```

# DESCRIPTION

Software localization includes much more than just translations. Numbers,
prices, and even percents should all be localized based the user’s language,
script, and region. Fortunately, the Unicode Common Locale Data Repository
(CLDR) provides locale data and specifications for formatting numeric data to
use with many of the world’s locales.

This class provides common attributes shared among the supported formatter
classes as well as methods to instantiate decimal, percent, and currency
formatter objects. The value for any attribute (such as __locale__ or
__decimal\_sign__) will be passed to the formatter objects on instantiation but
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
attributes other than __locale__, __default\_locale__, and __cldr\_version__ have
defaults that change depending on the current __locale__. All string attributes
are expected to be character strings, not byte strings.

- locale

    Default: value of __default\_locale__ attribute if it exists, otherwise `root`

    Valid: Unicode locale identifiers

    Examples: `es` (Spanish), `es-ES` (European Spanish), `es-419` (Latin
    American Spanish), `zh-Hant` (Traditional Chinese), `zh-Hans` (Simplified
    Chinese), `chr` (Cherokee)

    The locale is case-insensitive and can use either `-` (hyphen-minus) or `_`
    (low line) as a separator.

- default\_locale

    Default: none

    Valid: Unicode locale identifiers

    Use this if you want a locale other than the generic `root` if the __locale__
    attribute is not set or not valid.

- decimal\_sign

    Examples: `.` (full stop) for __root__, __en__; `,` (comma) for __de__, __fr__

- group\_sign

    Examples: `,` (comma) for __root__, __en__; `.` (full stop) for __de__; ` ` (no-break space) for __fr__

- plus\_sign

    Examples: `+` (plus sign) for __root__, __en__, and most locales

- minus\_sign

    Examples: `-` (hyphen-minus) for __root__, __en__, and most locales

- cldr\_version

    Value: `24`

    This is a read-only attribute that will always reflect the currently supported
    Unicode CLDR version.

# NOTES

The Unicode private-use characters U+F8F0 through U+F8F4 are used internally and
are therefore not supported in custom patterns and signs.

# SEE ALSO

- [CLDR::Number::FAQ](https://metacpan.org/pod/CLDR::Number::FAQ)
- [CLDR::Number::TODO](https://metacpan.org/pod/CLDR::Number::TODO)
- [UTS #35: Unicode LDML, Part 3: Numbers](http://www.unicode.org/reports/tr35/tr35-numbers.html)
- [CLDR Translation Guidelines: Number Patterns](http://cldr.unicode.org/translation/number-patterns)
- [CLDR Translation Guidelines: Number Symbols](http://cldr.unicode.org/translation/number-symbols)

# AUTHOR

Nick Patch <patch@cpan.org>

This project is brought to you by [Perl CLDR](http://perl-cldr.github.io/) and
[Shutterstock](http://www.shutterstock.com/). Additional open source projects
from Shutterstock can be found at
[code.shutterstock.com](http://code.shutterstock.com/).

# COPYRIGHT AND LICENSE

© 2013–2014 Shutterstock, Inc.

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
