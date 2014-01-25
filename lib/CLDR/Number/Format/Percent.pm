package CLDR::Number::Format::Percent;

use utf8;
use Carp;
use CLDR::Number::Constant qw( $P );

use Moo;
use namespace::clean;

our $VERSION = '0.04';

with qw( CLDR::Number::Role::Format );

has permil => (
    is      => 'rw',
    coerce  => sub { $_[0] ? 1 : 0 },
    default => 0,
);

has percent_sign => (
    is => 'rw',
);

has permil_sign => (
    is => 'rw',
);

has _pattern_type => (
    is      => 'ro',
    default => 'percent',
);

after _trigger_locale => sub {
    my ($self) = @_;

    $self->_build_signs(qw{ percent_sign permil_sign });
};

sub BUILD {}

sub format {
    my ($self, $num) = @_;
    my ($factor, $sign);

    $num = $self->_validate_number(format => $num);
    return undef unless defined $num;

    if ($self->permil) {
        $factor = 1_000;
        $sign   = $self->permil_sign;
    }
    else {
        $factor = 100;
        $sign   = $self->percent_sign;
    }

    my $format = $self->_format_number($num * $factor);
    $format =~ s{$P}{$sign};

    return $format;
}

1;

__END__

=encoding UTF-8

=head1 NAME

CLDR::Number::Format::Percent - Localized percent formatter using the Unicode CLDR

=head1 VERSION

This document describes CLDR::Number::Format::Percent v0.04, built with the
Unicode CLDR v24. This is an early release without full documentation. See
L<CLDR::Number::TODO>.

=head1 SYNOPSIS

    # either
    use CLDR::Number::Format::Percent;
    my $perf = CLDR::Number::Format::Percent->new(locale => 'tr');

    # or
    use CLDR::Number;
    my $cldr = CLDR::Number->new(locale => 'tr');
    my $perf = $cldr->percent_formatter;

    say $perf->format(0.05);  # '%5' (Turkish percent)

    $perf->locale('fr');
    say $perf->format(0.05);  # '5 %' (French percent)

    $perf->permil(1);
    say $perf->format(0.05);  # '50 ‰' (French per mil)

=head1 DESCRIPTION

Localized percent formatter using the Unicode Common Locale Data Repository
(CLDR).

=head2 Methods

=over

=item format

Accepts a number and returns a formatted percent as a character string,
localized with the current C<locale>. If the C<permil> attribute is true,
returns I<per mil> instead of I<percent>.

=back

=head2 Attributes

All string attributes are expected to be character strings. See also the
L<common attributes in CLDR::Number|CLDR::Number/"Common Attributes">.

=over

=item permil

Default: false (C<0>)

=item percent_sign

Default: C<%> when C<root> locale

=item permil_sign

Default: C<‰> when C<root> locale

=item pattern

Default: C<#,##0%> when C<root> locale

=item minimum_integer_digits

Default: C<1> when C<root> locale

=item minimum_fraction_digits

Default: C<0> when C<root> locale

=item maximum_fraction_digits

Default: C<0> when C<root> locale

=item primary_grouping_size

Default: C<3> when C<root> locale

Not used when value is C<0>.

=item secondary_grouping_size

Default: C<0> when C<root> locale

Not used when value is C<0>.

=item rounding_increment

Default: C<0> when C<root> locale

C<0> and C<1> are treated the same.

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
