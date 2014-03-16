use utf8;
use strict;
use warnings;
use open qw( :encoding(UTF-8) :std );
use Test::More tests => 17;
use CLDR::Number;

my $cldr = CLDR::Number->new(locale => 'en');
my $decf = $cldr->decimal_formatter;
my $perf = $cldr->percent_formatter;
my $curf = $cldr->currency_formatter(currency_code => 'USD');

can_ok $cldr, 'numbering_system';
can_ok $decf, 'numbering_system';
can_ok $perf, 'numbering_system';
can_ok $curf, 'numbering_system';

is $cldr->numbering_system, 'latn', 'default numbering system (base)';
is $decf->numbering_system, 'latn', 'default numbering system (decimal)';
is $perf->numbering_system, 'latn', 'default numbering system (percent)';
is $curf->numbering_system, 'latn', 'default numbering system (currency)';

$cldr->numbering_system('thai');
$decf->numbering_system('thai');
$perf->numbering_system('thai');
$curf->numbering_system('thai');

is $cldr->numbering_system, 'thai', 'set numbering system to thai (base)';
is $decf->numbering_system, 'thai', 'set numbering system to thai (decimal)';
is $perf->numbering_system, 'thai', 'set numbering system to thai (percent)';
is $curf->numbering_system, 'thai', 'set numbering system to thai (currency)';

is $decf->format(1234.09), '๑,๒๓๔.๐๙',  'format in thai (decimal)';
is $perf->format(1234.09), '๑๒๓,๔๐๙%',  'format in thai (percent)';
is $curf->format(1234.09), '$๑,๒๓๔.๐๙', 'format in thai (currency)';

$cldr->locale('en-u-nu-latn');
is $cldr->numbering_system, 'latn', 'set numbering system to latn via locale';
$cldr->locale('en-u-nu-thai');
is $cldr->numbering_system, 'thai', 'set numbering system to thai via locale';
