use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 2;
use CLDR::Number;

my $f = CLDR::Number->new;
my ($in, $out);

# Tests from ICU4C:
# source/test/intltest/numfmtst.cpp

# NumberFormatTest::TestPerMill
$f->percent_pattern('###.###%');
is $f->per_mille(0.4857), '485.7‰', '0.4857 x ###.###‰';
$f->percent_sign('m');
is $f->per_mille(0.4857), '485.7m', '0.4857 x ###.###m';
