package CLDR::Number::Data;

use v5.8.1;
use utf8;
use strict;
use warnings;
use charnames qw( :full );

our $VERSION      = '0.00';
our $CLDR_VERSION = '24';

# XXX: data for testing
our $LOCALES = {
    root => {
        default_number_system     => 'latn',
        other_number_systems      => { native => 'latn' },
        decimal_sign              => '.',
        group_sign                => ',',
        list_sign                 => ';',
        percent_sign              => '%',
        plus_sign                 => '+',
        minus_sign                => '-',
        exponent_sign             => 'E',
        superscript_exponent_sign => '×',
        per_mille_sign            => '‰',
        infinity_sign             => '∞',
        nan_sign                  => 'NaN',
        decimal_pattern           => '#,##0.###',
        scientific_pattern        => '#E0',
        percent_pattern           => '#,##0%',
        currency_pattern          => '¤ #,##0.00',
        at_least_pattern          => '⩾{0}',
        range_pattern             => '{0}–{1}',
    },
    ar => {
        default_number_system => 'arab',
        other_number_systems  => { native => 'arab' },
        decimal_sign          => '٫',
        group_sign            => '٬',
        list_sign             => '؛',
        percent_sign          => '٪',
        plus_sign             => "\N{RIGHT-TO-LEFT MARK}+",
        minus_sign            => "\N{RIGHT-TO-LEFT MARK}-",
        exponent_sign         => 'ﺎﺳ',
        per_mille_sign        => '؉',
        nan_sign              => 'ﻞﻴﺳ ﺮﻘﻣ',
        currency_pattern      => '¤ #,##0.00',
        at_least_pattern      => '+{0}',
    },
    en => {
        currency_pattern   => '¤#,##0.00;(¤#,##0.00)',
        at_least_pattern   => '{0}+',
    },
    fr => {
        decimal_sign       => ',',
        group_sign         => ' ',
        percent_pattern    => '#,##0 %',
        currency_pattern   => '#,##0.00 ¤;(#,##0.00 ¤)',
        at_least_pattern   => 'au moins {0}',
        range_pattern      => 'de {0} à {1}',
    },
    in => {
        decimal_pattern    => '#,##,##0.###',
        percent_pattern    => '#,##,##0%',
        currency_pattern   => '¤ #,##,##0.00',
    },
};

1;
