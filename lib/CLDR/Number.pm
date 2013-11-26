package CLDR::Number;

use utf8;
use Moo;
use Carp;

our $VERSION = '0.00';

with qw( CLDR::Number::Role::Base );

sub decimal_formatter {
    my ($self, %args) = @_;
    
    require CLDR::Number::Format::Decimal;
    CLDR::Number::Format::Decimal->new($self->_make_args(%args));
};

sub percent_formatter {
    my ($self, %args) = @_;

    require CLDR::Number::Format::Percent;
    CLDR::Number::Format::Percent->new($self->_make_args(%args));
};

sub currency_formatter {
    my ($self, %args) = @_;

    require CLDR::Number::Format::Currency;
    CLDR::Number::Format::Currency->new($self->_make_args(%args));
};

sub _make_args {
    my ($self, %new_args) = @_;
    my %args;

    for my $attribute ($self->_symbol_attributes) {
        my $predicate = "has_$attribute";
        next unless $self->$predicate;
        $args{$attribute} = $self->$attribute;
    }

    @args{keys %new_args} = values %new_args;

    return %args;
}

1;

=encoding UTF-8

=head1 NAME

CLDR::Number - Number formatters using the Unicode CLDR

=head1 SYNOPSIS

    use CLDR::Number;
    my $cldr = CLDR::Number->new(locale => 'es');

    # decimals
    my $decf = $cldr->decimal_formatter,
    $decf->format(1337)   # 1.337
    $decf->format(-1337)  # -1.337

    $decf->locale('en');
    $decf->minimum_fraction_size(3);
    $decf->format(1337)  # 1,337.000

    # percents
    my $perf = $cldr->percent_formatter;
    $perf->format(1337)  # 1.337%

    # currencies
    my $curf = $cldr->currency_formatter(currency => 'USD'),
    $curf->format(1337)  # 1.337,00 $

    $curf->currency('EUR');
    $curf->format(1337)  # 1.337,00 €

    $curf->locale('en');
    $curf->format(1337)  # €1,337.00

=head1 ATTRIBUTES

=over

=item locale

=back

=head1 METHODS

=over

=item decimal_formatter

=item percent_formatter

=item currency_formatter

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
