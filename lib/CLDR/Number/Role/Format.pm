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
);

sub _format_number {
    my ($self, $num, $pattern) = @_;
    my $integer = int $num;
    my $formatted_integer;

    if (my $primary_grouping_size = $self->primary_grouping_size) {
        my $reverse = reverse $integer;
        $reverse =~ s{ (?<= \G .{$primary_grouping_size} ) (?= . ) }{ $self->group }eg;
        $formatted_integer = reverse $reverse;
    }
    else {
        $formatted_integer = $num;
    }

    # TODO: proof-of-concept only - all sorts of rounding errors
    if (my $frac = int(($num - $integer) * 100)) {
        $num = $formatted_integer . $self->decimal . $frac;
    }
    else {
        $num = $formatted_integer;
    }

    $pattern =~ s{ ; .* }{}x;
    $pattern =~ s{ [#0,.]+ }{$num}x;

    return $pattern;
}

sub at_least {
    my ($self, $num) = @_;
    my $pattern = $self->atLeast_pattern;

    $num = $self->format($num);
    $pattern =~ s{ \{ 0 \} }{$num}x;

    return $pattern;
};

sub range {
    my ($self, @nums) = shift;
    my $pattern = $self->range_pattern;

    for my $i (0, 1) {
        $nums[$i] = $self->format($nums[$i]);
        $pattern =~ s{ \{ $i \} }{$nums[$i]}x;
    }

    return $pattern;
};

1;
