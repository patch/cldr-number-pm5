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
    is  => 'rw',
    isa => sub {
        croak "locale is not defined"     if !defined $_[0];
        croak "locale '$_[0]' is invalid" if !exists $NUMBERS->{$_[0]};
    },
    trigger => 1,
    default => 'root',
);

has minimum_integer_digits => {
    is  => 'rw',
    isa => sub {
        croak "minimum_integer_digits '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    default => 1,
};

has maximum_integer_digits => {
    is  => 'rw',
    isa => sub {
        croak "maximum_integer_digits '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
};

has minimum_fraction_digits => {
    is  => 'rw',
    isa => sub {
        croak "minimum_fraction_digits '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    default => 0,
};

has maximum_fraction_digits => {
    is  => 'rw',
    isa => sub {
        croak "maximum_fraction_digits '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    default => 3,
};

has primary_grouping_size => {
    is  => 'rw',
    isa => sub {
        croak "primary_grouping_size '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    default => 3,
};

has secondary_grouping_size => {
    is  => 'rw',
    isa => sub {
        croak "secondary_grouping_size '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
};

has currency_code => (
    is  => 'rw',
    isa => sub {
        croak "currency_code is not defined"     if !defined $_[0];
        croak "currency_code '$_[0]' is invalid" if !exists $CURRENCIES->{$_[0]};
    },
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

    $pattern = $self->_format_number($num, $pattern);

    return $pattern;
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
    my $pattern = $self->percent_pattern;

    $num *= 100;
    $pattern = $self->_format_number($num, $pattern);

    return $pattern;
};

sub per_mille {
    my ($self, $num) = @_;
    my $pattern = $self->per_mille_pattern;

    $num *= 1000;
    $pattern = $self->_format_number($num, $pattern);

    return $pattern;
};

sub scientific {
    my ($self, $num) = @_;
    my $res = $self->scientific_pattern;

    return $num;
};

sub currency {
    my ($self, $num) = @_;
    my $pattern         = $self->currency_pattern;
    my $currency_symbol = $CURRENCIES->{$self->locale}{$self->currency_code};

    $pattern = $self->_format_number($num, $pattern);
    $pattern =~ s{¤}{$currency_symbol};

    return $pattern;
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

sub _format_number {
    my ($self, $num, $pattern) = @_;
    my $integer = int $num;
    my $formatted_integer;

    if (my $primary_grouping_size = $self->primary_grouping_size) {
        my $reverse = reverse $integer;
        $reverse =~ s{ (?<= \G .{$primary_grouping_size} ) (?= . ) }{ $self->group_symbol }eg;
        my $formatted_integer = reverse $reverse;
    }

    # TODO: proof-of-concept only - all sorts of rounding errors
    if (my $frac = int(($num - $integer) * 100)) {
        $num = $formatted_integer . $self->decimal_symbol . $frac;
    }
    else {
        $num = $formatted_integer;
    }

    $pattern =~ s{ ; .* }{}x;
    $pattern =~ s{ [#0,.]+ }{$num}x;

    return $pattern;
}

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
