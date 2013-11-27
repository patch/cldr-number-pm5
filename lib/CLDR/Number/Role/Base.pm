package CLDR::Number::Role::Base;

use utf8;
use Moo::Role;
use Carp;
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
        if (!defined $locale) {
            carp 'locale is not defined';
        }
        elsif (!exists _number_data()->{$locale}) {
            carp "locale '$locale' is unknown";
        }
        else {
            return $locale;
        }
        return 'root';
    },
    trigger => 1,
    default => 'root',
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
        group
        infinity
        minus
        nan
        permil
        percent
        plus
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
