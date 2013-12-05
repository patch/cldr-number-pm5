![Perl CLDR](https://www.gravatar.com/avatar/656f15a25eff4437f5a82e7c929f41dd?s=96)

# NAME

CLDR::Number - Localized number formatters using Unicode CLDR

# VERSION

This document describes CLDR::Number v0.00\_01, built with Unicode CLDR v24. This
is a development release and functionality may change.

# SYNOPSIS

    use CLDR::Number;

    my $cldr = CLDR::Number->new(locale => 'es');

    # decimals
    my $decf = $cldr->decimal_formatter;

    say $decf->format(1234.5);  # '1 234,5' (Spanish)

    $decf->locale('es-MX');
    say $decf->format(1234.5);  # '1,234.5' (Mexican Spanish)

    # percents
    my $perf = $cldr->percent_formatter(locale => 'eu');

    say $perf->format(0.05);  # '% 5' (Basque)

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

# METHODS

- decimal\_formatter

    Returns a decimal formatter, which is a [CLDR::Number::Format::Decimal](http://search.cpan.org/perldoc?CLDR::Number::Format::Decimal) object
    instantiated with all of the attributes from your CLDR::Number object as well as
    any attributes passed to this method.

- percent\_formatter

    Returns a percent formatter, which is a [CLDR::Number::Format::Percent](http://search.cpan.org/perldoc?CLDR::Number::Format::Percent) object
    instantiated with all of the attributes from your CLDR::Number object as well as
    any attributes passed to this method.

- currency\_formatter

    Returns a currency formatter, which is a [CLDR::Number::Format::Currency](http://search.cpan.org/perldoc?CLDR::Number::Format::Currency)
    object instantiated with all of the attributes from your CLDR::Number object as
    well as any attributes passed to this method.

# ATTRIBUTES

- locale

    Default: value of `default_locale` attribute if exists, otherwise `root`

    Valid: Unicode locale identifier

- default\_locale

    Default: none

    Valid: Unicode locale identifier

- decimal\_sign

    Default: `.` when `root` locale

- group\_sign

    Default: `,` when `root` locale

- plus\_sign

    Default: `+` when `root` locale

- minus\_sign

    Default: `-` when `root` locale

- cldr\_version

    Value: `24`

# TODO

- only the Latin (`latn`) number system currently is supported
- only the `standard` type of formats are currently supported, not `short`, `long`, etc.
- other numbering systems: `native`, `traditional`, `finance`
- accounting currency patterns

# SEE ALSO

- [UTS \#35: Unicode LDML, Part 3: Numbers](http://www.unicode.org/reports/tr35/tr35-numbers.html)
- [Perl CLDR](http://perl-cldr.github.io/)

# AUTHOR

Nick Patch <patch@cpan.org>

This project is brought to you by [Perl CLDR](http://perl-cldr.github.io/) and
[Shutterstock](http://www.shutterstock.com/). Additional open source projects
from Shutterstock can be found at
[code.shutterstock.com](http://code.shutterstock.com/).

# COPYRIGHT AND LICENSE

© 2013 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
