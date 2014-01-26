package CLDR::Number::Format::Decimal;

use utf8;
use Carp;

use Moo;
use namespace::clean;

our $VERSION = '0.05';

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

This document describes CLDR::Number::Format::Decimal v0.05, built with Unicode
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

=head1 DESCRIPTION

Localized decimal formatter using the Unicode Common Locale Data Repository
(CLDR).

=head2 Methods

All methods return character strings, not encoded byte strings.

=over

=item format

Accepts a number and returns a formatted decimal, localized with the current
C<locale>.

=item at_least

Accepts a number and returns a formatted decimal for at least the supplied
number.

    say $decf->at_least(100);  # '100+'

=item range

Accepts two numbers and returns a formatted range of decimals.

    say $decf->range(1, 10);  # '1–10'

=back

=head2 Attributes

All string attributes are expected to be character strings. See also the
L<common attributes in CLDR::Number|CLDR::Number/"Common Attributes">.

=over

=item pattern

Default: C<#,##0.###> when C<root> locale

=item minimum_integer_digits

Default: C<1> when C<root> locale

=item minimum_fraction_digits

Default: C<0> when C<root> locale

=item maximum_fraction_digits

Default: C<3> when C<root> locale

=item primary_grouping_size

Default: C<3> when C<root> locale

Not used when value is C<0>.

=item secondary_grouping_size

Default: C<0> when C<root> locale

Not used when value is C<0>.

=item rounding_increment

Default: C<0> when C<root> locale

C<0> and C<1> are treated the same.

=item infinity

Default: C<∞> when C<root> locale

=item nan

Default: C<NaN> when C<root> locale

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
