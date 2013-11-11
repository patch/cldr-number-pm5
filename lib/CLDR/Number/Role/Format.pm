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
    my ($number_pattern) = $pattern =~ m{ ( [#0,.]+ ) }x;

    for ($number_pattern) {
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

    $pattern =~ s{ [#0,.]+ }{$number_pattern}x;
    return $pattern;
}

sub _trigger_pattern {
    my ($self, $pattern) = @_;
    my ($number_pattern) = $pattern =~ m{ ( [#0,.]+ ) }x;

    my ($min_int) = $number_pattern =~ m{ ( [0,]+ ) (?= \. | $ ) }x;
    $min_int =~ tr{,}{}d;
    $self->minimum_integer_digits(length $min_int);

    if (my ($max, $min) = $number_pattern =~ m{ \. ( ( 0* ) \#* ) }x) {
        $self->minimum_fraction_digits(length $min);
        $self->maximum_fraction_digits(length $max);
    }
    else {
        $self->minimum_fraction_digits(0);
        $self->maximum_fraction_digits(0);
    }

    if ($number_pattern =~ m{ (?: , ( [^,]* ) )? , ( [^,.]* ) $ }x) {
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
    my $negative = $num < 0;
    $num = sprintf '%.' . $self->maximum_fraction_digits . 'f' => abs $num;
    my $int  = int $num;
    my $frac = ($num * 100 - $int * 100) / 10;

    if (my $primary_group = $self->primary_grouping_size) {
        $int =~ s{ (?<! ^ ) (?= .{$primary_group} $ ) }{ $self->group }xe;
        my $other_groups = $self->secondary_grouping_size || $primary_group;
        while (1) {
            last if $int !~ s{ (?<! ^ ) (?<! , ) (?= .{$other_groups} , ) }{ $self->group }xe;
        }
    }

    my $pad_size = $self->minimum_fraction_digits - length $frac;

    if ($pad_size > 0) {
        $frac .= 0 x $pad_size;
    }
    elsif ($pad_size == -1 && $frac == 0) {
        $frac = '';
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

    $format =~ s{ [#0,.]+ }{$num_format}x;

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
