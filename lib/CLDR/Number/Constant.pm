package CLDR::Number::Constant;

use v5.8.1;
use utf8;
use strict;
use warnings;
use parent 'Exporter';

# This module does not have a publicly supported interface and may change in
# backward incompatible ways in the future.

our $VERSION = '0.16';

our @EXPORT_OK = qw( $N $M $P $C $S $Q );

# private-use characters as placeholders
# $N: formatted number
# $M: minus sign
# $P: percent sign
# $C: currency sign
# $S: semicolon
# $Q: escaped single quote

our ($N, $M, $P, $C, $S, $Q) = map { chr } 0xF8F0 .. 0xF8F5;

1;
