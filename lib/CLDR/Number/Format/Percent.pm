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

CLDR::Number::Format::Percent - Percent formatter using the Unicode CLDR

=head1 VERSION

This document describes CLDR::Number::Format::Percent v0.00_01, built with
Unicode CLDR v24. This is a development release without full documentation.

=head1 SYNOPSIS

    # either
    use CLDR::Number::Format::Percent;
    my $perf = CLDR::Number::Format::Percent->new(locale => 'es');

    # or
    use CLDR::Number;
    my $cldr = CLDR::Number->new(locale => 'es');
    my $perf = $cldr->percent_formatter;

    $perf->format(0.05)  # 5%

    $perf->permil(1);
    $perf->format(0.05)  # 50‰

=head1 ATTRIBUTES

=over

=item permil

=item percent_sign

=item permil_sign

=back

=head1 METHODS

=over

=item format

=item at_least

=item range

=back

=head1 AUTHOR

Nick Patch <patch@cpan.org>

This module is brought to you by L<Shutterstock|http://www.shutterstock.com/>.
Additional open source projects from Shutterstock can be found at
L<code.shutterstock.com|http://code.shutterstock.com/>.

=head1 COPYRIGHT AND LICENSE

© 2013 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
