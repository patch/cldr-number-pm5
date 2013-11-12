package CLDR::Number::Role::Format;

use utf8;
use Moo::Role;
use Carp;
use Math::BigFloat;

our $VERSION = '0.00';

requires qw( format );

with qw( CLDR::Number::Role::Base );

my $number_pattern_re = qr{ (?: \* \X )? [@#0-9,.]+ }x;

has pattern => (
    is  => 'rw',
#    isa => sub {
#        croak "pattern is not defined" if !defined $_[0];
#    },
    coerce  => \&_normalize_pattern,
    trigger => 1,
);

sub _normalize_pattern {
    my ($pattern) = @_;
    my ($number_pattern) = $pattern =~ m{ ( $number_pattern_re ) }x;

    for ($number_pattern) {
        s{ \. $ }{}x;                    # no trailing decimal sign
        s{ (?: ^ | \# ) (?= \. ) }{0}x;  # integer requires at least one minimum digit

        # calculate grouping sizes
        my ($secondary, $primary) = map { length } m{ , ( [^,]* ) , ( [^,.]* ) (?: \. | $ ) }x;
        if (!defined $primary) {
            ($primary) = map { length } m{ , ( [^,.]* ) (?: \. | $ ) }x;
        }
        elsif ($primary == 0) {
            $primary   = $secondary;
            $secondary = undef;
        }
        elsif ($primary == $secondary) {
            $secondary = undef;
        }

        tr{,}{}d;  # temporarily remove groups

        if ($primary) {
            s{ (?= .{$primary} (?: \. | $ ) ) }{,}x;  # add primary group
            if ($secondary) {
                s{ (?= .{$secondary} , ) }{,}x;  # add secondary group
            }
        }

        if (!m{ \. }x) {
            s{ (?: ^ | \# ) $ }{0}x;  # integer requires at least one minimum digit
        }

        s{ ^ \#+ (?= [#0-9] ) }{}x;  # no leading multiple #s
        s{ ^ (?= , ) }{#}x;          # leading # before group
    }

    $pattern =~ s{$number_pattern_re}{$number_pattern};
    return $pattern;
}

sub _trigger_pattern {
    my ($self, $pattern) = @_;
    my ($number_pattern) = $pattern =~ m{ ( $number_pattern_re ) }x;

    my ($min_int) = $number_pattern =~ m{ ( [0-9,]+ ) (?= \. | $ ) }x;
    $min_int =~ tr{,}{}d;
    $self->minimum_integer_digits(length $min_int);

    if (my ($max, $min) = $number_pattern =~ m{ \. ( ( [0-9]* ) \#* ) }x) {
        $self->minimum_fraction_digits(length $min);
        $self->maximum_fraction_digits(length $max);
    }
    else {
        $self->minimum_fraction_digits(0);
        $self->maximum_fraction_digits(0);
    }

    # calculate grouping sizes
    # TODO: remove duplicate code block with _normalize_pattern
    my ($secondary, $primary) = map { length } $number_pattern =~ m{ , ( [^,]* ) , ( [^,.]* ) (?: \. | $ ) }x;
    if (!defined $primary) {
        ($primary) = map { length } $number_pattern =~ m{ , ( [^,.]* ) (?: \. | $ ) }x;
    }
    elsif ($primary == 0) {
        $primary   = $secondary;
        $secondary = undef;
    }
    elsif ($primary == $secondary) {
        $secondary = undef;
    }

    if ($primary) {
        $self->primary_grouping_size($primary);

        if ($secondary) {
            $self->secondary_grouping_size($secondary);
        }
        else {
            $self->clear_secondary_grouping_size;
        }
    }
    else {
        $self->clear_primary_grouping_size;
        $self->secondary_grouping_size($secondary);
    }
}

sub _format_number {
    my ($self, $num) = @_;
    my $negative = $num < 0;
    $num = Math::BigFloat->new(abs $num);
    $num->round_mode('even');
    $num->ffround(-$self->maximum_fraction_digits);
    my ($int, $frac) = split /\./, $num->bstr;

    if (my $primary_group = $self->primary_grouping_size) {
        $int =~ s{ (?<! ^ ) (?= .{$primary_group} $ ) }{ $self->group }xe;
        my $other_groups = $self->secondary_grouping_size || $primary_group;
        while (1) {
            last if $int !~ s{ (?<! ^ ) (?<! , ) (?= .{$other_groups} , ) }{ $self->group }xe;
        }
    }

    my $int_pad = $self->minimum_integer_digits - (length $int || 0);
    if ($int_pad > 0) {
        $int = 0 x $int_pad . $int;
    }

    my $frac_pad = $self->minimum_fraction_digits - (length $frac || 0);
    if ($frac_pad > 0) {
        $frac .= 0 x $frac_pad;
    }
    elsif ($frac_pad < 0) {
        my $truncate_size = abs $frac_pad;
        $frac =~ s{ 0{1,$truncate_size} $ }{}x;
    }

    my $num_format = $int;

    if (length $frac) {
        $num_format .= $self->decimal . $frac;
    }

    my $format = $self->pattern;

    if ($negative) {
        if ($format =~ s{ ^ .* ; }{}x) {
            $format =~ s{-}{$self->minusSign}e;
        }
        else {
            $format = $self->minusSign . $format;
        }
    }
    else {
        $format =~ s{ ; .* $ }{}x;
    }

    $format =~ s{$number_pattern_re}{$num_format};

    return $format;
}

sub at_least {
    my ($self, $num) = @_;
    my $pattern = $self->_number_data->{$self->locale}{patterns}{atLeast};

    $num = $self->format($num);
    $pattern =~ s{ \{ 0 \} }{$num}x;

    return $pattern;
};

sub range {
    my ($self, @nums) = @_;
    my $pattern = $self->_number_data->{$self->locale}{patterns}{range};

    for my $i (0, 1) {
        $nums[$i] = $self->format($nums[$i]);
        $pattern =~ s{ \{ $i \} }{$nums[$i]}x;
    }

    return $pattern;
};

1;
