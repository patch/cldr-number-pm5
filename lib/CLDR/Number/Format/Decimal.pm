package CLDR::Number::Format::Decimal;

use utf8;
use Moo;
use Carp;
use Scalar::Util qw( looks_like_number );

our $VERSION = '0.00';

with qw( CLDR::Number::Role::Format );

my $CLASS = __PACKAGE__;

sub BUILD {
    my ($self) = @_;

    $self->pattern($self->_number_data->{$self->locale}{patterns}{decimal});
}

after _trigger_locale => sub {
    my ($self) = @_;

    $self->pattern($self->_number_data->{$self->locale}{patterns}{decimal});
};

sub format {
    my ($self, $num) = @_;

    if (!defined $num) {
        carp 'Use of uninitialized value in $CLASS->format';
        return undef;
    }

    if (!looks_like_number $num) {
        carp 'Use of invalid number in $CLASS->format';
        return $num;
    }

    $num += 0;

    my $negative = $num < 0;
    my $pattern  = $self->pattern;

    $pattern = $self->_format_number($num, $pattern);

    return $pattern;
};

1;

=encoding UTF-8

=head1 NAME

CLDR::Number::Format::Decimal - Decimal formatter using the Unicode CLDR

=head1 SYNOPSIS

    # either
    use CLDR::Number::Format::Decimal;
    my $curf = CLDR::Number::Format::Decimal->new(locale => 'es');

    # or
    use CLDR::Number;
    my $cldr = CLDR::Number->new(locale => 'es');
    my $curf = $cldr->decimal_formatter,

    $curf->format(1337)   # 1.337
    $curf->format(-1337)  # -1.337

    $curf->locale('en');
    $curf->minimum_fraction_size(3);
    $curf->format(1337)  # 1,337.000

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
