use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 16;
use CLDR::Number;

my $cldr = CLDR::Number->new;
my $decf = $cldr->decimal_formatter(locale => 'fr');

$decf->maximum_fraction_digits(1);
is $decf->format(0.05),   '0';
is $decf->format(0.051),  '0,1';
is $decf->format(0.149),  '0,1';
is $decf->format(0.15),   '0,2';
is $decf->format(0.25),   '0,2';
is $decf->format(0.251),  '0,3';
is $decf->format(0.349),  '0,3';
is $decf->format(0.35),   '0,4';
is $decf->format(-0.05),  '-0';
is $decf->format(-0.051), '-0,1';
is $decf->format(-0.149), '-0,1';
is $decf->format(-0.15),  '-0,2';
is $decf->format(-0.25),  '-0,2';
is $decf->format(-0.251), '-0,3';
is $decf->format(-0.349), '-0,3';
is $decf->format(-0.35),  '-0,4';
