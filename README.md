![Perl CLDR](https://www.gravatar.com/avatar/656f15a25eff4437f5a82e7c929f41dd?s=96)

# NAME

CLDR::Number - Number formatters using the Unicode CLDR

# SYNOPSIS

    use CLDR::Number;

    CLDR::Number->locales          # list
    CLDR::Number->is_locale('es')  # true
    CLDR::Number->is_locale('xx')  # false

    CLDR::Number->currencies          # list
    CLDR::Number->is_currency('EUR')  # true
    CLDR::Number->is_currency('XXX')  # false

# ATTRIBUTES

- locale

# METHODS

- decimal\_formatter
- percent\_formatter
- currency\_formatter

# NOTES

    otherNumberingSystems (native, traditional, finance)
    accountingCurrencyPattern

- only formatting is supported, not parsing
- only the Latin (`latn`) number system currently is supported
- only the `standard` type of formats are currently supported, not `short`, `long`, etc.

# SEE ALSO

- [UTS #35: Unicode LDML, Part 3: Numbers](http://www.unicode.org/reports/tr35/tr35-numbers.html)
- [Perl CLDR](http://perl-cldr.github.io/)

# AUTHOR

Nick Patch <patch@cpan.org>

# COPYRIGHT AND LICENSE

© 2013 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
