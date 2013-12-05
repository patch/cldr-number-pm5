package CLDR::Number::Format::Percent;

use utf8;
use Moo;
use Carp;

our $VERSION = '0.00_01';

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

after _trigger_locale => sub {
    my ($self) = @_;

    $self->_build_attributes;
};

sub BUILD {
    my ($self) = @_;

    $self->_build_attributes;
}

sub _build_attributes {
    my ($self) = @_;

    $self->pattern(      $self->_get_data( patterns => 'percent' ) );
    $self->percent_sign( $self->_get_data( symbols  => 'percent' ) );
    $self->permil_sign(  $self->_get_data( symbols  => 'permil'  ) );
}

sub format {
    my ($self, $num) = @_;
    my ($factor, $sign);

    if ($self->permil) {
        $factor = 1_000;
        $sign   = $self->permil_sign;
    }
    else {
        $factor = 100;
        $sign   = $self->percent_sign;
    }

    my $format = $self->_format_number($num * $factor, $self->pattern);
    $format =~ s{%}{$sign};

    return $format;
}

1;

__END__

=encoding UTF-8

=head1 NAME

CLDR::Number::Format::Percent - Localized percent formatter using Unicode CLDR

=head1 VERSION

This document describes CLDR::Number::Format::Percent v0.00_01, built with
Unicode CLDR v24. This is a development release and functionality may change.

=head1 SYNOPSIS

    # either
    use CLDR::Number::Format::Percent;
    my $perf = CLDR::Number::Format::Percent->new(locale => 'eu');

    # or
    use CLDR::Number;
    my $cldr = CLDR::Number->new(locale => 'eu');
    my $perf = $cldr->percent_formatter;

    say $perf->format(0.05);  # '% 5' (Basque)

    $perf->locale('es');
    say $perf->format(0.05);  # '5%' (Spanish)

    $perf->permil(1);
    say $perf->format(0.05);  # '50‰' (Spanish / per mil)

=head1 METHODS

=over

=item format

Accepts a number and returns a formatted percent, localized with the current
locale. If the C<permil> attribute is true, returns per mil instead of percent.

=item at_least

Accepts a number and returns a formatted percent for at least the supplied
number.

    say $perf->at_least(0.05);  # '5%+'

=item range

Accepts two numbers and returns a formatted range of percents.

    say $perf->range(0.05, 0.1);  # '5%–10%'

=back

=head1 ATTRIBUTES

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
