![Perl CLDR](https://www.gravatar.com/avatar/656f15a25eff4437f5a82e7c929f41dd?s=96)

# NAME

CLDR::Number - Number formatters using the Unicode CLDR

# SYNOPSIS

    use CLDR::Number;
    my $cldr = CLDR::Number->new(locale => 'es');

    # decimals
    my $decf = $cldr->decimal_formatter,
    $decf->format(1337)   # 1.337
    $decf->format(-1337)  # -1.337

    $decf->locale('en');
    $decf->minimum_fraction_size(3);
    $decf->format(1337)  # 1,337.000

    # percents
    my $perf = $cldr->percent_formatter;
    $perf->format(0.05)  # 5%

    # currencies
    my $curf = $cldr->currency_formatter(currency => 'USD'),
    $curf->format(1337)  # 1.337,00 $

    $curf->currency('EUR');
    $curf->format(1337)  # 1.337,00 €

    $curf->locale('en');
    $curf->format(1337)  # €1,337.00

# ATTRIBUTES

- locale
- length
- decimal\_sign
- group\_sign
- plus\_sign
- minus\_sign

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

- [UTS \#35: Unicode LDML, Part 3: Numbers](http://www.unicode.org/reports/tr35/tr35-numbers.html)
- [Perl CLDR](http://perl-cldr.github.io/)

# AUTHOR

Nick Patch <patch@cpan.org>

# COPYRIGHT AND LICENSE

© 2013 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
