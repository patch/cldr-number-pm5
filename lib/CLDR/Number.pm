package CLDR::Number;

use v5.8.1;
use utf8;
use strict;
use warnings;
use charnames qw( :full );
use Moo;
use Carp qw( carp croak );
use Scalar::Util qw( looks_like_number );
use List::MoreUtils qw( any );
use CLDR::Number::Data;

our $VERSION      = '0.00';
our $CLDR_VERSION = '24';

my $NUMBERS    = $CLDR::Number::Data::NUMBERS;
my $CURRENCIES = $CLDR::Number::Data::CURRENCIES;

my @pattern_attributes = qw{
    atLeast
    currency
    decimal
    percent
    range
    scientific
};

my @symbol_attributes = qw{
    currencyDecimal
    decimal
    exponential
    group
    infinity
    list
    minusSign
    nan
    perMille
    percentSign
    plusSign
    superscriptingExponent
};

for my $attribute (@pattern_attributes) {
    has $attribute . '_pattern' => (is => 'rw');
}

for my $attribute (@symbol_attributes) {
    has $attribute . '_symbol' => (is => 'rw');
}

has cldr_version => (
    is      => 'ro',
    default => $CLDR_VERSION,
);

has locale => (
    is      => 'rw',
    isa     => sub {
        croak "Locale is not defined"  unless defined $_[0];
        croak "Invalid locale '$_[0]'" unless exists $NUMBERS->{$_[0]};
    },
    trigger => 1,
    default => 'root',
);

has currency_code => (
    is => 'rw',
);

sub BUILD {
    my ($self) = @_;

    for my $attribute (@pattern_attributes) {
        my $method = $attribute . '_pattern';
        next if defined $self->$method;
        $self->$method(
            $NUMBERS->{$self->locale}{patterns}{$attribute}
            || $NUMBERS->{root}{patterns}{$attribute}
        );
    }

    for my $attribute (@symbol_attributes) {
        my $method = $attribute . '_symbol';
        next if defined $self->$method;
        $self->$method(
            $NUMBERS->{$self->locale}{symbols}{$attribute}
            || $NUMBERS->{root}{symbols}{$attribute}
        );
    }
}

sub _trigger_locale {
    my ($self) = @_;

    for my $attribute (@pattern_attributes) {
        my $method = $attribute . '_pattern';
        $self->$method(
            $NUMBERS->{$self->locale}{patterns}{$attribute}
            || $NUMBERS->{root}{patterns}{$attribute}
        );
    }

    for my $attribute (@symbol_attributes) {
        my $method = $attribute . '_symbol';
        $self->$method(
            $NUMBERS->{$self->locale}{symbols}{$attribute}
            || $NUMBERS->{root}{symbols}{$attribute}
        );
    }
}

sub decimal {
    my ($self, $num) = @_;

    if (!defined $num) {
        carp 'Use of uninitialized value in CLDR::Number->decimal';
        return undef;
    }

    if (!looks_like_number $num) {
        carp 'Use of invalid number in CLDR::Number->decimal';
        return $num;
    }

    $num += 0;

    my $negative = $num < 0;

    my $pattern = $self->decimal_pattern;
    my $decimal = $self->decimal_symbol;
    my $group   = $self->group_symbol;

    return $num;
};

sub short_decimal {
    my ($self, $num) = @_;
    #my $res = $self->short_decimal_pattern;

    return $num;
};

sub long_decimal {
    my ($self, $num) = @_;
    #my $res = $self->long_decimal_pattern;

    return $num;
};

sub percent {
    my ($self, $num) = @_;
    my $res = $self->percent_pattern;

    return $num * 100;
};

sub per_mille {
    my ($self, $num) = @_;
    my $res = $self->percent_pattern;

    return $num * 1000;
};

sub scientific {
    my ($self, $num) = @_;
    my $res = $self->scientific_pattern;

    return $num;
};

sub currency {
    my ($self, $num) = @_;
    my $currency_pattern = $self->currency_pattern;
    my $currency_symbol  = $CURRENCIES->{$self->locale}{$self->currency_code};

    my $int = int $num;
    my $reverse = reverse $int;
    $reverse =~ s{ (?<= \G .{3} ) (?= . ) }{ $self->group_symbol }eg;
    my $int_group = reverse $reverse;

    # TODO: proof-of-concept only - all sorts of rounding errors
    if (my $frac = int(($num - $int) * 100)) {
        $num = $int_group . $self->decimal_symbol . $frac;
    }
    else {
        $num = $int_group;
    }

    $currency_pattern =~ s/;.*//;
    $currency_pattern =~ s/[#0,.]+/$num/;
    $currency_pattern =~ s/¤/$currency_symbol/;

    return $currency_pattern;
};

sub at_least {
    my $self = shift;
    my $num  = $self->decimal(shift);
    my $res  = $self->atLeast_pattern;

    $res =~ s/[{]0[}]/$num/;

    return $res;
};

sub range {
    my $self = shift;
    my $num0 = $self->decimal(shift);
    my $num1 = $self->decimal(shift);
    my $res  = $self->range_pattern;

    $res =~ s/[{]0[}]/$num0/;
    $res =~ s/[{]1[}]/$num1/;

    return $res;
};

1;

=encoding UTF-8

=head1 NAME

CLDR::Number - Unicode CLDR formatter for numbers

=head1 SYNOPSIS

    use CLDR::Number;

    CLDR::Number->locales          # list
    CLDR::Number->is_locale('es')  # true
    CLDR::Number->is_locale('xx')  # false

    CLDR::Number->currencies          # list
    CLDR::Number->is_currency('EUR')  # true
    CLDR::Number->is_currency('XXX')  # false

    $numf = CLDR::Number->new(
        locale        => 'es',
        currency_code => 'USD',
    );

    $numf->decimal(1337)   # 1.337
    $numf->decimal(-1337)  # -1.337
    $numf->percent(1337)   # 1.337%
    $numf->currency(1337)  # 1.337,00 $

    $numf->precision(3);
    $numf->currency_code('EUR');
    $numf->decimal(1337)   # 1.337,000
    $numf->percent(1337)   # 1.337,000%
    $numf->currency(1337)  # 1.337,00 €

    $numf->locale('en');
    $numf->short_decimal(2337)     # 2K
    $numf->short_decimal(1337123)  # 1M
    $numf->long_decimal(2337)      # 2 thousand
    $numf->long_decimal(1337123)   # 1 million

=head1 METHODS

=over

=item decimal

=item short_decimal

=item long_decimal

=item scientific

=item percent

=item per_mille

=item currency

=item at_least

=item range

=back

=head1 NOTES

    otherNumberingSystems (native, traditional, finance)
    accountingCurrencyPattern

=over

=item * only formatting is supported, not parsing

=item * only the Latin (C<latn>) number system currently is supported

=item * only the C<standard> type of formats are currently supported, not C<short>, C<long>, etc.

=back

=head1 SEE ALSO

=over

=item * L<UTS #35: Unicode LDML, Part 3: Numbers|http://www.unicode.org/reports/tr35/tr35-numbers.html>

=item * L<Perl CLDR|http://perl-cldr.github.io/>

=back

=head1 AUTHOR

Nick Patch <patch@cpan.org>

=head1 COPYRIGHT AND LICENSE

© 2013 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
