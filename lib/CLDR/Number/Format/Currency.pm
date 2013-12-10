package CLDR::Number::Format::Currency;

use utf8;
use Moo;
use Carp;
use CLDR::Number::Data::Currency;

our $VERSION = '0.00_01';

with qw( CLDR::Number::Role::Format );

has currency_code => (
    is  => 'rw',
    isa => sub {
        croak 'uninitialized value'     if !defined $_[0];
        croak qq{invalid value "$_[0]"} if $_[0] !~ m{ ^ [A-Z]{3} $ }x;
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

# TODO: accounting NYI
has accounting => (
    is      => 'rw',
    coerce  => sub { $_[0] ? 1 : 0 },
    default => 0,
);

has cash => (
    is      => 'rw',
    coerce  => sub { $_[0] ? 1 : 0 },
    trigger => 1,
    default => 0,
);

has _pattern_type => (
    is      => 'ro',
    default => 'currency',
);

after _trigger_locale => sub {
    my ($self) = @_;

    if ($self->currency_code) {
        $self->_build_currency_sign;
    }

    if (my $decimal = $self->_get_data(symbols => 'currency_decimal')) {
        $self->decimal_sign($decimal);
    }
};

sub BUILD {}

sub _trigger_currency_code {
    my ($self, $currency_code) = @_;

    $self->_build_currency_sign;
    $self->_trigger_cash;
}

sub _build_currency_sign {
    my ($self) = @_;
    my $data = $CLDR::Number::Data::Currency::LOCALES;
    my $currency_sign;

    return if $self->_has_init_arg('currency_sign');

    for my $locale (@{$self->_locale_inheritance}) {
        next if !exists $data->{$locale} || !exists $data->{$locale}{$self->currency_code};
        $currency_sign = $data->{$locale}{$self->currency_code};
        last;
    }

    $self->currency_sign($currency_sign || $self->currency_code);
}

sub _trigger_cash {
    my ($self) = @_;
    my $currencies = $CLDR::Number::Data::Currency::CURRENCIES;
    my $currency_data
        = $self->currency_code && exists $currencies->{$self->currency_code}
        ? $currencies->{$self->currency_code}
        : $currencies->{DEFAULT};

    if ($self->cash && exists $currency_data->{cash_digits}) {
        $self->minimum_fraction_digits($currency_data->{cash_digits});
        $self->maximum_fraction_digits($currency_data->{cash_digits});
    }
    else {
        $self->minimum_fraction_digits($currency_data->{digits});
        $self->maximum_fraction_digits($currency_data->{digits});
    }

    if ($self->cash && exists $currency_data->{cash_rounding}) {
        $self->rounding_increment($currency_data->{cash_rounding});
    }
    else {
        $self->rounding_increment($currency_data->{rounding});
    }
}

sub format {
    my ($self, $num) = @_;

    croak 'Missing required attribute: currency_code'
        unless $self->currency_code;

    my $format = $self->_format_number($num);
    $format =~ s{¤}{$self->currency_sign}e;

    return $format;
}

1;

__END__

=encoding UTF-8

=head1 NAME

CLDR::Number::Format::Currency - Localized currency formatter using Unicode CLDR

=head1 VERSION

This document describes CLDR::Number::Format::Currency v0.00_01, built with
Unicode CLDR v24. This is a development release and functionality may change.

=head1 SYNOPSIS

    # either
    use CLDR::Number::Format::Currency;
    my $curf = CLDR::Number::Format::Currency->new(
        locale   => 'en',
        currency => 'USD',
    );

    # or
    use CLDR::Number;
    my $cldr = CLDR::Number->new(locale => 'en');
    my $curf = $cldr->currency_formatter(currency_code => 'USD');

    say $curf->format(9.99);  # '$9.99' (English / USD)

    $curf->locale('en-CA');
    say $curf->format(9.99);  # 'US$9.99' (Canadian English / USD)

    $curf->locale('fr-CA');
    say $curf->format(9.99);  # '9,99 $US' (Canadian French / USD)

=head1 METHODS

=over

=item format

Accepts a number and returns a formatted currency value using the currency from
the C<currency_code> attribute and localized with the current locale.

=item at_least

Accepts a number and returns a formatted currency for at least the supplied
number.

    say $perf->at_least(0);  # 'au moins 10,00 $US'

=item range

Accepts two numbers and returns a formatted range of currencies.

    say $perf->range(1, 10);  # 'de 1,00 $US à 10,00 $US'

=back

=head1 ATTRIBUTES

=over

=item currency_code

Default: not set

=item currency_sign

Default: not set

=item accounting

Default: false (C<0>)

This attribute is a no-op because the functionality is not yet implemented.

=item cash

Default: false (C<0>)

=item pattern

Default: C<¤ #,##0.00> when C<root> locale

=item minimum_integer_digits

Default: C<1> when C<root> locale

=item minimum_fraction_digits

Default: C<2> when C<root> locale

=item maximum_fraction_digits

Default: C<2> when C<root> locale

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
