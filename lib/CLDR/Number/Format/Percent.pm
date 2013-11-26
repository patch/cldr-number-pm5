package CLDR::Number::Format::Percent;

use utf8;
use Moo;
use Carp;

our $VERSION = '0.00';

with qw( CLDR::Number::Role::Format );

sub BUILD {
    my ($self) = @_;

    $self->pattern($self->_number_data->{$self->locale}{patterns}{percent});
}

after _trigger_locale => sub {
    my ($self) = @_;

    $self->pattern($self->_number_data->{$self->locale}{patterns}{percent});
};

sub format {
    my ($self, $num) = @_;
    my $format = $self->_format_number($num * 100, $self->pattern);
    $format =~ s{%}{$self->percent}e;
    return $format;
};

sub format_permil {
    my ($self, $num) = @_;
    my $format = $self->_format_number($num * 1000, $self->pattern);
    $format =~ s{%}{$self->permil}e;
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

    $perf->format(1337)  # 1.337%

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
