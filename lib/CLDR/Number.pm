package CLDR::Number;

use v5.8.1;
use utf8;

use Moo;
use namespace::clean;

our $VERSION = '0.08';

with qw( CLDR::Number::Role::Base );

sub BUILD {}

sub decimal_formatter {
    my ($self, %args) = @_;

    require CLDR::Number::Format::Decimal;
    CLDR::Number::Format::Decimal->new($self->_make_args(%args));
}

sub percent_formatter {
    my ($self, %args) = @_;

    require CLDR::Number::Format::Percent;
    CLDR::Number::Format::Percent->new($self->_make_args(%args));
}

sub currency_formatter {
    my ($self, %args) = @_;

    require CLDR::Number::Format::Currency;
    CLDR::Number::Format::Currency->new($self->_make_args(%args));
}

sub _make_args {
    my ($self, %new_args) = @_;

    my %args = (locale => $self->locale, %new_args);

    return %args;
}

1;

__END__

=encoding UTF-8

=head1 NAME

CLDR::Number - Localized number formatters using the Unicode CLDR

=head1 VERSION

This document describes CLDR::Number v0.08, built with Unicode CLDR v24.

=head1 SYNOPSIS

    use CLDR::Number;

    my $cldr = CLDR::Number->new(locale => 'es');

    # decimals
    my $decf = $cldr->decimal_formatter;

    say $decf->format(1234.5);  # '1 234,5' (Spanish)

    $decf->locale('es-MX');
    say $decf->format(1234.5);  # '1,234.5' (Mexican Spanish)

    $decf->locale('ar');
    say $decf->format(1234.5);  # '١٬٢٣٤٫٥' (Arabic)

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

=head1 DESCRIPTION

Software localization includes much more than just translations. Numbers,
prices, and even percents should all be localized based on the user’s language,
script, and region. Fortunately, the Unicode Common Locale Data Repository
(CLDR) provides locale data and specifications for formatting numeric data to
use with many of the world’s locales.

This class provides common attributes shared among the supported formatter
classes as well as methods to instantiate decimal, percent, and currency
formatter objects. The value for any attribute (such as B<locale> or
B<decimal_sign>) will be passed to the formatter objects on instantiation but
can be overwritten by manually passing another value for the attribute or
calling a setter method on the formatter object.

=head2 Methods

=over

=item decimal_formatter

Returns a decimal formatter, which is a L<CLDR::Number::Format::Decimal> object
instantiated with all of the attributes from your CLDR::Number object as well as
any attributes passed to this method.

=item percent_formatter

Returns a percent formatter, which is a L<CLDR::Number::Format::Percent> object
instantiated with all of the attributes from your CLDR::Number object as well as
any attributes passed to this method.

=item currency_formatter

Returns a currency formatter, which is a L<CLDR::Number::Format::Currency>
object instantiated with all of the attributes from your CLDR::Number object as
well as any attributes passed to this method.

=back

=head2 Common Attributes

These are common attributes among this class and all formatter classes. All
attributes other than B<locale>, B<default_locale>, and B<cldr_version> have
defaults that change depending on the current B<locale>. All string attributes
are expected to be character strings, not byte strings.

=over

=item locale

Default: value of B<default_locale> attribute if it exists, otherwise C<root>

Valid: Unicode locale identifiers

Examples: C<es> (Spanish), C<es-ES> (European Spanish), C<es-419> (Latin
American Spanish), C<zh-Hant> (Traditional Chinese), C<zh-Hans> (Simplified
Chinese), C<chr> (Cherokee)

The locale is case-insensitive and can use either C<-> (hyphen-minus) or C<_>
(low line) as a separator.

=item default_locale

Default: none

Valid: Unicode locale identifiers

Use this if you want a locale other than the generic C<root> if the B<locale>
attribute is not set or not valid.

=item numbering_system

Valid: currently only decimal numbering systems are supported

Examples: C<latn> (Western Digits), C<arab> (Arabic-Indic Digits), C<hanidec>
(Chinese Decimal Numerals), C<fullwide> (Full Width Digits)

In the future, algorithmic numbering systems like C<hant> (Traditional Chinese
Numerals), C<hebr> (Hebrew Numerals), and C<roman> (Roman Numerals) will be
supported.

The numbering system may alternately be provided as a Unicode locale extension
subtag. For example, locale C<ja-u-nu-fullwide> for the Japanese language
(C<ja>) with the numbering system (C<nu>) set to Full Width Digits
(C<fullwide>).

=item decimal_sign

Examples: C<.> (full stop) for B<root>, B<en>; C<,> (comma) for B<de>, B<fr>

=item group_sign

Examples: C<,> (comma) for B<root>, B<en>; C<.> (full stop) for B<de>; C< > (no-break space) for B<fr>

=item plus_sign

Examples: C<+> (plus sign) for B<root>, B<en>, and most locales

=item minus_sign

Examples: C<-> (hyphen-minus) for B<root>, B<en>, and most locales

=item cldr_version

Value: C<24>

This is a read-only attribute that will always reflect the currently supported
Unicode CLDR version.

=back

=head1 NOTES

The Unicode private-use characters U+F8F0 through U+F8F4 are used internally and
are therefore not supported in custom patterns and signs.

=head1 SEE ALSO

=over

=item * L<CLDR::Number::FAQ>

=item * L<CLDR::Number::TODO>

=item * L<UTS #35: Unicode LDML, Part 3: Numbers|http://www.unicode.org/reports/tr35/tr35-numbers.html>

=item * L<CLDR Translation Guidelines: Number Patterns|http://cldr.unicode.org/translation/number-patterns>

=item * L<CLDR Translation Guidelines: Number Symbols|http://cldr.unicode.org/translation/number-symbols>

=back

=head1 AUTHOR

Nick Patch <patch@cpan.org>

This project is brought to you by L<Perl CLDR|http://perl-cldr.github.io/> and
L<Shutterstock|http://www.shutterstock.com/>. Additional open source projects
from Shutterstock can be found at
L<code.shutterstock.com|http://code.shutterstock.com/>.

=head1 COPYRIGHT AND LICENSE

© 2013–2014 Shutterstock, Inc.

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
