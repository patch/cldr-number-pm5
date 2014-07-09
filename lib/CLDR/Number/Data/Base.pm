package CLDR::Number::Data::Base;

use v5.8.1;
use utf8;
use strict;
use warnings;
use charnames qw( :full );
use CLDR::Number::Constant qw( $𝖓 $𝖒 $𝖕 $𝖈 );

# This module does not have a publicly supported interface and may change in
# backward incompatible ways in the future. Please use one of the documented
# classes instead.

our $VERSION = '0.08_1';

our $DATA = {
    root => {
        pattern => {
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
            permil => '‰',
            percent => '%',
            plus => '+',
        },
        system => {
            default => 'latn',
        },
    },
    aa => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    af => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    'af-NA' => {
        pattern => {
            currency => '¤ #,##0.00',
        },
    },
    agq => {
        pattern => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    ak => {
        pattern => {
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    am => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
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
    },
    ar => {
        pattern => {
            at_least => '+{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => '٫',
            group => '٬',
            infinity => '∞',
            minus => "\N{RIGHT-TO-LEFT MARK}-",
            nan => 'ﻞﻴﺳ ﺮﻘﻣ',
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
        },
        system => {
            default => 'latn',
        },
    },
    'ar-EG' => {
        symbol => {
            nan => 'NaN',
        },
    },
    'ar-EH' => {
        system => {
            default => 'latn',
        },
    },
    'ar-LB' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'ar-LY' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
        system => {
            default => 'latn',
        },
    },
    'ar-MA' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
        system => {
            default => 'latn',
        },
    },
    'ar-MR' => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'ar-QA' => {
        pattern => {
            currency => '¤#0.00',
        },
    },
    'ar-SA' => {
        pattern => {
            currency => '¤#0.00',
        },
    },
    'ar-SY' => {
        pattern => {
            currency => '¤#0.00',
        },
    },
    'ar-TN' => {
        pattern => {
            currency => '¤#0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
        system => {
            default => 'latn',
        },
    },
    'ar-YE' => {
        pattern => {
            currency => '¤#0.00',
        },
    },
    as => {
        pattern => {
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
            currency => '#,##0.00 ¤',
        },
    },
    ast => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    az => {
        pattern => {
            at_least => '{0}+',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    'az-Cyrl' => {
        pattern => {
            currency => '¤ #,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    bas => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    be => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    bem => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    bez => {
        pattern => {
            currency => '#,##0.00¤',
        },
    },
    bg => {
        pattern => {
            at_least => '⩾ {0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0} – {1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    bm => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    bn => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##,##0.00¤;(#,##,##0.00¤)',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => '-',
            nan => 'সংখ্যা না',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
        system => {
            default => 'beng',
        },
    },
    bo => {
        pattern => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => '.',
            group => ',',
            nan => 'NaN',
        },
    },
    br => {
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    brx => {
        pattern => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
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
    },
    bs => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    'bs-Cyrl' => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    byn => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    ca => {
        pattern => {
            at_least => '≥ {0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    cgg => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    chr => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
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
    },
    cs => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    cy => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
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
    },
    da => {
        pattern => {
            at_least => '{0} eller derover',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    dav => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    de => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
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
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => '.',
            group => ' ',
        },
    },
    dua => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    dyo => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    dz => {
        pattern => {
            currency => '¤#,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0 %',
        },
        symbol => {
            decimal => '.',
            group => ',',
            infinity => 'གྲངས་མེད',
            minus => '-',
            nan => 'ཨང་མད',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
        system => {
            default => 'tibt',
        },
    },
    ebu => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    ee => {
        pattern => {
            currency => '¤#,##0.00',
        },
        symbol => {
            nan => 'mnn',
        },
    },
    el => {
        pattern => {
            at_least => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    'el-CY' => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    en => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
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
    'en-AU' => {
        pattern => {
            currency => '¤#,##0.00',
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
    'en-GB' => {
        pattern => {
            range => '{0}–{1}',
        },
    },
    'en-IN' => {
        pattern => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    'en-PK' => {
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
            at_least => 'Más de {0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    'es-419' => {
        pattern => {
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
            at_least => 'Más de {0}',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
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
            at_least => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}‒{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    eu => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '% #,##0',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    ewo => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    fa => {
        pattern => {
            at_least => "{0}+\N{LEFT-TO-RIGHT MARK}",
            currency => "\N{LEFT-TO-RIGHT MARK}¤#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => '٫',
            group => '٬',
            infinity => '∞',
            minus => "\N{LEFT-TO-RIGHT MARK}−",
            nan => 'ﻥﺎﻋﺩﺩ',
            percent => '٪',
            permil => '؉',
            plus => "\N{LEFT-TO-RIGHT MARK}+\N{LEFT-TO-RIGHT MARK}",
        },
        system => {
            default => 'arabext',
        },
    },
    'fa-AF' => {
        pattern => {
            percent => "\N{LEFT-TO-RIGHT EMBEDDING}#,##0%\N{POP DIRECTIONAL FORMATTING}",
        },
    },
    ff => {
        pattern => {
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    fi => {
        pattern => {
            at_least => 'vähintään {0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '−',
            nan => 'epäluku',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    fil => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
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
    },
    fo => {
        pattern => {
            currency => '¤#,##0.00;¤-#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '−',
            nan => '¤¤¤',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    fr => {
        pattern => {
            at_least => 'au moins {0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => 'de {0} à {1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
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
            group => q['],
        },
    },
    'fr-LU' => {
        symbol => {
            group => '.',
        },
    },
    fur => {
        pattern => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    ga => {
        pattern => {
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    gd => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
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
    },
    gl => {
        pattern => {
            at_least => '⩾{0}',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    gsw => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => '.',
            group => '’',
            infinity => '∞',
            minus => '−',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    gu => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}-{1}',
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
    },
    guz => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    gv => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    ha => {
        pattern => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    haw => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    he => {
        pattern => {
            at_least => '⩾{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
    },
    hi => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
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
    },
    hr => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    hu => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    hy => {
        pattern => {
            at_least => '{0}+',
            currency => '#0.00 ¤',
            decimal => '#0.###',
            percent => '#0%',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    ia => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    id => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    ig => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    ii => {
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    is => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    it => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
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
            at_least => '{0} 以上',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}～{1}',
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
    },
    jgo => {
        pattern => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    jmc => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    ka => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'არ არის რიცხვი',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    kab => {
        pattern => {
            currency => '#,##0.00¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    kam => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    kde => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    kea => {
        pattern => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    khq => {
        pattern => {
            currency => '#,##0.00¤',
        },
        symbol => {
            group => ' ',
        },
    },
    ki => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    kk => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
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
            currency => '¤#,##0.00;¤-#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '−',
            nan => '¤¤¤',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    kln => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    km => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    kn => {
        pattern => {
            at_least => '⩾{0}',
            currency => '¤#,##0.00',
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
    },
    ko => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00;(¤#,##0.00)',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
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
    },
    kok => {
        pattern => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    ks => {
        pattern => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
        symbol => {
            decimal => '.',
            group => ',',
            infinity => '?',
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
        system => {
            default => 'arabext',
        },
    },
    ksb => {
        pattern => {
            currency => '#,##0.00¤',
        },
    },
    ksf => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    ksh => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '−',
            nan => '¤¤¤',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    kw => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    ky => {
        pattern => {
            at_least => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'сан эмес',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    lg => {
        pattern => {
            currency => '#,##0.00¤',
        },
    },
    lkt => {
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
    },
    ln => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    lo => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00;¤-#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'ບໍ່ແມ່ນໂຕເລກ',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    lt => {
        pattern => {
            at_least => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '−',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    lu => {
        pattern => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    luo => {
        pattern => {
            currency => '#,##0.00¤',
        },
    },
    luy => {
        pattern => {
            currency => '¤#,##0.00;¤- #,##0.00',
        },
    },
    lv => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00;(¤#,##0.00)',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}‒{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'nav skaitlis',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    mas => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    mer => {
        pattern => {
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
            currency => '¤#,##0.00',
        },
    },
    mgh => {
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    mgo => {
        pattern => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
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
    },
    mk => {
        pattern => {
            at_least => '{0}+',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    ml => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##,##0.00¤',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}-{1}',
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
    },
    mn => {
        pattern => {
            at_least => '{0}-с багагүй',
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
    },
    mr => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
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
            default => 'deva',
        },
    },
    ms => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
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
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    mua => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    my => {
        pattern => {
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
            nan => 'ဂဏန်းမဟုတ်သော',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
        system => {
            default => 'mymr',
        },
    },
    naq => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    nb => {
        pattern => {
            at_least => '⩾{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '−',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    nd => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    ne => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
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
            default => 'deva',
        },
    },
    nl => {
        pattern => {
            at_least => '{0}+',
            currency => '¤ #,##0.00;¤ #,##0.00-',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    'nl-BE' => {
        pattern => {
            currency => '#,##0.00 ¤',
        },
    },
    nmg => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    nn => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '−',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    nnh => {
        symbol => {
            decimal => ',',
            group => '.',
            percent => '%',
        },
    },
    nr => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    nso => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    nus => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    nyn => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    om => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    or => {
        pattern => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    os => {
        pattern => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'НН',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    pa => {
        pattern => {
            at_least => '{0}+',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
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
    },
    'pa-Arab' => {
        symbol => {
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
        system => {
            default => 'arabext',
        },
    },
    pl => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    ps => {
        pattern => {
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => '٫',
            group => '٬',
            minus => "\N{LEFT-TO-RIGHT MARK}−",
            percent => '٪',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
        system => {
            default => 'arabext',
        },
    },
    pt => {
        pattern => {
            at_least => '+{0}',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    'pt-PT' => {
        pattern => {
            at_least => '+{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0} - {1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    rm => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => '.',
            group => '’',
            infinity => '∞',
            minus => '−',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    rn => {
        pattern => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ro => {
        pattern => {
            at_least => '>{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0} - {1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    rof => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    ru => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'не число',
            percent => '%',
            permil => '‰',
            plus => '+',
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
            currency => '#,##0.00¤',
        },
    },
    saq => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    sbp => {
        pattern => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    se => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '−',
            nan => '¤¤¤',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    seh => {
        pattern => {
            currency => '#,##0.00¤',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ses => {
        pattern => {
            currency => '#,##0.00¤',
        },
        symbol => {
            group => ' ',
        },
    },
    sg => {
        pattern => {
            currency => '¤#,##0.00;¤-#,##0.00',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    shi => {
        pattern => {
            currency => '#,##0.00¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    'shi-Latn' => {
        pattern => {
            currency => '#,##0.00¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    si => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
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
    },
    sk => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    sl => {
        pattern => {
            at_least => '⩾{0}',
            currency => '¤#,##0.00;(¤#,##0.00)',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    sn => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    so => {
        pattern => {
            currency => '¤#,##0.00',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    sq => {
        pattern => {
            at_least => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    sr => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    'sr-Latn' => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    ss => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    ssy => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    st => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    sv => {
        pattern => {
            at_least => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbol => {
            currency_decimal => ':',
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '−',
            nan => '¤¤¤',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    sw => {
        pattern => {
            at_least => '⩾{0}',
            currency => '¤#,##0.00',
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
    },
    swc => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
        },
        symbol => {
            decimal => ',',
            group => '.',
        },
    },
    ta => {
        pattern => {
            at_least => '{0}+',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
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
            at_least => '{0}+',
            currency => '¤#,##0.00',
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
    },
    teo => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    th => {
        pattern => {
            at_least => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
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
    },
    ti => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    tig => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    tn => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    to => {
        pattern => {
            at_least => '{0}+',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}—{1}',
        },
        symbol => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => '-',
            nan => 'TF',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    tr => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '%#,##0',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    ts => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    twq => {
        pattern => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => '.',
            group => ' ',
        },
    },
    tzm => {
        pattern => {
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    uk => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'Не число',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    ur => {
        pattern => {
            at_least => '⩾{0}',
            currency => "¤#,##0.00\N{LEFT-TO-RIGHT MARK}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
    },
    'ur-IN' => {
        pattern => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
        system => {
            default => 'arabext',
        },
    },
    uz => {
        pattern => {
            at_least => '⩾{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    'uz-Arab' => {
        pattern => {
            currency => '#,##0.00 ¤',
        },
        symbol => {
            decimal => '٫',
            group => '٬',
            minus => "\N{LEFT-TO-RIGHT MARK}−",
            percent => '٪',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
        system => {
            default => 'arabext',
        },
    },
    'uz-Cyrl' => {
        pattern => {
            at_least => '⩾{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbol => {
            decimal => ',',
            group => ' ',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    vai => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
    },
    'vai-Latn' => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
        },
        symbol => {
            decimal => '.',
            group => ',',
        },
        system => {
            default => 'latn',
        },
    },
    ve => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    vi => {
        pattern => {
            at_least => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => ',',
            group => '.',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    vun => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    wae => {
        symbol => {
            decimal => ',',
            group => '’',
        },
    },
    wal => {
        pattern => {
            currency => '¤#,##0.00',
        },
        symbol => {
            group => '’',
        },
    },
    xh => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    xog => {
        pattern => {
            currency => '#,##0.00 ¤',
        },
    },
    yav => {
        pattern => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => ',',
            group => ' ',
        },
    },
    yo => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    'yo-BJ' => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    zgh => {
        pattern => {
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
            at_least => '{0}+',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
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
            at_least => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbol => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => '-',
            nan => '非數值',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
        system => {
            default => 'latn',
        },
    },
    'zh-Hant-HK' => {
        pattern => {
            currency => '¤#,##0.00',
        },
    },
    zu => {
        pattern => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbol => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => '-',
            nan => 'I-NaN',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    map { $_ => undef } qw(
        aa-DJ aa-ER aa-ET af-ZA agq-CM ak-GH am-ET ar-001 ar-AE ar-BH ar-DJ
        ar-ER ar-IL ar-IQ ar-JO ar-KM ar-KW ar-OM ar-PS ar-SD ar-SO ar-SS ar-TD
        as-IN asa-TZ ast-ES az-Cyrl-AZ az-Latn az-Latn-AZ bas-CM be-BY bem-ZM
        bez-TZ bg-BG bm-ML bn-BD bn-IN bo-CN bo-IN br-FR brx-IN bs-Cyrl-BA
        bs-Latn bs-Latn-BA byn-ER ca-AD ca-ES ca-FR ca-IT cgg-UG chr-US cs-CZ
        cy-GB da-DK da-GL dav-KE de-BE de-DE de-LU dje-NE dua-CM dyo-SN dz-BT
        ebu-KE ee-GH ee-TG el-GR en-001 en-AG en-AI en-AS en-BB en-BM en-BS
        en-BW en-BZ en-CA en-CC en-CK en-CM en-CX en-DG en-DM en-Dsrt en-Dsrt-US
        en-ER en-FJ en-FK en-FM en-GD en-GG en-GH en-GI en-GM en-GU en-GY en-HK
        en-IE en-IM en-IO en-JE en-JM en-KE en-KI en-KN en-KY en-LC en-LR en-LS
        en-MG en-MH en-MO en-MP en-MS en-MT en-MU en-MW en-NA en-NF en-NG en-NR
        en-NU en-NZ en-PG en-PH en-PN en-PR en-PW en-RW en-SB en-SC en-SD en-SG
        en-SH en-SL en-SS en-SX en-SZ en-TC en-TK en-TO en-TT en-TV en-TZ en-UG
        en-UM en-US en-VC en-VG en-VI en-VU en-WS en-ZM en-ZW eo-001 es-CU es-DO
        es-EA es-ES es-GT es-HN es-IC es-NI es-PA es-PE es-PH es-PR es-SV es-US
        et-EE eu-ES ewo-CM fa-IR ff-SN fi-FI fil-PH fo-FO fr-BF fr-BI fr-BJ
        fr-BL fr-CA fr-CD fr-CF fr-CG fr-CI fr-CM fr-DJ fr-DZ fr-FR fr-GA fr-GF
        fr-GN fr-GP fr-GQ fr-HT fr-KM fr-MA fr-MC fr-MF fr-MG fr-ML fr-MQ fr-MR
        fr-MU fr-NC fr-NE fr-PF fr-PM fr-RE fr-RW fr-SC fr-SN fr-SY fr-TD fr-TG
        fr-TN fr-VU fr-WF fr-YT fur-IT ga-IE gd-GB gl-ES gsw-CH gsw-LI gu-IN
        guz-KE gv-IM ha-Latn ha-Latn-GH ha-Latn-NE ha-Latn-NG haw-US he-IL hi-IN
        hr-BA hr-HR hu-HU hy-AM ia-FR id-ID ig-NG ii-CN is-IS it-IT it-SM ja-JP
        jgo-CM jmc-TZ ka-GE kab-DZ kam-KE kde-TZ kea-CV khq-ML ki-KE kk-Cyrl
        kk-Cyrl-KZ kkj-CM kl-GL kln-KE km-KH kn-IN ko-KP ko-KR kok-IN ks-Arab
        ks-Arab-IN ksb-TZ ksf-CM ksh-DE kw-GB ky-Cyrl ky-Cyrl-KG lag lag-TZ
        lg-UG lkt-US ln-AO ln-CD ln-CF ln-CG lo-LA lt-LT lu-CD luo-KE luy-KE
        lv-LV mas-KE mas-TZ mer-KE mfe-MU mg-MG mgh-MZ mgo-CM mk-MK ml-IN
        mn-Cyrl mn-Cyrl-MN mr-IN ms-Latn ms-Latn-MY ms-Latn-SG mt-MT mua-CM
        my-MM naq-NA nb-NO nb-SJ nd-ZW ne-IN ne-NP nl-AW nl-BQ nl-CW nl-NL nl-SR
        nl-SX nmg-CM nn-NO nnh-CM nr-ZA nso-ZA nus-SD nyn-UG om-ET om-KE or-IN
        os-GE os-RU pa-Arab-PK pa-Guru pa-Guru-IN pl-PL ps-AF pt-AO pt-BR pt-CV
        pt-GW pt-MO pt-MZ pt-ST pt-TL rm-CH rn-BI ro-MD ro-RO rof-TZ ru-BY ru-KG
        ru-KZ ru-MD ru-RU ru-UA rw-RW rwk-TZ sah sah-RU saq-KE sbp-TZ se-FI
        se-NO seh-MZ ses-ML sg-CF shi-Latn-MA shi-Tfng shi-Tfng-MA si-LK sk-SK
        sl-SI sn-ZW so-DJ so-ET so-KE so-SO sq-AL sq-MK sq-XK sr-Cyrl sr-Cyrl-BA
        sr-Cyrl-ME sr-Cyrl-RS sr-Cyrl-XK sr-Latn-BA sr-Latn-ME sr-Latn-RS
        sr-Latn-XK ss-SZ ss-ZA ssy-ER st-LS st-ZA sv-AX sv-FI sv-SE sw-KE sw-TZ
        sw-UG swc-CD ta-IN ta-LK te-IN teo-KE teo-UG tg tg-Cyrl tg-Cyrl-TJ th-TH
        ti-ER ti-ET tig-ER tn-BW tn-ZA to-TO tr-CY tr-TR ts-ZA twq-NE tzm-Latn
        tzm-Latn-MA uk-UA ur-PK uz-Arab-AF uz-Cyrl-UZ uz-Latn uz-Latn-UZ
        vai-Latn-LR vai-Vaii vai-Vaii-LR ve-ZA vi-VN vo vo-001 vun-TZ wae-CH
        wal-ET xh-ZA xog-UG yav-CM yo-NG zgh-MA zh-Hans zh-Hans-CN zh-Hant-MO
        zh-Hant-TW zu-ZA
    )
};

our $PARENT = {
    'az-Cyrl' => 'root',
    'bs-Cyrl' => 'root',
    'en-Dsrt' => 'root',
    'ha-Arab' => 'root',
    'mn-Mong' => 'root',
    'ms-Arab' => 'root',
    'pa-Arab' => 'root',
    'shi-Latn' => 'root',
    'sr-Latn' => 'root',
    'uz-Arab' => 'root',
    'uz-Cyrl' => 'root',
    'vai-Latn' => 'root',
    'zh-Hant' => 'root',
    'en-AG' => 'en-001',
    'en-AI' => 'en-001',
    'en-BB' => 'en-001',
    'en-BM' => 'en-001',
    'en-BS' => 'en-001',
    'en-BW' => 'en-001',
    'en-BZ' => 'en-001',
    'en-CC' => 'en-001',
    'en-CK' => 'en-001',
    'en-CM' => 'en-001',
    'en-CX' => 'en-001',
    'en-DM' => 'en-001',
    'en-ER' => 'en-001',
    'en-FJ' => 'en-001',
    'en-FM' => 'en-001',
    'en-GB' => 'en-001',
    'en-GD' => 'en-001',
    'en-GH' => 'en-001',
    'en-GM' => 'en-001',
    'en-GY' => 'en-001',
    'en-JM' => 'en-001',
    'en-KE' => 'en-001',
    'en-KI' => 'en-001',
    'en-KN' => 'en-001',
    'en-KY' => 'en-001',
    'en-LC' => 'en-001',
    'en-LR' => 'en-001',
    'en-LS' => 'en-001',
    'en-MG' => 'en-001',
    'en-MS' => 'en-001',
    'en-MU' => 'en-001',
    'en-MW' => 'en-001',
    'en-NA' => 'en-001',
    'en-NF' => 'en-001',
    'en-NG' => 'en-001',
    'en-NR' => 'en-001',
    'en-NU' => 'en-001',
    'en-PG' => 'en-001',
    'en-PH' => 'en-001',
    'en-PN' => 'en-001',
    'en-PW' => 'en-001',
    'en-RW' => 'en-001',
    'en-SB' => 'en-001',
    'en-SC' => 'en-001',
    'en-SD' => 'en-001',
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
    'en-VU' => 'en-001',
    'en-WS' => 'en-001',
    'en-ZA' => 'en-001',
    'en-ZM' => 'en-001',
    'en-ZW' => 'en-001',
    'en-150' => 'en-GB',
    'en-AU' => 'en-GB',
    'en-BE' => 'en-GB',
    'en-DG' => 'en-GB',
    'en-FK' => 'en-GB',
    'en-GG' => 'en-GB',
    'en-GI' => 'en-GB',
    'en-HK' => 'en-GB',
    'en-IE' => 'en-GB',
    'en-IM' => 'en-GB',
    'en-IN' => 'en-GB',
    'en-IO' => 'en-GB',
    'en-JE' => 'en-GB',
    'en-MO' => 'en-GB',
    'en-MT' => 'en-GB',
    'en-NZ' => 'en-GB',
    'en-PK' => 'en-GB',
    'en-SG' => 'en-GB',
    'en-SH' => 'en-GB',
    'en-VG' => 'en-GB',
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
        '#0%'                         => [ '#0',          "$𝖓$𝖕"             ],
        '#,##0%'                      => [ '#,##0',       "$𝖓$𝖕"             ],
        '#,##0 %'                     => [ '#,##0',       "$𝖓 $𝖕"            ],
        '#,##,##0%'                   => [ '#,##,##0',    "$𝖓$𝖕"             ],
        '#,##,##0 %'                  => [ '#,##,##0',    "$𝖓 $𝖕"            ],
        '%#,##0'                      => [ '#,##0',       "$𝖕$𝖓"             ],
        '% #,##0'                     => [ '#,##0',       "$𝖕 $𝖓"            ],
        '#0.00 ¤'                     => [ '#0.00',       "$𝖓 $𝖈"            ],
        '#,##0.00¤'                   => [ '#,##0.00',    "$𝖓$𝖈"             ],
        '#,##0.00 ¤'                  => [ '#,##0.00',    "$𝖓 $𝖈"            ],
        '#,##,##0.00¤'                => [ '#,##,##0.00', "$𝖓$𝖈"             ],
        '#,##,##0.00¤;(#,##,##0.00¤)' => [ '#,##,##0.00', "$𝖓$𝖈",  "($𝖓$𝖈)"  ],
        '¤#0.00'                      => [ '#0.00',       "$𝖈$𝖓"             ],
        '¤#,##0.00'                   => [ '#,##0.00',    "$𝖈$𝖓"             ],
        '¤#,##0.00;¤-#,##0.00'        => [ '#,##0.00',    "$𝖈$𝖓",  "$𝖈$𝖒$𝖓"  ],
        '¤#,##0.00;¤- #,##0.00'       => [ '#,##0.00',    "$𝖈$𝖓",  "$𝖈$𝖒 $𝖓" ],
        '¤#,##0.00;(¤#,##0.00)'       => [ '#,##0.00',    "$𝖈$𝖓",  "($𝖈$𝖓)"  ],
        '¤#,##,##0.00'                => [ '#,##,##0.00', "$𝖈$𝖓"             ],
        '¤ #0.00'                     => [ '#0.00',       "$𝖈 $𝖓"            ],
        '¤ #,##0.00'                  => [ '#,##0.00',    "$𝖈 $𝖓"            ],
        '¤ #,##0.00;¤-#,##0.00'       => [ '#,##0.00',    "$𝖈 $𝖓", "$𝖈$𝖒$𝖓"  ],
        '¤ #,##0.00;¤ -#,##0.00'      => [ '#,##0.00',    "$𝖈 $𝖓", "$𝖈 $𝖒$𝖓" ],
        '¤ #,##0.00;¤ #,##0.00-'      => [ '#,##0.00',    "$𝖈 $𝖓", "$𝖈 $𝖓$𝖒" ],
        '¤ #,##,##0.00'               => [ '#,##,##0.00', "$𝖈 $𝖓"            ],
        "\N{LEFT-TO-RIGHT EMBEDDING}#,##0%\N{POP DIRECTIONAL FORMATTING}" => [
            '#,##0',
            "\N{LEFT-TO-RIGHT EMBEDDING}$𝖓$𝖕\N{POP DIRECTIONAL FORMATTING}"
        ],
        "¤#,##0.00\N{LEFT-TO-RIGHT MARK}" => [
            '#,##0.00',
            "$𝖈$𝖓\N{LEFT-TO-RIGHT MARK}"
        ],
        "\N{LEFT-TO-RIGHT MARK}¤#,##0.00" => [
            '#,##0.00',
            "\N{LEFT-TO-RIGHT MARK}$𝖈$𝖓"
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
