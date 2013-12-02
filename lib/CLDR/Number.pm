package CLDR::Number;

use utf8;
use Moo;
use Carp;

our $VERSION = '0.00_01';

with qw( CLDR::Number::Role::Base );

sub decimal_formatter {
    my ($self, %args) = @_;
    
    require CLDR::Number::Format::Decimal;
    CLDR::Number::Format::Decimal->new($self->_make_args(%args));
}

sub percent_formatter {
    my ($self, %args) = @_;

    require CLDR::Number::Format::Percent;
    CLDR::Number::Format::Percent->new($self->_make_args(%args));
}

sub currency_formatter {
    my ($self, %args) = @_;

    require CLDR::Number::Format::Currency;
    CLDR::Number::Format::Currency->new($self->_make_args(%args));
}

sub _make_args {
    my ($self, %new_args) = @_;

    my %args = ((
        map { $_ => $self->$_ }
        qw  { locale decimal_sign group_sign plus_sign minus_sign }
        ), %new_args,
    );

    return %args;
}

1;

__END__

=encoding UTF-8

=head1 NAME

CLDR::Number - Number formatters using the Unicode CLDR

=head1 VERSION

This document describes CLDR::Number v0.00_01, built with Unicode CLDR v24. This
is a development release without full documentation.

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
    $perf->format(0.05)  # 5%

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

=item length

=item decimal_sign

=item group_sign

=item plus_sign

=item minus_sign

=back

=head1 METHODS

=over

=item decimal_formatter

=item percent_formatter

=item currency_formatter

=back

=head1 TODO

=over

=item * only the Latin (C<latn>) number system currently is supported

=item * only the C<standard> type of formats are currently supported, not C<short>, C<long>, etc.

=item * other numbering systems: C<native>, C<traditional>, C<finance>

=item * accounting currency patterns

=back

=head1 SEE ALSO

=over

=item * L<UTS #35: Unicode LDML, Part 3: Numbers|http://www.unicode.org/reports/tr35/tr35-numbers.html>

=item * L<Perl CLDR|http://perl-cldr.github.io/>

=item * Twitter: L<@PerlCLDR|http://twitter.com/PerlCLDR>

=back

=head1 AUTHOR

Nick Patch <patch@cpan.org>

This module is brought to you by L<Shutterstock|http://www.shutterstock.com/>.
Additional open source projects from Shutterstock can be found at
L<code.shutterstock.com|http://code.shutterstock.com/>.

=head1 COPYRIGHT AND LICENSE

© 2013 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
