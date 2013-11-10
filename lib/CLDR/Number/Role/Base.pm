package CLDR::Number::Role::Base;

use utf8;
use Moo::Role;
use Carp;
use Scalar::Util qw( looks_like_number );
use CLDR::Number::Data::Base;

our $VERSION = '0.00';

has cldr_version => (
    is      => 'ro',
    default => 24,
);

has locale => (
    is      => 'rw',
    coerce  => sub {
        my ($locale) = @_;
        if    (!defined $locale)                  { carp "locale is not defined"      }
        elsif (!exists _number_data()->{$locale}) { carp "locale '$locale' is invalid" }
        else                                      { return $locale                     }
                                                    return 'root'
    },
    trigger => 1,
    default => 'root',
);

has minimum_integer_digits => (
    is  => 'rw',
    isa => sub {
        croak "minimum_integer_digits '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    default => 1,
);

has maximum_integer_digits => (
    is  => 'rw',
    isa => sub {
        croak "maximum_integer_digits '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
);

has minimum_fraction_digits => (
    is  => 'rw',
    isa => sub {
        croak "minimum_fraction_digits '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    default => 0,
);

has maximum_fraction_digits => (
    is  => 'rw',
    isa => sub {
        croak "maximum_fraction_digits '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    default => 3,
);

has primary_grouping_size => (
    is  => 'rw',
    isa => sub {
        croak "primary_grouping_size '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    default => 3,
    clearer => 1,
);

has secondary_grouping_size => (
    is  => 'rw',
    isa => sub {
        croak "secondary_grouping_size '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    clearer => 1,
);

for my $attribute ( _symbol_attributes() ) {
    has $attribute => (
        is        => 'rw',
        predicate => 1,
    );
}

sub _number_data {
    return $CLDR::Number::Data::Base::DATA;
};

sub _symbol_attributes {
    return qw(
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
    );
}

sub _trigger_locale {
    my ($self) = @_;

    for my $attribute ($self->_symbol_attributes) {
        $self->$attribute(
            $self->_number_data->{$self->locale}{symbols}{$attribute}
            || $self->_number_data->{root}{symbols}{$attribute}
        );
    }
}

sub BUILD {
    my ($self) = @_;

    $self->_trigger_locale;
}

1;
