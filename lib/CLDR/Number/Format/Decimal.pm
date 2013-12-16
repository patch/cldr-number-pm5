package CLDR::Number::Format::Decimal;

use utf8;
use Moo;

our $VERSION = '0.00_02';

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

    return $self->_format_number($num);
}

1;

__END__

=encoding UTF-8

=head1 NAME

CLDR::Number::Format::Decimal - Localized decimal formatter using the Unicode CLDR

=head1 VERSION

This document describes CLDR::Number v0.00_02, built with Unicode CLDR v24. This
is a development release without full documentation and functionality may
change. See L<CLDR::Number::TODO>.

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

=head1 METHODS

=over

=item format

Accepts a number and returns a formatted decimal, localized with the current
locale.

=item at_least

Accepts a number and returns a formatted decimal for at least the supplied
number.

    say $decf->at_least(100);  # '100+'

=item range

Accepts two numbers and returns a formatted range of decimals.

    say $decf->range(1, 10);  # '1–10'

=back

=head1 ATTRIBUTES

See also the L<common attributes in CLDR::Number|CLDR::Number/"COMMON ATTRIBUTES">.

=over

=item infinity

Default: C<∞> when C<root> locale

=item nan

Default: C<NaN> when C<root> locale

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

=item secondary_grouping_size

Default: not set when C<root> locale

=item rounding_increment

Default: C<0> when C<root> locale

=back

=head1 AUTHOR

Nick Patch <patch@cpan.org>

This project is brought to you by L<Perl CLDR|http://perl-cldr.github.io/> and
L<Shutterstock|http://www.shutterstock.com/>. Additional open source projects
from Shutterstock can be found at
L<code.shutterstock.com|http://code.shutterstock.com/>.

=head1 COPYRIGHT AND LICENSE

© 2013 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
