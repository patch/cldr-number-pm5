package CLDR::Number::Role::Format;

use utf8;
use Moo::Role;
use Carp;
use English qw( -no_match_vars );
use Scalar::Util qw( looks_like_number );
use Math::BigFloat;
use Math::Round;

our $VERSION = '0.00';

requires qw( format );

with qw( CLDR::Number::Role::Base );

my $number_pattern_re = qr{ (?: \* \X )? [@#0-9,.]+ }x;

has pattern => (
    is  => 'rw',
#    isa => sub {
#        croak "pattern is not defined" if !defined $_[0];
#    },
    trigger => 1,
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

has rounding_increment => (
    is  => 'rw',
    isa => sub {
        croak "rounding_increment '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    default => 0,
);

sub _trigger_pattern {
    my ($self, $pattern) = @_;

    PATTERN:
    while ($pattern =~ m{ \G (?:
        ( (?: [^'] | '' )+ )           # non-quoted text (incl. escaped quotes)
    |
        (?: ^ | (?<! ' ) ) '           # start quote
            (?: [^'] | '' )+           # quoted text (incl. escaped quotes)
        (?: ' (?: (?! ' ) | $ ) | $ )  # end quote (optional at end of pattern)
    ) }xg) {
        my $subpattern = $1;
        next PATTERN unless $subpattern;

        my $subpattern_offset = $LAST_MATCH_START[0];
        my $subpattern_length = $LAST_MATCH_END[0] - $subpattern_offset;

        if (my ($number_pattern) = $subpattern =~ m{ ( $number_pattern_re ) }x) {
            SUBPATTERN:
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

                if (!m{ \. }x) {
                    s{ (?: ^ | \# ) $ }{0}x;  # integer requires at least one minimum digit
                }

                my ($min_int) = m{ ( [0-9,]+ ) (?= \. | $ ) }x;
                $self->minimum_integer_digits(length $min_int);

                if ($primary) {
                    s{ (?= .{$primary} (?: \. | $ ) ) }{,}x;  # add primary group
                    $self->primary_grouping_size($primary);

                    if ($secondary) {
                        s{ (?= .{$secondary} , ) }{,}x;  # add secondary group
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

                s{ ^ \#+ (?= [#0-9] ) }{}x;  # no leading multiple #s
                s{ ^ (?= , ) }{#}x;          # leading # before group

                if (my ($max, $min) = m{ \. ( ( [0-9]* ) \#* ) }x) {
                    $self->minimum_fraction_digits(length $min);
                    $self->maximum_fraction_digits(length $max);
                }
                else {
                    $self->minimum_fraction_digits(0);
                    $self->maximum_fraction_digits(0);
                }

                if (my ($round_inc) = $number_pattern =~ m{ (
                    (?: [1-9] [0-9,]* | 0 )  # integer
                    (?= \. | $ )
                    (?: \. [0-9]* [1-9] )?   # fraction
                ) }x) {
                    $self->rounding_increment($round_inc);
                }
                else {
                    $self->rounding_increment(0);
                }
            }

            $subpattern =~ s{$number_pattern_re}{$number_pattern};
            substr $pattern, $subpattern_offset, $subpattern_length, $subpattern;

            last PATTERN;
        }
    }

    # hashref instead of attribute method so wo don't retrigger this trigger
    $self->{pattern} = $pattern;
}

sub _format_number {
    my ($self, $num) = @_;
    my $negative = $num < 0;

    if ($self->rounding_increment) {
        # TODO: round half to even
        $num = Math::Round::nearest($self->rounding_increment, $num);
    }
    else {
        # round half to even
        my $bf = Math::BigFloat->new(abs $num);
        $bf->round_mode('even');
        $bf->ffround(-$self->maximum_fraction_digits);
        $num = $bf->bstr;
    }

    my ($int, $frac) = split /\./, $num;
    if (!defined $frac) {
        $frac = '';
    }

    if (my $primary_group = $self->primary_grouping_size) {
        my $group_sign   = $self->group_sign;
        my $other_groups = $self->secondary_grouping_size || $primary_group;

        $int =~ s{ (?<! ^ ) (?= .{$primary_group} $ ) }{$group_sign}x;

        while (1) {
            last if $int !~ s{
                (?<! ^ )
                (?<! \Q$group_sign\E )
                (?= .{$other_groups} \Q$group_sign\E )
            }{$group_sign}x;
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
        $num_format .= $self->decimal_sign . $frac;
    }

    my $format = $self->pattern;

    if ($negative) {
        my $minus_sign = $self->minus_sign;

        if ($format =~ s{ ^ .* ; }{}x) {
            $format =~ s{-}{$minus_sign};
        }
        else {
            $format = $minus_sign . $format;
        }
    }
    else {
        $format =~ s{ ; .* $ }{}x;
    }

    my $final_format = '';
    my $formatted;
    # TODO: remove duplicate regex code shared with _trigger_pattern
    while ($format =~ m{ \G (?:
        ( (?: [^'] | '' )+ )           # non-quoted text (incl. escaped quotes)
    |
        (?: ^ | (?<! ' ) ) '           # start quote
            ( (?: [^'] | '' )+ )       # quoted text (incl. escaped quotes)
        (?: ' (?: (?! ' ) | $ ) | $ )  # end quote (optional at end of pattern)
    ) }xg) {
        my $nonquote = $1;
        my $quote    = $2;

        if (!$formatted && defined $nonquote && $nonquote =~ s{$number_pattern_re}{$num_format}) {
            $formatted = 1;
        }

        $final_format .= defined $nonquote ? $nonquote : $quote;
    }

    $final_format =~ s{''}{'}g;

    return $final_format;
}

sub at_least {
    my ($self, $num) = @_;
    my $pattern = $self->_get_data(patterns => 'atleast');

    $num = $self->format($num);
    $pattern =~ s{ \{ 0 \} }{$num}x;

    return $pattern;
}

sub range {
    my ($self, @nums) = @_;
    my $pattern = $self->_get_data(patterns => 'range');

    for my $i (0, 1) {
        $nums[$i] = $self->format($nums[$i]);
        $pattern =~ s{ \{ $i \} }{$nums[$i]}x;
    }

    return $pattern;
}

1;
