package CLDR::Number::Format::Decimal;

use v5.8.1;
use utf8;
use Carp;

use Moo;
use namespace::clean;

our $VERSION = '0.06_1';

with qw( CLDR::Number::Role::Format );

has infinity => (
    is => 'rw',
);

has nan => (
    is => 'rw',
);

has _pattern_type => (
    is      => 'ro',
    default => 'decimal',
);

after _trigger_locale => sub {
    my ($self) = @_;

    $self->_build_signs(qw{ infinity nan });
};

sub BUILD {}

sub format {
    my ($self, $num) = @_;

    $num = $self->_validate_number(format => $num);
    return undef unless defined $num;

    return $self->_format_number($num);
}

1;

__END__

=encoding UTF-8

=head1 NAME

CLDR::Number::Format::Decimal - Localized decimal formatter using the Unicode CLDR

=head1 VERSION

This document describes CLDR::Number::Format::Decimal v0.06_1, built with Unicode
CLDR v24.

=head1 SYNOPSIS

    # either
    use CLDR::Number::Format::Decimal;
    my $decf = CLDR::Number::Format::Decimal->new(locale => 'es');

    # or
    use CLDR::Number;
    my $cldr = CLDR::Number->new(locale => 'es');
    my $decf = $cldr->decimal_formatter;

    say $decf->format(1234.5);  # '1 234,5' (Spanish)

    $decf->locale('es-MX');
    say $decf->format(1234.5);  # '1,234.5' (Mexican Spanish)

    $decf->locale('ar');
    say $decf->format(1234.5);  # '١٬٢٣٤٫٥' (Arabic)

    $curf->locale('bn');
    say $curf->format(123456);  # '১,২৩,৪৫৬' (Bengali)

=head1 DESCRIPTION

Localized decimal formatter using the Unicode Common Locale Data Repository
(CLDR).

=head2 Methods

All methods return character strings, not encoded byte strings.

=over

=item format

Accepts a number and returns a formatted decimal, localized for the current
locale.

=item at_least

Accepts a number and returns a formatted decimal for at least the supplied
number.

    say $decf->at_least(100);  # '100+'

=item range

Accepts two numbers and returns a formatted range of decimals.

    say $decf->range(1, 10);  # '1–10'

=back

=head2 Attributes

The common attributes B<locale>, B<default_locale>, B<numbering_system>,
B<decimal_sign>, B<group_sign>, B<plus_sign>, B<minus_sign>, and B<cldr_version>
are described under L<common attributes in
CLDR::Number|CLDR::Number/"Common Attributes">. All attributes described here
have defaults that change depending on the current B<locale>. All string
attributes are expected to be character strings, not byte strings.

=over

=item pattern

Examples: C<#,##0.###> for B<root>, B<en>, and most locales; C<#,##,##0.###> for
B<hi>, B<bn>, B<en-IN>, and other locales of the Indian subcontinent

=item minimum_integer_digits

Examples: C<1> for all locales

=item minimum_fraction_digits

Examples: C<0> for all locales

=item maximum_fraction_digits

Examples: C<3> for B<root> and almost all locales

=item primary_grouping_size

Examples: C<3> for B<root> and almost all locales

Not used when value is C<0>.

=item secondary_grouping_size

Examples: C<0> for B<root>, B<en>, and most locales; C<2> for B<hi>, B<bn>,
B<en-IN>, and other locales of the Indian subcontinent

Not used when value is C<0>.

=item rounding_increment

Examples: C<0> for all locales

C<0> and C<1> are treated the same.

=item infinity

Examples: C<∞> (infinity) for B<root>, B<en>, and almost all locales

=item nan

Examples: C<NaN> for B<root>, B<en>, and most locales; many other variations for
individual locales like C<не число> for B<ru> and C<非數值> for B<zh-Hant>

=back

=head1 SEE ALSO

L<CLDR::Number>

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
