package CLDR::Number;

use v5.8.1;
use utf8;
use strict;
use warnings;
use charnames qw( :full );
use Moo;
use Carp qw( carp croak );
use Scalar::Util qw( looks_like_number );
use List::Util qw( any );
use CLDR::Number::Data;

our $VERSION      = '0.00';
our $CLDR_VERSION = '24';

my $locales = $CLDR::Number::Data::NUMBERS;

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
        croak "Invalid locale '$_[0]'" unless exists $locales->{$_[0]};
    },
    trigger => 1,
    default => 'en',
);

has currency_code => (
    is => 'rw',
);

sub BUILD {
    my ($self) = @_;

    for my $attribute (@pattern_attributes) {
        next if defined $self->$attribute;
        $self->$attribute(
            $locales->{$self->locale}{patterns}{$attribute}
            || $locales->{root}{patterns}{$attribute}
        );
    }

    for my $attribute (@symbol_attributes) {
        next if defined $self->$attribute;
        $self->$attribute(
            $locales->{$self->locale}{symbols}{$attribute}
            || $locales->{root}{symbols}{$attribute}
        );
    }
}

sub _trigger_locale {
    my ($self) = @_;

    for my $attribute (@pattern_attributes) {
        $self->$attribute(
            $locales->{$self->locale}{patterns}{$attribute}
            || $locales->{root}{patterns}{$attribute}
        );
    }

    for my $attribute (@symbol_attributes) {
        $self->$attribute(
            $locales->{$self->locale}{symbols}{$attribute}
            || $locales->{root}{symbols}{$attribute}
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
    my $decimal = $self->decimal_sign;
    my $group   = $self->group_sign;

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
    my $res = $self->currency_pattern;

    return $num;
};

sub at_least {
    my $self = shift;
    my $num  = $self->decimal(shift);
    my $res  = $self->at_least_pattern;

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
