use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 24;
use CLDR::Number;

my $cldr = CLDR::Number->new;
my $decf = $cldr->decimal_formatter;

$decf->locale('en');
is $decf->format(5.0),              '5';
is $decf->format(0),                '0';
is $decf->format(.5),               '0.5';
is $decf->format(.05),              '0.05';
is $decf->format(.005),             '0.005';
is $decf->format(50_000.05),        '50,000.05';
is $decf->format(5_000_000.05),     '5,000,000.05';
is $decf->format(5_000_000_000.05), '5,000,000,000.05';
is $decf->format(-50_000.05),       '-50,000.05';

$decf->locale('fr');
is $decf->format(5.0),              '5';
is $decf->format(0),                '0';
is $decf->format(.5),               '0,5';
is $decf->format(.05),              '0,05';
is $decf->format(.005),             '0,005';
is $decf->format(50_000.05),        '50 000,05';
is $decf->format(5_000_000.05),     '5 000 000,05';
is $decf->format(5_000_000_000.05), '5 000 000 000,05';
is $decf->format(-50_000.05),       '-50 000,05';

TODO: {
    local $TODO = 'ar & bn not yet included';

    $decf->locale('ar');
    is $decf->format(-50.0),   '50-';
    is $decf->format(-50_000), '50,000-';
    is $decf->format(-50.05),  '50.05-';
    is $decf->format(-.05),    '0.05-';

    $decf->locale('bn');
    is $decf->format(1_23_456),    '1,23,456';
    is $decf->format(1_23_45_678), '1,23,45,678';
}
