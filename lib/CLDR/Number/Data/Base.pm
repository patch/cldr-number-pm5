package CLDR::Number::Data::Base;

use v5.8.1;
use utf8;
use strict;
use warnings;
use charnames qw( :full );
use CLDR::Number::Constant qw( $N $M $P $C );

# This module does not have a publicly supported interface and may change in
# backward incompatible ways in the future. Please use one of the documented
# classes instead.

our $VERSION      = '0.12';
our $CLDR_VERSION = '27.0.1';

our $DATA = {
    root => {
        pattern => {
            accounting => '¤ #,##0.00',
            at_least => '⩾{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
        system => {
            default => 'latn',
        },
    },
    af => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    agq => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    ak => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    am => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
    },
    ar => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '+{0}',
        },
        symbol => {
            decimal => '٫',
            group => '٬',
            minus => "\N{RIGHT-TO-LEFT MARK}-",
            nan => 'ليس رقم',
            percent => '٪',
            permil => '؉',
            plus => "\N{RIGHT-TO-LEFT MARK}+",
        },
        system => {
            default => 'arab',
        },
    },
    'ar-DZ' => {
        symbol => {
            decimal => ',',
            group => '.',
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
        system => {
            default => 'latn',
        },
    },
    'ar-EH' => {
        symbol => {
            decimal => '.',
            group => ',',
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
        system => {
            default => 'latn',
        },
    },
    'ar-LY' => {
        symbol => {
            decimal => ',',
            group => '.',
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
        system => {
            default => 'latn',
        },
    },
    'ar-MA' => {
        symbol => {
            decimal => ',',
            group => '.',
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
        system => {
            default => 'latn',
        },
    },
    'ar-TN' => {
        symbol => {
            decimal => ',',
            group => '.',
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
        system => {
            default => 'latn',
        },
    },
    as => {
        pattern => {
            accounting => '¤ #,##,##0.00',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
        system => {
            default => 'beng',
        },
    },
    asa => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
    },
    ast => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    az => {
        pattern => {
            at_least => '{0}+',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'az-Cyrl' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    bas => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    be => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    bem => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    bez => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
    },
    bg => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '⩾ {0}',
            currency => '#,##0.00 ¤',
            range => '{0} – {1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    bm => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    bn => {
        pattern => {
            accounting => '#,##,##0.00¤;(#,##,##0.00¤)',
            at_least => '{0}+',
            currency => '#,##,##0.00¤',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
        symbol => {
            nan => 'সংখ্যা না',
        },
        system => {
            default => 'beng',
        },
    },
    br => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    brx => {
        pattern => {
            accounting => '¤ #,##,##0.00',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    bs => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'bs-Cyrl' => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ca => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '≥ {0}',
            currency => '#,##0.00 ¤',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    cgg => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    chr => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    cs => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    cy => {
        pattern => {
            accounting => '¤#,##0.00',
            at_least => '{0}+',
            currency => '¤#,##0.00',
            range => '{0}-{1}',
        },
    },
    da => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0} eller derover',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    dav => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    de => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'de-AT' => {
        pattern => {
            currency => '¤ #,##0.00',
        },
    },
    'de-CH' => {
        pattern => {
            currency => '¤ #,##0.00;¤-#,##0.00',
        },
        symbol => {
            decimal => '.',
            group => q['],
        },
    },
    'de-LI' => {
        pattern => {
            currency => '¤ #,##0.00',
        },
        symbol => {
            decimal => '.',
            group => q['],
        },
    },
    dje => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
        symbol => {
            group => ' ',
        },
    },
    dsb => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    dua => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    dyo => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    dz => {
        pattern => {
            accounting => '¤#,##,##0.00',
            currency => '¤#,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0 %',
        },
        symbol => {
            infinity => 'གྲངས་མེད',
            nan => 'ཨང་མད',
        },
        system => {
            default => 'tibt',
        },
    },
    ebu => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    ee => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
        symbol => {
            nan => 'mnn',
        },
    },
    el => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    en => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
    },
    'en-150' => {
        pattern => {
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'en-BE' => {
        pattern => {
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'en-IN' => {
        pattern => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    'en-US-u-va-posix' => {
        pattern => {
            currency => '¤ #0.00',
            decimal => '#0.######',
            percent => '#0%',
        },
        symbol => {
            infinity => 'INF',
            permil => '0/00',
        },
    },
    'en-ZA' => {
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    eo => {
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    es => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => 'Más de {0}',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'es-419' => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    'es-AR' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'es-BO' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'es-CL' => {
        pattern => {
            currency => '¤#,##0.00;¤-#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'es-CO' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'es-CR' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'es-EC' => {
        pattern => {
            currency => '¤#,##0.00;¤-#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'es-GQ' => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    'es-MX' => {
        pattern => {
            percent => '#,##0%',
        },
    },
    'es-PY' => {
        pattern => {
            currency => '¤ #,##0.00;¤ -#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'es-UY' => {
        pattern => {
            accounting => '¤ #,##0.00;(¤ #,##0.00)',
            currency => '¤ #,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'es-VE' => {
        pattern => {
            currency => '¤#,##0.00;¤-#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    et => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            currency => '#,##0.00 ¤',
            range => '{0}‒{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    eu => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            percent => '% #,##0',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ewo => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    fa => {
        pattern => {
            accounting => "\N{LEFT-TO-RIGHT MARK}¤#,##0.00;\N{LEFT-TO-RIGHT MARK}(¤#,##0.00)",
            at_least => "\N{LEFT-TO-RIGHT MARK}{0}+\N{LEFT-TO-RIGHT MARK}",
            currency => "\N{LEFT-TO-RIGHT MARK}¤#,##0.00",
            range => '{0} تا {1}',
        },
        symbol => {
            decimal => '٫',
            group => '٬',
            minus => "\N{LEFT-TO-RIGHT MARK}−",
            nan => 'ناعدد',
            percent => '٪',
            permil => '؉',
            plus => "\N{LEFT-TO-RIGHT MARK}+\N{LEFT-TO-RIGHT MARK}",
        },
        system => {
            default => 'arabext',
        },
    },
    ff => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    fi => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => 'vähintään {0}',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            minus => '−',
            nan => 'epäluku',
        },
    },
    fil => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
            range => '{0}-{1}',
        },
    },
    fo => {
        pattern => {
            accounting => '¤#,##0.00;¤-#,##0.00',
            currency => '¤#,##0.00;¤-#,##0.00',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => '.',
            minus => '−',
            nan => '¤¤¤',
        },
    },
    fr => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => 'au moins {0}',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    'fr-BE' => {
        symbol => {
            group => '.',
        },
    },
    'fr-CH' => {
        pattern => {
            currency => '¤ #,##0.00;¤-#,##0.00',
        },
        symbol => {
            decimal => '.',
        },
    },
    'fr-LU' => {
        symbol => {
            group => '.',
        },
    },
    fur => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    fy => {
        pattern => {
            accounting => '¤ #,##0.00;(¤ #,##0.00)',
            at_least => '{0}+',
            currency => '¤ #,##0.00;¤ #,##0.00-',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ga => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
    },
    gd => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
    },
    gl => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    gsw => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            group => '’',
            minus => '−',
        },
    },
    gu => {
        pattern => {
            accounting => '¤#,##,##0.00;(¤#,##,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}-{1}',
        },
    },
    guz => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    gv => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    haw => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    he => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '⩾{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
    },
    hi => {
        pattern => {
            accounting => '¤#,##,##0.00',
            at_least => '{0}+',
            currency => '¤#,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    hr => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    hsb => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    hu => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    hy => {
        pattern => {
            accounting => '#0.00 ¤',
            at_least => '{0}+',
            currency => '#0.00 ¤',
            decimal => '#0.###',
            percent => '#0%',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    id => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ig => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    is => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    it => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'it-CH' => {
        pattern => {
            currency => '¤ #,##0.00;¤-#,##0.00',
        },
        symbol => {
            decimal => '.',
            group => q['],
        },
    },
    ja => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0} 以上',
            currency => '¤#,##0.00',
            range => '{0}～{1}',
        },
    },
    jgo => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    jmc => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    ka => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            nan => 'არ არის რიცხვი',
        },
    },
    kab => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    kam => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    kde => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    kea => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '+{0}',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    khq => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
        symbol => {
            group => ' ',
        },
    },
    ki => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    kk => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    kkj => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    kl => {
        pattern => {
            accounting => '¤#,##0.00;¤-#,##0.00',
            currency => '¤#,##0.00;¤-#,##0.00',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    kln => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    km => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    kn => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
    },
    ko => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
            range => '{0}-{1}',
        },
    },
    kok => {
        pattern => {
            accounting => '¤ #,##,##0.00',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    ks => {
        pattern => {
            accounting => '¤ #,##,##0.00',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
        symbol => {
            decimal => '٫',
            group => '٬',
            minus => "\N{LEFT-TO-RIGHT MARK}-\N{LEFT-TO-RIGHT MARK}",
            percent => '٪',
            permil => '؉',
            plus => "\N{LEFT-TO-RIGHT MARK}+\N{LEFT-TO-RIGHT MARK}",
        },
        system => {
            default => 'arabext',
        },
    },
    ksb => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
    },
    ksf => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    ksh => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            minus => '−',
            nan => '¤¤¤',
        },
    },
    kw => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    ky => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            nan => 'сан эмес',
        },
    },
    lb => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '⩾ {0}',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    lg => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
    },
    ln => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    lo => {
        pattern => {
            accounting => '¤#,##0.00;¤-#,##0.00',
            at_least => '{0}+',
            currency => '¤#,##0.00;¤-#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
            nan => "ບໍ່\N{ZERO WIDTH SPACE}ແມ່ນ\N{ZERO WIDTH SPACE}ໂຕ\N{ZERO WIDTH SPACE}ເລກ",
        },
    },
    lt => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            minus => '−',
        },
    },
    lu => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    luo => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
    },
    luy => {
        pattern => {
            accounting => '¤#,##0.00;¤- #,##0.00',
            currency => '¤#,##0.00;¤- #,##0.00',
        },
    },
    lv => {
        pattern => {
            accounting => '¤#0.00',
            at_least => 'vismaz {0}',
            currency => '¤#0.00',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            nan => 'nav skaitlis',
        },
    },
    mas => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    mer => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    mfe => {
        symbol => {
            group => ' ',
        },
    },
    mg => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    mgh => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    mk => {
        pattern => {
            at_least => '{0}+',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ml => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##,##0.###',
            range => '{0}-{1}',
        },
    },
    mn => {
        pattern => {
            at_least => '{0}+',
        },
    },
    mr => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##,##0.###',
        },
        system => {
            default => 'deva',
        },
    },
    ms => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
    },
    'ms-Latn-BN' => {
        pattern => {
            currency => '¤ #,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    mt => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    mua => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    my => {
        symbol => {
            nan => 'ဂဏန်းမဟုတ်သော',
        },
        system => {
            default => 'mymr',
        },
    },
    naq => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    nb => {
        pattern => {
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            minus => '−',
        },
    },
    nd => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    ne => {
        pattern => {
            at_least => '{0}+',
        },
        system => {
            default => 'deva',
        },
    },
    nl => {
        pattern => {
            accounting => '¤ #,##0.00;(¤ #,##0.00)',
            at_least => '{0}+',
            currency => '¤ #,##0.00;¤ -#,##0.00',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'nl-BE' => {
        pattern => {
            currency => '#,##0.00 ¤',
        },
    },
    nmg => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    nn => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            minus => '−',
        },
    },
    nnh => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    nus => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    nyn => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    om => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    or => {
        pattern => {
            accounting => '¤ #,##,##0.00',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    os => {
        symbol => {
            decimal => ',',
            group => ' ',
            nan => 'НН',
        },
    },
    pa => {
        pattern => {
            at_least => '{0}+',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    'pa-Arab' => {
        symbol => {
            decimal => '٫',
            group => '٬',
            minus => "\N{LEFT-TO-RIGHT MARK}-\N{LEFT-TO-RIGHT MARK}",
            percent => '٪',
            permil => '؉',
            plus => "\N{LEFT-TO-RIGHT MARK}+\N{LEFT-TO-RIGHT MARK}",
        },
        system => {
            default => 'arabext',
        },
    },
    pl => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    ps => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => '٫',
            group => '٬',
            minus => "\N{LEFT-TO-RIGHT MARK}-\N{LEFT-TO-RIGHT MARK}",
            percent => '٪',
            permil => '؉',
            plus => "\N{LEFT-TO-RIGHT MARK}+\N{LEFT-TO-RIGHT MARK}",
        },
        system => {
            default => 'arabext',
        },
    },
    pt => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '+{0}',
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'pt-PT' => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            currency => '#,##0.00 ¤',
            range => '{0} - {1}',
        },
        symbol => {
            group => ' ',
        },
    },
    qu => {
        pattern => {
            percent => '#,##0 %',
        },
    },
    'qu-BO' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    rm => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            group => '’',
            minus => '−',
        },
    },
    rn => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ro => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '>{0}',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
            range => '{0} - {1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    rof => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    ru => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            nan => 'не число',
        },
    },
    rw => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    rwk => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
    },
    saq => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    sbp => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
    },
    se => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            minus => '−',
            nan => '¤¤¤',
        },
    },
    seh => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ses => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
        symbol => {
            group => ' ',
        },
    },
    sg => {
        pattern => {
            accounting => '¤#,##0.00;¤-#,##0.00',
            currency => '¤#,##0.00;¤-#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    shi => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    'shi-Latn' => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    si => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
    },
    sk => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    sl => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    smn => {
        pattern => {
            at_least => 'ucemustáá {0}',
        },
        symbol => {
            nan => 'epiloho',
        },
    },
    sn => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    so => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    sq => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '>{0}',
            currency => '#,##0.00 ¤',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    sr => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'sr-Latn' => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    sv => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            minus => '−',
            nan => '¤¤¤',
        },
    },
    sw => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    'sw-CD' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ta => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    'ta-MY' => {
        pattern => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
    },
    'ta-SG' => {
        pattern => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
    },
    te => {
        pattern => {
            accounting => '¤#,##,##0.00;(¤#,##,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##,##0.00',
            decimal => '#,##,##0.###',
        },
    },
    teo => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    th => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
            range => '{0}-{1}',
        },
    },
    ti => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    to => {
        pattern => {
            at_least => '{0}+',
            range => '{0}—{1}',
        },
        symbol => {
            nan => 'TF',
        },
    },
    tr => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            percent => '%#,##0',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    twq => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
        },
        symbol => {
            group => ' ',
        },
    },
    tzm => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    ug => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
    },
    uk => {
        pattern => {
            accounting => '#,##0.00¤;(#,##0.00¤)',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            nan => 'Не число',
        },
    },
    ur => {
        pattern => {
            accounting => '¤ #,##,##0.00',
            currency => '¤ #,##,##0.00',
            percent => '#,##,##0%',
        },
        symbol => {
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
    },
    'ur-IN' => {
        symbol => {
            minus => "\N{LEFT-TO-RIGHT MARK}-\N{LEFT-TO-RIGHT MARK}",
            plus => "\N{LEFT-TO-RIGHT MARK}+\N{LEFT-TO-RIGHT MARK}",
        },
        system => {
            default => 'arabext',
        },
    },
    uz => {
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    'uz-Arab' => {
        symbol => {
            decimal => '٫',
            group => '٬',
            minus => "\N{LEFT-TO-RIGHT MARK}-\N{LEFT-TO-RIGHT MARK}",
            percent => '٪',
            permil => '؉',
            plus => "\N{LEFT-TO-RIGHT MARK}+\N{LEFT-TO-RIGHT MARK}",
        },
        system => {
            default => 'arabext',
        },
    },
    'uz-Cyrl' => {
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    vai => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    'vai-Latn' => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    vi => {
        pattern => {
            accounting => '#,##0.00 ¤',
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    vun => {
        pattern => {
            accounting => '¤#,##0.00',
            currency => '¤#,##0.00',
        },
    },
    wae => {
        symbol => {
            decimal => ',',
            group => '’',
        },
    },
    xog => {
        pattern => {
            accounting => '#,##0.00 ¤',
            currency => '#,##0.00 ¤',
        },
    },
    yav => {
        pattern => {
            accounting => '#,##0.00 ¤;(#,##0.00 ¤)',
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    yo => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            currency => '¤#,##0.00',
        },
    },
    zgh => {
        pattern => {
            accounting => '#,##0.00¤',
            currency => '#,##0.00¤',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    zh => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            range => '{0}-{1}',
        },
    },
    'zh-Hans-HK' => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    'zh-Hans-MO' => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    'zh-Hans-SG' => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    'zh-Hant' => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
            range => '{0}-{1}',
        },
        symbol => {
            nan => '非數值',
        },
    },
    zu => {
        pattern => {
            accounting => '¤#,##0.00;(¤#,##0.00)',
            at_least => '{0}+',
            currency => '¤#,##0.00',
        },
        symbol => {
            nan => 'I-NaN',
        },
    },
    map { $_ => undef } qw(
        af-NA ar-AE ar-BH ar-DJ ar-EG ar-ER ar-IL ar-IQ ar-JO ar-KM ar-KW ar-LB
        ar-MR ar-OM ar-PS ar-QA ar-SA ar-SD ar-SO ar-SS ar-SY ar-TD ar-YE
        az-Latn bm-Latn bn-IN bo bo-IN bs-Latn ca-AD ca-ES-u-va-valencia ca-FR
        ca-IT da-GL de-BE de-LU ee-TG el-CY en-001 en-AG en-AI en-AS en-AU en-BB
        en-BM en-BS en-BW en-BZ en-CA en-CC en-CK en-CM en-CX en-DG en-DM en-ER
        en-FJ en-FK en-FM en-GB en-GD en-GG en-GH en-GI en-GM en-GU en-GY en-HK
        en-IE en-IM en-IO en-JE en-JM en-KE en-KI en-KN en-KY en-LC en-LR en-LS
        en-MG en-MH en-MO en-MP en-MS en-MT en-MU en-MW en-MY en-NA en-NF en-NG
        en-NR en-NU en-NZ en-PG en-PH en-PK en-PN en-PR en-PW en-RW en-SB en-SC
        en-SD en-SG en-SH en-SL en-SS en-SX en-SZ en-TC en-TK en-TO en-TT en-TV
        en-TZ en-UG en-UM en-VC en-VG en-VI en-VU en-WS en-ZM en-ZW es-CU es-DO
        es-EA es-GT es-HN es-IC es-NI es-PA es-PE es-PH es-PR es-SV es-US fa-AF
        ff-CM ff-GN ff-MR fr-BF fr-BI fr-BJ fr-BL fr-CA fr-CD fr-CF fr-CG fr-CI
        fr-CM fr-DJ fr-DZ fr-GA fr-GF fr-GN fr-GP fr-GQ fr-HT fr-KM fr-MA fr-MC
        fr-MF fr-MG fr-ML fr-MQ fr-MR fr-MU fr-NC fr-NE fr-PF fr-PM fr-RE fr-RW
        fr-SC fr-SN fr-SY fr-TD fr-TG fr-TN fr-VU fr-WF fr-YT gsw-FR gsw-LI ha
        ha-Latn ha-Latn-GH ha-Latn-NE hr-BA ii it-SM kk-Cyrl ko-KP ks-Arab
        ky-Cyrl lag lkt ln-AO ln-CF ln-CG mas-TZ mgo mn-Cyrl ms-Latn ms-Latn-SG
        nb-SJ ne-IN nl-AW nl-BQ nl-CW nl-SR nl-SX om-KE os-RU pa-Guru pt-AO
        pt-CV pt-GW pt-MO pt-MZ pt-ST pt-TL qu-EC ro-MD ru-BY ru-KG ru-KZ ru-MD
        ru-UA sah se-FI se-SE shi-Tfng so-DJ so-ET so-KE sq-MK sq-XK sr-Cyrl
        sr-Cyrl-BA sr-Cyrl-ME sr-Cyrl-XK sr-Latn-BA sr-Latn-ME sr-Latn-XK sv-AX
        sv-FI sw-KE sw-UG ta-LK teo-KE ti-ER tr-CY tzm-Latn ug-Arab uz-Latn
        vai-Vaii yi yo-BJ zh-Hans zh-Hant-HK zh-Hant-MO
    )
};

our $PARENT = {
    'az-Cyrl' => 'root',
    'bm-Nkoo' => 'root',
    'bs-Cyrl' => 'root',
    'en-Dsrt' => 'root',
    'en-Shaw' => 'root',
    'ha-Arab' => 'root',
    'iu-Latn' => 'root',
    'mn-Mong' => 'root',
    'ms-Arab' => 'root',
    'pa-Arab' => 'root',
    'shi-Latn' => 'root',
    'sr-Latn' => 'root',
    'uz-Arab' => 'root',
    'uz-Cyrl' => 'root',
    'vai-Latn' => 'root',
    'zh-Hant' => 'root',
    'en-150' => 'en-001',
    'en-AG' => 'en-001',
    'en-AI' => 'en-001',
    'en-AU' => 'en-001',
    'en-BB' => 'en-001',
    'en-BE' => 'en-001',
    'en-BM' => 'en-001',
    'en-BS' => 'en-001',
    'en-BW' => 'en-001',
    'en-BZ' => 'en-001',
    'en-CA' => 'en-001',
    'en-CC' => 'en-001',
    'en-CK' => 'en-001',
    'en-CM' => 'en-001',
    'en-CX' => 'en-001',
    'en-DG' => 'en-001',
    'en-DM' => 'en-001',
    'en-ER' => 'en-001',
    'en-FJ' => 'en-001',
    'en-FK' => 'en-001',
    'en-FM' => 'en-001',
    'en-GB' => 'en-001',
    'en-GD' => 'en-001',
    'en-GG' => 'en-001',
    'en-GH' => 'en-001',
    'en-GI' => 'en-001',
    'en-GM' => 'en-001',
    'en-GY' => 'en-001',
    'en-HK' => 'en-001',
    'en-IE' => 'en-001',
    'en-IM' => 'en-001',
    'en-IN' => 'en-001',
    'en-IO' => 'en-001',
    'en-JE' => 'en-001',
    'en-JM' => 'en-001',
    'en-KE' => 'en-001',
    'en-KI' => 'en-001',
    'en-KN' => 'en-001',
    'en-KY' => 'en-001',
    'en-LC' => 'en-001',
    'en-LR' => 'en-001',
    'en-LS' => 'en-001',
    'en-MG' => 'en-001',
    'en-MO' => 'en-001',
    'en-MS' => 'en-001',
    'en-MT' => 'en-001',
    'en-MU' => 'en-001',
    'en-MW' => 'en-001',
    'en-MY' => 'en-001',
    'en-NA' => 'en-001',
    'en-NF' => 'en-001',
    'en-NG' => 'en-001',
    'en-NR' => 'en-001',
    'en-NU' => 'en-001',
    'en-NZ' => 'en-001',
    'en-PG' => 'en-001',
    'en-PH' => 'en-001',
    'en-PK' => 'en-001',
    'en-PN' => 'en-001',
    'en-PW' => 'en-001',
    'en-RW' => 'en-001',
    'en-SB' => 'en-001',
    'en-SC' => 'en-001',
    'en-SD' => 'en-001',
    'en-SG' => 'en-001',
    'en-SH' => 'en-001',
    'en-SL' => 'en-001',
    'en-SS' => 'en-001',
    'en-SX' => 'en-001',
    'en-SZ' => 'en-001',
    'en-TC' => 'en-001',
    'en-TK' => 'en-001',
    'en-TO' => 'en-001',
    'en-TT' => 'en-001',
    'en-TV' => 'en-001',
    'en-TZ' => 'en-001',
    'en-UG' => 'en-001',
    'en-VC' => 'en-001',
    'en-VG' => 'en-001',
    'en-VU' => 'en-001',
    'en-WS' => 'en-001',
    'en-ZA' => 'en-001',
    'en-ZM' => 'en-001',
    'en-ZW' => 'en-001',
    'es-AR' => 'es-419',
    'es-BO' => 'es-419',
    'es-CL' => 'es-419',
    'es-CO' => 'es-419',
    'es-CR' => 'es-419',
    'es-CU' => 'es-419',
    'es-DO' => 'es-419',
    'es-EC' => 'es-419',
    'es-GT' => 'es-419',
    'es-HN' => 'es-419',
    'es-MX' => 'es-419',
    'es-NI' => 'es-419',
    'es-PA' => 'es-419',
    'es-PE' => 'es-419',
    'es-PR' => 'es-419',
    'es-PY' => 'es-419',
    'es-SV' => 'es-419',
    'es-US' => 'es-419',
    'es-UY' => 'es-419',
    'es-VE' => 'es-419',
    'pt-AO' => 'pt-PT',
    'pt-CV' => 'pt-PT',
    'pt-GW' => 'pt-PT',
    'pt-MO' => 'pt-PT',
    'pt-MZ' => 'pt-PT',
    'pt-ST' => 'pt-PT',
    'pt-TL' => 'pt-PT',
    'zh-Hant-MO' => 'zh-Hant-HK',
};

our $CACHE = {
    pattern => {
        '#0%'                         => [ '#0',          "$N$P"             ],
        '#,##0%'                      => [ '#,##0',       "$N$P"             ],
        '#,##0 %'                     => [ '#,##0',       "$N $P"            ],
        '#,##,##0%'                   => [ '#,##,##0',    "$N$P"             ],
        '#,##,##0 %'                  => [ '#,##,##0',    "$N $P"            ],
        '%#,##0'                      => [ '#,##0',       "$P$N"             ],
        '% #,##0'                     => [ '#,##0',       "$P $N"            ],
        '#0.00 ¤'                     => [ '#0.00',       "$N $C"            ],
        '#,##0.00¤'                   => [ '#,##0.00',    "$N$C"             ],
        '#,##0.00 ¤'                  => [ '#,##0.00',    "$N $C"            ],
        '#,##,##0.00¤'                => [ '#,##,##0.00', "$N$C"             ],
        '#,##,##0.00¤;(#,##,##0.00¤)' => [ '#,##,##0.00', "$N$C",  "($N$C)"  ],
        '¤#0.00'                      => [ '#0.00',       "$C$N"             ],
        '¤#,##0.00'                   => [ '#,##0.00',    "$C$N"             ],
        '¤#,##0.00;¤-#,##0.00'        => [ '#,##0.00',    "$C$N",  "$C$M$N"  ],
        '¤#,##0.00;¤- #,##0.00'       => [ '#,##0.00',    "$C$N",  "$C$M $N" ],
        '¤#,##0.00;(¤#,##0.00)'       => [ '#,##0.00',    "$C$N",  "($C$N)"  ],
        '¤#,##,##0.00'                => [ '#,##,##0.00', "$C$N"             ],
        '¤ #0.00'                     => [ '#0.00',       "$C $N"            ],
        '¤ #,##0.00'                  => [ '#,##0.00',    "$C $N"            ],
        '¤ #,##0.00;¤-#,##0.00'       => [ '#,##0.00',    "$C $N", "$C$M$N"  ],
        '¤ #,##0.00;¤ -#,##0.00'      => [ '#,##0.00',    "$C $N", "$C $M$N" ],
        '¤ #,##0.00;¤ #,##0.00-'      => [ '#,##0.00',    "$C $N", "$C $N$M" ],
        '¤ #,##,##0.00'               => [ '#,##,##0.00', "$C $N"            ],
        "\N{LEFT-TO-RIGHT EMBEDDING}#,##0%\N{POP DIRECTIONAL FORMATTING}" => [
            '#,##0',
            "\N{LEFT-TO-RIGHT EMBEDDING}$N$P\N{POP DIRECTIONAL FORMATTING}"
        ],
        "¤#,##0.00\N{LEFT-TO-RIGHT MARK}" => [
            '#,##0.00',
            "$C$N\N{LEFT-TO-RIGHT MARK}"
        ],
        "\N{LEFT-TO-RIGHT MARK}¤#,##0.00" => [
            '#,##0.00',
            "\N{LEFT-TO-RIGHT MARK}$C$N"
        ],
    },
    attribute => {
        '#0' => {
            minimum_integer_digits  => 1,
            minimum_fraction_digits => 0,
            maximum_fraction_digits => 0,
            primary_grouping_size   => 0,
            secondary_grouping_size => 0,
            rounding_increment      => 0,
        },
        '#0.00' => {
            minimum_integer_digits  => 1,
            minimum_fraction_digits => 2,
            maximum_fraction_digits => 2,
            primary_grouping_size   => 0,
            secondary_grouping_size => 0,
            rounding_increment      => 0,
        },
        '#0.###' => {
            minimum_integer_digits  => 1,
            minimum_fraction_digits => 0,
            maximum_fraction_digits => 3,
            primary_grouping_size   => 0,
            secondary_grouping_size => 0,
            rounding_increment      => 0,
        },
        '#0.######' => {
            minimum_integer_digits  => 1,
            minimum_fraction_digits => 0,
            maximum_fraction_digits => 6,
            primary_grouping_size   => 0,
            secondary_grouping_size => 0,
            rounding_increment      => 0,
        },
        '#,##0' => {
            minimum_integer_digits  => 1,
            minimum_fraction_digits => 0,
            maximum_fraction_digits => 0,
            primary_grouping_size   => 3,
            secondary_grouping_size => 0,
            rounding_increment      => 0,
        },
        '#,##0.00' => {
            minimum_integer_digits  => 1,
            minimum_fraction_digits => 2,
            maximum_fraction_digits => 2,
            primary_grouping_size   => 3,
            secondary_grouping_size => 0,
            rounding_increment      => 0,
        },
        '#,##0.###' => {
            minimum_integer_digits  => 1,
            minimum_fraction_digits => 0,
            maximum_fraction_digits => 3,
            primary_grouping_size   => 3,
            secondary_grouping_size => 0,
            rounding_increment      => 0,
        },
        '#,##,##0' => {
            minimum_integer_digits  => 1,
            minimum_fraction_digits => 0,
            maximum_fraction_digits => 0,
            primary_grouping_size   => 3,
            secondary_grouping_size => 2,
            rounding_increment      => 0,
        },
        '#,##,##0.00' => {
            minimum_integer_digits  => 1,
            minimum_fraction_digits => 2,
            maximum_fraction_digits => 2,
            primary_grouping_size   => 3,
            secondary_grouping_size => 2,
            rounding_increment      => 0,
        },
        '#,##,##0.###' => {
            minimum_integer_digits  => 1,
            minimum_fraction_digits => 0,
            maximum_fraction_digits => 3,
            primary_grouping_size   => 3,
            secondary_grouping_size => 2,
            rounding_increment      => 0,
        },
    },
};

1;
