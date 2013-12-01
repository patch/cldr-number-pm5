package CLDR::Number::Format::Percent;

use utf8;
use Moo;
use Carp;
use List::Util qw( any );

our $VERSION = '0.00';

with qw( CLDR::Number::Role::Format );

my @types = qw( percent permil );;
has type => (
    is      => 'rw',
    coerce  => sub {
        my ($type) = @_;
        return $type if any { $type eq $_ } @types;
        carp "type '$type' is invalid; using '$types[0]'";
        return $types[0];
    },
    default => $types[0],
);

sub BUILD {
    my ($self) = @_;

    $self->pattern($self->_get_data(patterns => 'percent'));
}

after _trigger_locale => sub {
    my ($self) = @_;

    $self->pattern($self->_get_data(patterns => 'percent'));
};

sub format {
    my ($self, $num) = @_;
    my ($factor, $sign);

    if ($self->type eq 'percent') {
        $factor = 100;
        $sign   = $self->percent;
    }
    elsif ($self->type eq 'permil') {
        $factor = 1_000;
        $sign   = $self->permil;
    }

    my $format = $self->_format_number($num * $factor, $self->pattern);
    $format =~ s{%}{$sign};

    return $format;
};

1;

=encoding UTF-8

=head1 NAME

CLDR::Number::Format::Percent - Percent formatter using the Unicode CLDR

=head1 SYNOPSIS

    # either
    use CLDR::Number::Format::Percent;
    my $perf = CLDR::Number::Format::Percent->new(locale => 'es');

    # or
    use CLDR::Number;
    my $cldr = CLDR::Number->new(locale => 'es');
    my $perf = $cldr->percent_formatter;

    $perf->format(0.50)  # 50%

=head1 ATTRIBUTES

=over

=item is_permil

=back

=head1 METHODS

=over

=item format

=item at_least

=item range

=back

=head1 AUTHOR

Nick Patch <patch@cpan.org>

=head1 COPYRIGHT AND LICENSE

© 2013 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
