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
    trigger => 1,
);

has default_locale => (
    is     => 'ro',
    coerce => sub {
        my ($locale) = @_;
        if (!defined $locale) {
            carp 'default_locale is not defined';
        }
        elsif (!exists _number_data()->{$locale}) {
            carp "default_locale '$locale' is unknown";
        }
        else {
            return $locale;
        }
        return;
    },
);

has _locale_inheritance => (
    is      => 'rw',
    default => sub { [] },
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
    my ($lang, $script, $region, $ext) = _split_locale($self->locale);
    my $locale;

    if ($lang && exists _number_data()->{$lang}) {
        $self->_locale_inheritance(
            _build_inheritance($lang, $script, $region, $ext)
        );
        $locale = $self->_locale_inheritance->[0];
    }
    elsif ($self->default_locale) {
        $locale = $self->default_locale;
        $self->_locale_inheritance(
            _build_inheritance( _split_locale($locale) )
        );
    }
    else {
        $locale = 'root';
        $self->_locale_inheritance( [$locale] );
    }

    $self->{locale} = $locale;

    for my $attribute ($self->_symbol_attributes) {
        $self->$attribute(
            $self->_number_data->{$self->locale}{symbols}{$attribute}
            || $self->_number_data->{root}{symbols}{$attribute}
        );
    }
}

sub _split_locale {
    my ($locale) = @_;

    return unless defined $locale;

    $locale = lc $locale;
    $locale =~ tr{_}{-};

    my ($lang, $script, $region, $ext) = $locale =~ m{ ^
              ( [a-z]{2,3}          )     # language
        (?: - ( [a-z]{4}            ) )?  # script
        (?: - ( [a-z]{2} | [0-9]{3} ) )?  # country or region
        (?: - ( u- .+               ) )?  # extension
    $ }xi;

    $script = ucfirst $script if $script;
    $region = uc      $region if $region;

    return $lang, $script, $region, $ext;
}

sub _build_inheritance {
    my ($lang, $script, $region, $ext) = @_;
    my @tree;

    for my $subtags (
        [$lang, $region, $ext],
        [$lang, $script, $region],
        [$lang, $script],
        [$lang, $region],
        [$lang],
    ) {
        next if grep { !$_ } @$subtags;
        my $locale = join '-', @$subtags;
        next if !exists _number_data()->{$locale};
        push @tree, $locale;
    }
    push @tree, 'root';

    return \@tree;
}

sub BUILD {
    my ($self) = @_;

    $self->_trigger_locale;
}

1;
