package CLDR::Number::Format::Currency;

use utf8;
use Moo;
use Carp;
use CLDR::Number::Data::Currency;

our $VERSION = '0.00';

with qw( CLDR::Number::Role::Format );

has currency_code => (
    is  => 'rw',
    isa => sub {
        croak "currency_code is not defined"     if !defined $_[0];
        croak "currency_code '$_[0]' is invalid" if !exists _currency_data()->{$_[0]};
    },
);

sub _currency_data {
    return $CLDR::Number::Data::Currency::DATA;
};

after _trigger_locale => sub {
    my ($self) = @_;
    my $number_data = $self->_number_data->{$self->locale};

    $self->pattern($number_data->{pattern}{currency});

    if (my $decimal = $number_data->{symbols}{currencyDecimal}) {
        $self->decimal($decimal);
    }
};

sub format {
    my ($self, $num) = @_;
    my $pattern = $self->pattern;
    my $symbol  = $self->_currency_data->{$self->locale}{$self->currency_code};

    $pattern = $self->_format_number($num, $pattern);
    $pattern =~ s{¤}{$symbol};

    return $pattern;
};

1;

=encoding UTF-8

=head1 NAME

CLDR::Number::Format::Currency - Currency formatter using the Unicode CLDR

=head1 SYNOPSIS

    # either
    use CLDR::Number::Format::Currency;
    my $curf = CLDR::Number::Format::Currency->new(
        locale   => 'es',
        currency => 'USD',
    );

    # or
    use CLDR::Number;
    my $cldr = CLDR::Number->new(locale => 'es');
    my $curf = $cldr->currency_formatter(currency => 'USD'),

    $curf->format(1337)  # 1.337,00 $

    $curf->currency('EUR');
    $curf->format(1337)  # 1.337,00 €

    $curf->locale('en');
    $curf->format(1337)  # €1,337.00

=head ATTRIBUTES

=over

=item currency

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
