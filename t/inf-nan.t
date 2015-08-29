use utf8;
use strict;
use warnings;
use charnames qw( :full );
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 25;
use Test::Warn;
use CLDR::Number;

my $inf = 9**9**9;
my $neg = -$inf;
my $nan = -sin($inf);

my $cldr = CLDR::Number->new(locale => 'en');
my $decf = $cldr->decimal_formatter;
my $perf = $cldr->percent_formatter;
my $curf = $cldr->currency_formatter(currency_code => 'EUR');

is $cldr->infinity, '∞',   'infinity attribute';
is $cldr->nan,      'NaN', 'nan attribute';

is $decf->format($inf), '∞',   'format infinity';
is $decf->format($neg), '-∞',  'format negative infinity';
is $decf->format($nan), 'NaN', 'format NaN';

is $decf->format('inf'),  '∞',   'format infinity string';
is $decf->format('-inf'), '-∞',  'format negative infinity string';
is $decf->format('nan'),  'NaN', 'format NaN string';

is $perf->format($inf), '∞%',   'format infinity percent';
is $perf->format($neg), '-∞%',  'format negative infinity percent';
is $perf->format($nan), 'NaN%', 'format NaN percent';

is $curf->format($inf), '€∞',   'format infinity euros';
is $curf->format($neg), '-€∞',  'format negative infinity euros';
is $curf->format($nan), '€NaN', 'format NaN euros';

is $decf->at_least($inf), '∞+',   'format at least infinity';
is $decf->at_least($nan), 'NaN+', 'format at least NaN';

is $decf->range($neg, $inf), '-∞–∞',    'format range of infinity';
is $decf->range($nan, $nan), 'NaN–NaN', 'format range of NaN';

$cldr = CLDR::Number->new(locale => 'dz');
$decf = $cldr->decimal_formatter;
$perf = $cldr->percent_formatter;
$curf = $cldr->currency_formatter(currency_code => 'BTN');

is $cldr->infinity, 'གྲངས་མེད', 'infinity attribute (dz)';
is $cldr->nan,      'ཨང་མད',  'nan attribute (dz)';

is $decf->format($inf), 'གྲངས་མེད',  'format infinity (dz)';
is $decf->format($neg), '-གྲངས་མེད', 'format negative infinity (dz)';
is $decf->format($nan), 'ཨང་མད',   'format NaN (dz)';

is $perf->format($inf), 'གྲངས་མེད %',  'format infinity percent (dz)';
is $curf->format($inf), 'Nu.གྲངས་མེད', 'format infinity ngultrums (dz)';
