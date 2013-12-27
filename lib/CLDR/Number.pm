package CLDR::Number;

use utf8;
use Moo;

our $VERSION = '0.01';

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

This document describes CLDR::Number v0.01, built with the Unicode CLDR v24.
This is an early release without full documentation. See L<CLDR::Number::TODO>.

=head1 SYNOPSIS

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

=head1 DESCRIPTION

Software localization includes much more than just translations. Numbers,
prices, and even percents should all be localized based the user’s language,
script, and region. Fortunately, the Unicode Common Locale Data Repository
(CLDR) provides locale data and specifications for formatting numeric data to
use with many of the world’s locales.

This class provides common attributes shared among the supported formatter
classes as well as methods to instantiate decimal, percent, and currency
formatter objects. The value for any attribute (such as C<locale>) will be
passed to the formatter objects on instantiation but can be overwritten by
manually passing another value for the attribute or calling a setter method on
the formatter object.

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

Common attributes among all formatter objects. All string attributes are
expected to be character strings, not encoded byte strings.

=over

=item locale

Default: value of C<default_locale> attribute if exists, otherwise C<root>

Valid: Unicode locale identifier

=item default_locale

Default: none

Valid: Unicode locale identifier

=item decimal_sign

Default: C<.> when C<root> locale

=item group_sign

Default: C<,> when C<root> locale

=item plus_sign

Default: C<+> when C<root> locale

=item minus_sign

Default: C<-> when C<root> locale

=item cldr_version

Value: C<24>

=back

=head1 SEE ALSO

=over

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

© 2013 Shutterstock, Inc.

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
