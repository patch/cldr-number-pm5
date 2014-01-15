package CLDR::Number::Role::Format;

use utf8;
use Carp;
use Scalar::Util qw( looks_like_number );
use Math::BigFloat;
use Math::Round;
use Moo::Role;
use CLDR::Number::Data::Base;

# This role does not have a publicly supported interface and may change in
# backward incompatible ways in the future. Please use one of the documented
# classes instead.

our $VERSION = '0.03';

requires qw( BUILD format );

with qw( CLDR::Number::Role::Base );

has pattern => (
    is  => 'rw',
    isa => sub {
        croak "pattern is not defined" if !defined $_[0];
    },
    trigger => 1,
);

has minimum_integer_digits => (
    is  => 'rw',
    isa => sub {
        croak "minimum_integer_digits '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
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
    trigger => sub {
        my ($self, $min) = @_;
        return unless defined $self->maximum_fraction_digits;
        return if $min <= $self->maximum_fraction_digits;
        $self->{maximum_fraction_digits} = $min;
    },
);

has maximum_fraction_digits => (
    is  => 'rw',
    isa => sub {
        croak "maximum_fraction_digits '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
    trigger => sub {
        my ($self, $max) = @_;
        return unless defined $self->minimum_fraction_digits;
        return if $max >= $self->minimum_fraction_digits;
        $self->{minimum_fraction_digits} = $max;
    },
);

has primary_grouping_size => (
    is  => 'rw',
    isa => sub {
        croak "primary_grouping_size '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
);

has secondary_grouping_size => (
    is  => 'rw',
    isa => sub {
        croak "secondary_grouping_size '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
);

has rounding_increment => (
    is  => 'rw',
    isa => sub {
        croak "rounding_increment '$_[0]' is invalid"
            if defined $_[0] && !looks_like_number $_[0];
    },
);

has _positive_pattern => (
    is => 'rw',
);

has _negative_pattern => (
    is => 'rw',
);

before BUILD => sub {
    my ($self) = @_;

    return if $self->_has_init_arg('locale');

    $self->_build_pattern;
};

after _trigger_locale => sub {
    my ($self) = @_;

    $self->_build_pattern;
};

# using non-Unicode codepoints as placeholders:
# $N: formatted number
# $P: percent sign
# $C: currency sign
# $M: minus sign
# $Q: escaped quote sign
my ($N, $P, $C, $M, $Q) = map { chr } 0x1F0000 .. 0x1F0004;
# TODO: find better solution for this hack around a Perl ≤ v5.8.8 bug with
# non-Unicode code points in capture buffers
my $Q_enc = "\xF7\xB0\x80\x84";

sub _build_pattern {
    my ($self) = @_;

    $self->_set_unless_init_arg(
        pattern => $self->_get_data(patterns => $self->_pattern_type)
    );
}

sub _trigger_pattern {
    my ($self, $input_pattern) = @_;

    my $cache = $CLDR::Number::Data::Base::CACHE;
    if (my $attributes
        =  $cache->{attributes}{$input_pattern}
        || $cache->{patterns}{$input_pattern}
        && $cache->{attributes}{ $cache->{patterns}{$input_pattern}[0] }) {

        while (my ($attribute, $value) = each %$attributes) {
            $self->_set_unless_init_arg($attribute => $value);
        }

        my $patterns = $cache->{patterns}{$input_pattern};

        $self->_positive_pattern(
            $patterns && $patterns->[1] || $N
        );

        $self->_negative_pattern(
            $patterns && $patterns->[2] || $M . $self->_positive_pattern
        );

        return;
    }

    # temporarily replace escaped quotes
    $input_pattern =~ s{''}{$Q}g;

    my $internal_pattern  = '';
    my $canonical_pattern = '';
    my $num_subpattern;

    while ($input_pattern =~ m{
        \G (?:
              ( [^']+ )              # non-quoted text
        |
            ' ( [^']+ ) (?: ' | $ )  # quoted text (trailing quote optional)
        )
    }xg) {
        my $nonquoted = $1;
        my $quoted    = $2;

        if (defined $nonquoted) {
            if (!defined $num_subpattern && $nonquoted =~ m{
                ^ ( .*? )                    # pre–number pattern
                ( (?: \* \X )? [@#0-9,.]+ )  # number pattern
                ( .* ) $                     # post–number pattern
            }x) {
                my $prenum      = $1;
                $num_subpattern = $2;
                my $postnum     = $3;

                $num_subpattern = $self->_process_num_pattern($num_subpattern);

                $internal_pattern  .= _escape_symbols($prenum . $N . $postnum);
                $canonical_pattern .= $prenum . $num_subpattern . $postnum;
            }
            else {
                $internal_pattern  .= _escape_symbols($nonquoted);
                $canonical_pattern .= $nonquoted;
            }
        }
        elsif (defined $quoted) {
            $internal_pattern  .= $quoted;
            $canonical_pattern .= "'$quoted'";
        }
    }

    $internal_pattern  =~ s{ $Q | $Q_enc }{'}xg;
    $canonical_pattern =~ s{ $Q | $Q_enc }{''}xg;

    $self->_positive_pattern($internal_pattern);
    $self->_negative_pattern($M . $internal_pattern);

    # hashref instead of attribute method so wo don’t retrigger this trigger
    $self->{pattern} = $canonical_pattern;
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

    my $format = do { if ($negative) {
        my $pattern = $self->_negative_pattern;
        $pattern =~ s{$M}{$self->minus_sign}e;
        $pattern;
    }
    else {
        $self->_positive_pattern;
    } };

    $format =~ s{$N}{$num_format};

    return $format;
}

sub _process_num_pattern {
    my ($self, $num_pattern) = @_;

    for ($num_pattern) {
        s{ \. $ }{}x;                    # no trailing decimal sign
        s{ (?: ^ | \# ) (?= \. ) }{0}x;  # at least one minimum integer digit

        # calculate grouping sizes
        my ($secondary, $primary) = map { length } m{
            , ( [^,]*  )  # primary
            , ( [^,.]* )  # secondary
            (?: \. | $ )
        }x;

        if (!defined $primary) {
            ($primary) = map { length } m{
                , ( [^,.]* )  # primary only
                (?: \. | $ )
            }x;
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
            s{ (?: ^ | \# ) $ }{0}x;  # at least one minimum integer digit
        }

        if (!$self->_has_init_arg('minimum_integer_digits')) {
            my ($min_int) = m{ ( [0-9,]+ ) (?= \. | $ ) }x;
            $self->minimum_integer_digits(length $min_int);
        }

        if ($primary) {
            s{ (?= .{$primary} (?: \. | $ ) ) }{,}x;  # add primary group
            $self->_set_unless_init_arg(primary_grouping_size => $primary);

            if ($secondary) {
                s{ (?= .{$secondary} , ) }{,}x;  # add secondary group
                $self->_set_unless_init_arg(
                    secondary_grouping_size => $secondary
                );
            }
            else {
                $self->_set_unless_init_arg(secondary_grouping_size => 0);
            }
        }
        else {
            $self->_set_unless_init_arg(primary_grouping_size   => 0);
            $self->_set_unless_init_arg(secondary_grouping_size => 0);
        }

        s{ ^ \#+ (?= [#0-9] ) }{}x;  # no leading multiple #s
        s{ ^ (?= , ) }{#}x;          # leading # before group

        if (my ($max, $min) = m{ \. ( ( [0-9]* ) \#* ) }x) {
            $self->_set_unless_init_arg(minimum_fraction_digits => length $min);
            $self->_set_unless_init_arg(maximum_fraction_digits => length $max);
        }
        else {
            $self->_set_unless_init_arg(minimum_fraction_digits => 0);
            $self->_set_unless_init_arg(maximum_fraction_digits => 0);
        }

        if (!$self->_has_init_arg('rounding_increment')) {
            if (my ($round_inc) = m{ (
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
    }

    return $num_pattern;
}

sub _escape_symbols {
    my ($pattern) = @_;

    for ($pattern) {
        s{%}{$P};
        s{¤}{$C};
        s{-}{$M};
    }

    return $pattern;
}

sub at_least {
    my ($self, $num) = @_;
    my $pattern = $self->_get_data(patterns => 'atleast');

    if (!defined $num) {
        carp 'Use of uninitialized value in at_least';
        return undef;
    }

    $num = $self->format($num);
    $pattern =~ s{ \{ 0 \} }{$num}x;

    return $pattern;
}

sub range {
    my ($self, @nums) = @_;
    my $pattern = $self->_get_data(patterns => 'range');

    for my $i (0, 1) {
        if (!defined $nums[$i]) {
            carp 'Use of uninitialized value in range';
            return undef;
        }

        $nums[$i] = $self->format($nums[$i]);
        $pattern =~ s{ \{ $i \} }{$nums[$i]}x;
    }

    return $pattern;
}

1;
