# NAME

CLDR::Number - Unicode CLDR formatter for numbers

# SYNOPSIS

    use CLDR::Number;

    CLDR::Number->locales          # list
    CLDR::Number->is_locale('es')  # true
    CLDR::Number->is_locale('xx')  # false

    CLDR::Number->currencies          # list
    CLDR::Number->is_currency('EUR')  # true
    CLDR::Number->is_currency('XXX')  # false

    $numf = CLDR::Number->new(
        locale        => 'es',
        currency_code => 'USD',
    );

    $numf->decimal(1337)   # 1.337
    $numf->decimal(-1337)  # -1.337
    $numf->percent(1337)   # 1.337%
    $numf->currency(1337)  # 1.337,00 $

    $numf->precision(3);
    $numf->currency_code('EUR');
    $numf->decimal(1337)   # 1.337,000
    $numf->percent(1337)   # 1.337,000%
    $numf->currency(1337)  # 1.337,00 €

    $numf->locale('en');
    $numf->short_decimal(2337)     # 2K
    $numf->short_decimal(1337123)  # 1M
    $numf->long_decimal(2337)      # 2 thousand
    $numf->long_decimal(1337123)   # 1 million

# METHODS

- decimal
- short\_decimal
- long\_decimal
- scientific
- percent
- per\_mille
- currency
- at\_least
- range

# NOTES

    otherNumberingSystems (native, traditional, finance)
    accountingCurrencyPattern

- only formatting is supported, not parsing
- only the Latin (`latn`) number system currently is supported
- only the `standard` type of formats are currently supported, not `short`, `long`, etc.

# SEE ALSO

- [UTS \#35: Unicode LDML, Part 3: Numbers](http://www.unicode.org/reports/tr35/tr35-numbers.html)
- [Perl CLDR](http://perl-cldr.github.io/)

# AUTHOR

Nick Patch <patch@cpan.org>

# COPYRIGHT AND LICENSE

© 2013 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
