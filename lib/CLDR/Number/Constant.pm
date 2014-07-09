package CLDR::Number::Constant;

use v5.8.1;
use utf8;
use strict;
use warnings;
use parent 'Exporter';

# This module does not have a publicly supported interface and may change in
# backward incompatible ways in the future.

our $VERSION = '0.08_1';

our @EXPORT_OK = qw( $𝖓 $𝖒 $𝖕 $𝖈 $𝖖 );

# private-use characters as placeholders
# $𝖓: formatted number
# $𝖒: minus sign
# $𝖕: percent sign
# $𝖈: currency sign
# $𝖖: escaped single quote

our ($𝖓, $𝖒, $𝖕, $𝖈, $𝖖) = map { chr } 0xF8F0 .. 0xF8F4;

1;
