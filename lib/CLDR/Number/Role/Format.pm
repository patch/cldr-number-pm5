package CLDR::Number::Role::Format;

use utf8;
use Moo::Role;
use Carp;

our $VERSION = '0.00';

requires qw( format );

with qw( CLDR::Number::Role::Base );

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

    for ($pattern) {
        s{ \. $ }{}x;                    # no trailing decimal sign
        s{ (?: ^ | \# ) (?= \. ) }{0}x;  # integer requires at least one 0

        my ($primary, $secondary);
        if (m{ (?: , ( [^,]* ) )? , ( [^,.]* ) $ }x) {  # calculate groups
            if (defined $2 && length $2) {
                $primary = length $2;
                if (length $1 && length $1 != $primary) {
                    $secondary = length $1;
                }
            }
            elsif (defined $1 && length $1) {
                $primary = length $1;
            }
        }

        tr{,}{}d;  # temporarily remove groups

        if ($primary) {
            s{ (?= .{$primary} (?: \. | $ ) ) }{,}x;  # add primary group
            if ($secondary) {
                s{ (?= .{$secondary} , ) }{,}x;  # add secondary group
            }
        }

        if (!m{ \. }x) {
            s{ (?: ^ | \# ) $ }{0}x;  # integer requires at least one 0
        }

        s{ ^ \#+ (?= [#0] ) }{}x;  # no leading multiple #s
        s{ ^ (?= , ) }{#}x;        # leading # before group
    }

    return $pattern;
}

sub _trigger_pattern {
    my ($self, $pattern) = @_;

    my ($min_int) = $pattern =~ m{ ( [0,]+ ) (?= \. | $ ) }x;
    $min_int =~ tr{,}{}d;
    $self->minimum_integer_digits(length $min_int);

    if (my ($max, $min) = $pattern =~ m{ \. ( ( 0* ) \#* ) }x) {
        $self->minimum_fraction_digits(length $min);
        $self->maximum_fraction_digits(length $max);
    }
    else {
        $self->minimum_fraction_digits(0);
        $self->maximum_fraction_digits(0);
    }

    if ($pattern =~ m{ (?: , ( [^,]* ) )? , ( [^,.]* ) $ }x) {
        if (defined $2) {
            $self->primary_grouping_size(length $2);
            if (defined $1) {
                $self->secondary_grouping_size(length $1);
            }
            else {
                $self->clear_secondary_grouping_size;
            }
        }
        elsif (defined $1) {
            $self->primary_grouping_size(length $1);
        }
        else {
            $self->clear_primary_grouping_size;
            $self->clear_secondary_grouping_size;
        }
    }
    else {
        $self->clear_primary_grouping_size;
        $self->clear_secondary_grouping_size;
    }
}

sub _format_number {
    my ($self, $num) = @_;
    my $format = $self->pattern;
    my $min_frac = $self->minimum_fraction_digits;
    my $max_frac = $self->maximum_fraction_digits;
    my $int = int $num;
    my $formatted_int;

    $num = sprintf "%.${max_frac}f", $num;

    if (my $primary_grouping_size = $self->primary_grouping_size) {
        my $reverse = reverse $int;
        $reverse =~ s{ (?<= \G .{$primary_grouping_size} ) (?= . ) }{ $self->group }eg;
        $formatted_int = reverse $reverse;
    }
    else {
        $formatted_int = $num;
    }

    # TODO: proof-of-concept only - all sorts of rounding errors
    if (my $frac = ($num * 100 - $int * 100) / 10) {
        my $pad_size = $min_frac - length $frac;

        if ($pad_size > 0) {
            $frac .= 0 x $pad_size;
        }

        $num = $formatted_int . $self->decimal . $frac;
    }
    else {
        $num = $formatted_int;
    }

    $format =~ s{ ; .* }{}x;
    $format =~ s{ [#0,.]+ }{$num}x;

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
