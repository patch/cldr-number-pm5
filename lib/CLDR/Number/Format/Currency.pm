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
        croak "currency_code '$_[0]' is invalid" if $_[0] !~ m{ [A-Z]{3} }x;
        carp  "currency_code '$_[0]' is unknown" if !exists _currency_data()->{root}{$_[0]};
    },
    coerce  => sub { defined $_[0] ? uc $_[0] : $_[0] },
    trigger => 1,
);

has currency_sign => (
    is  => 'rw',
    isa => sub {
        croak "currency_sign is not defined" if !defined $_[0];
    },
);

sub _currency_data {
    return $CLDR::Number::Data::Currency::DATA;
};

sub BUILD {
    my ($self) = @_;

    $self->pattern($self->_number_data->{$self->locale}{patterns}{currency});
}

after _trigger_locale => sub {
    my ($self) = @_;
    my $number_data = $self->_number_data->{$self->locale};

    $self->pattern($number_data->{patterns}{currency});

    if ($self->currency_code) {
        $self->currency_sign($self->_currency_data->{$self->locale}{$self->currency_code} || $self->currency_code);
    }

    if (my $decimal = $number_data->{symbols}{currencyDecimal}) {
        $self->decimal($decimal);
    }
};

sub _trigger_currency_code {
    my ($self) = @_;

    if ($self->locale) {
        $self->currency_sign($self->_currency_data->{$self->locale}{$self->currency_code} || $self->currency_code);
    }
}

sub format {
    my ($self, $num) = @_;
    my $format = $self->_format_number($num);
    $format =~ s{¤}{$self->currency_sign}e;
    return $format;
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
