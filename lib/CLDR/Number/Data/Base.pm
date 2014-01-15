package CLDR::Number::Data::Base;

use utf8;
use strict;
use warnings;
use charnames qw( :full );

# This module does not have a publicly supported interface and may change in
# backward incompatible ways in the future. Please use one of the documented
# classes instead.

our $VERSION = '0.03';

our $DATA = {
    root => {
        patterns => {
            atleast => '⩾{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => '-',
            nan => 'NaN',
            permil => '‰',
            percent => '%',
            plus => '+',
        },
    },
    aa => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    af => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤ #,##0.00',
        },
    },
    agq => {
        patterns => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    ak => {
        patterns => {
            currency => '¤#,##0.00',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    am => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '+{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
    'ar-DZ' => {
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'ar-EG' => {
        symbols => {
            nan => 'NaN',
        },
    },
    'ar-LB' => {
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'ar-LY' => {
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'ar-MA' => {
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'ar-MR' => {
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'ar-QA' => {
        patterns => {
            currency => '¤#0.00',
        },
    },
    'ar-SA' => {
        patterns => {
            currency => '¤#0.00',
        },
    },
    'ar-SY' => {
        patterns => {
            currency => '¤#0.00',
        },
    },
    'ar-TN' => {
        patterns => {
            currency => '¤#0.00',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'ar-YE' => {
        patterns => {
            currency => '¤#0.00',
        },
    },
    as => {
        patterns => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    asa => {
        patterns => {
            currency => '#,##0.00 ¤',
        },
    },
    ast => {
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤ #,##0.00',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    be => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    bem => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    bez => {
        patterns => {
            currency => '#,##0.00¤',
        },
    },
    bg => {
        patterns => {
            atleast => '⩾ {0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0} – {1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    bn => {
        patterns => {
            atleast => '{0}+',
            currency => '#,##,##0.00¤;(#,##,##0.00¤)',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
    bo => {
        patterns => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => '.',
            group => ',',
            nan => 'NaN',
        },
    },
    br => {
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    brx => {
        patterns => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
        symbols => {
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
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'bs-Cyrl' => {
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    ca => {
        patterns => {
            atleast => '≥ {0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    chr => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0} eller derover',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    de => {
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤ #,##0.00',
        },
    },
    'de-CH' => {
        patterns => {
            currency => '¤ #,##0.00;¤-#,##0.00',
        },
        symbols => {
            decimal => '.',
            group => q['],
        },
    },
    'de-LI' => {
        patterns => {
            currency => '¤ #,##0.00',
        },
        symbols => {
            decimal => '.',
            group => q['],
        },
    },
    dje => {
        patterns => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => '.',
            group => ' ',
        },
    },
    dua => {
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    dyo => {
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    dz => {
        patterns => {
            currency => '¤#,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0 %',
        },
        symbols => {
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
    ebu => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    ee => {
        patterns => {
            currency => '¤#,##0.00',
        },
        symbols => {
            nan => 'mnn',
        },
    },
    el => {
        patterns => {
            atleast => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    en => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00 ¤',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'en-AU' => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    'en-BE' => {
        patterns => {
            currency => '#,##0.00 ¤',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'en-GB' => {
        patterns => {
            range => '{0}–{1}',
        },
    },
    'en-IN' => {
        patterns => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    'en-PK' => {
        patterns => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    'en-US-u-va-posix' => {
        patterns => {
            currency => '¤ #0.00',
            decimal => '#0.######',
            percent => '#0%',
        },
        symbols => {
            infinity => 'INF',
            permil => '0/00',
        },
    },
    'en-ZA' => {
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    eo => {
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    es => {
        patterns => {
            atleast => 'Más de {0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    'es-AR' => {
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'es-BO' => {
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'es-CL' => {
        patterns => {
            currency => '¤#,##0.00;¤-#,##0.00',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'es-CO' => {
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'es-CR' => {
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'es-EC' => {
        patterns => {
            currency => '¤#,##0.00;¤-#,##0.00',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'es-GQ' => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    'es-MX' => {
        patterns => {
            atleast => 'Más de {0}',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤ #,##0.00;¤ -#,##0.00',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'es-UY' => {
        patterns => {
            currency => '¤ #,##0.00',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    'es-VE' => {
        patterns => {
            currency => '¤#,##0.00;¤-#,##0.00',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    et => {
        patterns => {
            atleast => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}‒{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '% #,##0',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    fa => {
        patterns => {
            atleast => "{0}+\N{LEFT-TO-RIGHT MARK}",
            currency => "\N{LEFT-TO-RIGHT MARK}¤#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => "\N{LEFT-TO-RIGHT MARK}−",
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
    },
    'fa-AF' => {
        patterns => {
            percent => "\N{LEFT-TO-RIGHT EMBEDDING}#,##0%\N{POP DIRECTIONAL FORMATTING}",
        },
    },
    ff => {
        patterns => {
            currency => '#,##0.00 ¤',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    fi => {
        patterns => {
            atleast => 'vähintään {0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00;¤-#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbols => {
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
        patterns => {
            atleast => 'au moins {0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => 'de {0} à {1}',
        },
        symbols => {
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
        symbols => {
            group => '.',
        },
    },
    'fr-CH' => {
        patterns => {
            currency => '¤ #,##0.00;¤-#,##0.00',
        },
        symbols => {
            decimal => '.',
            group => q['],
        },
    },
    'fr-LU' => {
        symbols => {
            group => '.',
        },
    },
    fur => {
        patterns => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    gd => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        patterns => {
            atleast => '⩾{0}',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    gv => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    ha => {
        patterns => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    haw => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    he => {
        patterns => {
            atleast => '⩾{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#0.00 ¤',
            decimal => '#0.###',
            percent => '#0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    id => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    ii => {
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    is => {
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤ #,##0.00;¤-#,##0.00',
        },
        symbols => {
            decimal => '.',
            group => q['],
        },
    },
    ja => {
        patterns => {
            atleast => '{0} 以上',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}～{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    ka => {
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00¤',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    kam => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    kde => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    kea => {
        patterns => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00¤',
        },
        symbols => {
            group => ' ',
        },
    },
    ki => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    kk => {
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    kl => {
        patterns => {
            currency => '¤#,##0.00;¤-#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    km => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '⩾{0}',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00;(¤#,##0.00)',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    ks => {
        patterns => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => '?',
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            nan => 'NaN',
            percent => '%',
            permil => '‰',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
    },
    ksb => {
        patterns => {
            currency => '#,##0.00¤',
        },
    },
    ksf => {
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    ksh => {
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    ky => {
        patterns => {
            atleast => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00¤',
        },
    },
    lkt => {
        symbols => {
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
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00;¤-#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    luo => {
        patterns => {
            currency => '#,##0.00¤',
        },
    },
    luy => {
        patterns => {
            currency => '¤#,##0.00;¤- #,##0.00',
        },
    },
    lv => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00;(¤#,##0.00)',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}‒{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    mer => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    mfe => {
        symbols => {
            group => ' ',
        },
    },
    mg => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    mgh => {
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    mgo => {
        patterns => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#,##,##0.00¤',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}-с багагүй',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
    ms => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤ #,##0.00',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    mt => {
        patterns => {
            currency => '¤#,##0.00',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    mua => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    my => {
        patterns => {
            atleast => '⩾{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => '-',
            nan => 'ဂဏန်းမဟုတ်သော',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    naq => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    nb => {
        patterns => {
            atleast => '⩾{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    ne => {
        patterns => {
            atleast => '{0}+',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
    nl => {
        patterns => {
            atleast => '{0}+',
            currency => '¤ #,##0.00;¤ #,##0.00-',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00 ¤',
        },
    },
    nmg => {
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    nn => {
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbols => {
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
        symbols => {
            decimal => ',',
            group => '.',
            percent => '%',
        },
    },
    nr => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    nso => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    nus => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    nyn => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    om => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    or => {
        patterns => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    os => {
        patterns => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        symbols => {
            minus => "\N{LEFT-TO-RIGHT MARK}-",
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
    },
    pl => {
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00 ¤',
        },
        symbols => {
            decimal => ',',
            group => '.',
            minus => "\N{LEFT-TO-RIGHT MARK}−",
            percent => '%',
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
    },
    pt => {
        patterns => {
            atleast => '+{0}',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '+{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0} - {1}',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    ro => {
        patterns => {
            atleast => '>{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0} - {1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    ru => {
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}-{1}',
        },
        symbols => {
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
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    rwk => {
        patterns => {
            currency => '#,##0.00¤',
        },
    },
    saq => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    sbp => {
        patterns => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    se => {
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00¤',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    ses => {
        patterns => {
            currency => '#,##0.00¤',
        },
        symbols => {
            group => ' ',
        },
    },
    sg => {
        patterns => {
            currency => '¤#,##0.00;¤-#,##0.00',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    shi => {
        patterns => {
            currency => '#,##0.00¤',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    'shi-Latn' => {
        patterns => {
            currency => '#,##0.00¤',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    si => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '⩾{0}',
            currency => '¤#,##0.00;(¤#,##0.00)',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    so => {
        patterns => {
            currency => '¤#,##0.00',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    sq => {
        patterns => {
            atleast => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    ssy => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    st => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    sv => {
        patterns => {
            atleast => '⩾{0}',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0 %',
            range => '{0}‒{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '⩾{0}',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
        },
        symbols => {
            decimal => ',',
            group => '.',
        },
    },
    ta => {
        patterns => {
            atleast => '{0}+',
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
    },
    'ta-SG' => {
        patterns => {
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
    },
    te => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    th => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    tig => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    tn => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    to => {
        patterns => {
            atleast => '{0}+',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}—{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '%#,##0',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    twq => {
        patterns => {
            currency => '#,##0.00¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => '.',
            group => ' ',
        },
    },
    tzm => {
        patterns => {
            currency => '#,##0.00 ¤',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    uk => {
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            atleast => '⩾{0}',
            currency => "¤#,##0.00\N{LEFT-TO-RIGHT MARK}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤ #,##,##0.00',
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
        },
    },
    uz => {
        patterns => {
            atleast => '⩾{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '#,##0.00 ¤',
        },
        symbols => {
            decimal => ',',
            group => '.',
            minus => "\N{LEFT-TO-RIGHT MARK}−",
            plus => "\N{LEFT-TO-RIGHT MARK}+",
        },
    },
    'uz-Cyrl' => {
        patterns => {
            atleast => '⩾{0}',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}–{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    'vai-Latn' => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
        },
        symbols => {
            decimal => '.',
            group => ',',
        },
    },
    ve => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    vi => {
        patterns => {
            atleast => '{0}+',
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    wae => {
        symbols => {
            decimal => ',',
            group => '’',
        },
    },
    wal => {
        patterns => {
            currency => '¤#,##0.00',
        },
        symbols => {
            group => '’',
        },
    },
    xh => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    xog => {
        patterns => {
            currency => '#,##0.00 ¤',
        },
    },
    yav => {
        patterns => {
            currency => '#,##0.00 ¤',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    yo => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    'yo-BJ' => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    zgh => {
        patterns => {
            currency => '#,##0.00¤',
            percent => '#,##0 %',
        },
        symbols => {
            decimal => ',',
            group => ' ',
        },
    },
    zh => {
        patterns => {
            atleast => '{0}+',
            currency => '¤ #,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
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
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    'zh-Hans-MO' => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    'zh-Hans-SG' => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    'zh-Hant' => {
        patterns => {
            atleast => '{0}+',
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}',
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => '∞',
            minus => '-',
            nan => '非數值',
            percent => '%',
            permil => '‰',
            plus => '+',
        },
    },
    'zh-Hant-HK' => {
        patterns => {
            currency => '¤#,##0.00',
        },
    },
    zu => {
        patterns => {
            currency => '¤#,##0.00',
            decimal => '#,##0.###',
            percent => '#,##0%',
        },
        symbols => {
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
        ar-EH ar-ER ar-IL ar-IQ ar-JO ar-KM ar-KW ar-OM ar-PS ar-SD ar-SO ar-SS
        ar-TD as-IN asa-TZ ast-ES az-Cyrl-AZ az-Latn az-Latn-AZ bas-CM be-BY
        bem-ZM bez-TZ bg-BG bm-ML bn-BD bn-IN bo-CN bo-IN br-FR brx-IN
        bs-Cyrl-BA bs-Latn bs-Latn-BA byn-ER ca-AD ca-ES ca-FR ca-IT cgg-UG
        chr-US cs-CZ cy-GB da-DK da-GL dav-KE de-BE de-DE de-LU dje-NE dua-CM
        dyo-SN dz-BT ebu-KE ee-GH ee-TG el-GR en-001 en-AG en-AI en-AS en-BB
        en-BM en-BS en-BW en-BZ en-CA en-CC en-CK en-CM en-CX en-DG en-DM
        en-Dsrt en-Dsrt-US en-ER en-FJ en-FK en-FM en-GD en-GG en-GH en-GI
        en-GM en-GU en-GY en-HK en-IE en-IM en-IO en-JE en-JM en-KE en-KI en-KN
        en-KY en-LC en-LR en-LS en-MG en-MH en-MO en-MP en-MS en-MT en-MU en-MW
        en-NA en-NF en-NG en-NR en-NU en-NZ en-PG en-PH en-PN en-PR en-PW en-RW
        en-SB en-SC en-SD en-SG en-SH en-SL en-SS en-SX en-SZ en-TC en-TK en-TO
        en-TT en-TV en-TZ en-UG en-UM en-US en-VC en-VG en-VI en-VU en-WS en-ZM
        en-ZW eo-001 es-CU es-DO es-EA es-ES es-GT es-HN es-IC es-NI es-PA es-PE
        es-PH es-PR es-SV es-US et-EE eu-ES ewo-CM fa-IR ff-SN fi-FI fil-PH
        fo-FO fr-BF fr-BI fr-BJ fr-BL fr-CA fr-CD fr-CF fr-CG fr-CI fr-CM fr-DJ
        fr-DZ fr-FR fr-GA fr-GF fr-GN fr-GP fr-GQ fr-HT fr-KM fr-MA fr-MC fr-MF
        fr-MG fr-ML fr-MQ fr-MR fr-MU fr-NC fr-NE fr-PF fr-PM fr-RE fr-RW fr-SC
        fr-SN fr-SY fr-TD fr-TG fr-TN fr-VU fr-WF fr-YT fur-IT ga-IE gd-GB gl-ES
        gsw-CH gsw-LI gu-IN guz-KE gv-IM ha-Latn ha-Latn-GH ha-Latn-NE
        ha-Latn-NG haw-US he-IL hi-IN hr-BA hr-HR hu-HU hy-AM ia-FR id-ID ig-NG
        ii-CN is-IS it-IT it-SM ja-JP jgo-CM jmc-TZ ka-GE kab-DZ kam-KE kde-TZ
        kea-CV khq-ML ki-KE kk-Cyrl kk-Cyrl-KZ kkj-CM kl-GL kln-KE km-KH kn-IN
        ko-KP ko-KR kok-IN ks-Arab ks-Arab-IN ksb-TZ ksf-CM ksh-DE kw-GB ky-Cyrl
        ky-Cyrl-KG lag lag-TZ lg-UG lkt-US ln-AO ln-CD ln-CF ln-CG lo-LA lt-LT
        lu-CD luo-KE luy-KE lv-LV mas-KE mas-TZ mer-KE mfe-MU mg-MG mgh-MZ
        mgo-CM mk-MK ml-IN mn-Cyrl mn-Cyrl-MN mr-IN ms-Latn ms-Latn-MY
        ms-Latn-SG mt-MT mua-CM my-MM naq-NA nb-NO nb-SJ nd-ZW ne-IN ne-NP nl-AW
        nl-BQ nl-CW nl-NL nl-SR nl-SX nmg-CM nn-NO nnh-CM nr-ZA nso-ZA nus-SD
        nyn-UG om-ET om-KE or-IN os-GE os-RU pa-Arab-PK pa-Guru pa-Guru-IN pl-PL
        ps-AF pt-AO pt-BR pt-CV pt-GW pt-MO pt-MZ pt-ST pt-TL rm-CH rn-BI ro-MD
        ro-RO rof-TZ ru-BY ru-KG ru-KZ ru-MD ru-RU ru-UA rw-RW rwk-TZ sah sah-RU
        saq-KE sbp-TZ se-FI se-NO seh-MZ ses-ML sg-CF shi-Latn-MA shi-Tfng
        shi-Tfng-MA si-LK sk-SK sl-SI sn-ZW so-DJ so-ET so-KE so-SO sq-AL sq-MK
        sq-XK sr-Cyrl sr-Cyrl-BA sr-Cyrl-ME sr-Cyrl-RS sr-Cyrl-XK sr-Latn-BA
        sr-Latn-ME sr-Latn-RS sr-Latn-XK ss-SZ ss-ZA ssy-ER st-LS st-ZA sv-AX
        sv-FI sv-SE sw-KE sw-TZ sw-UG swc-CD ta-IN ta-LK te-IN teo-KE teo-UG tg
        tg-Cyrl tg-Cyrl-TJ th-TH ti-ER ti-ET tig-ER tn-BW tn-ZA to-TO tr-CY
        tr-TR ts-ZA twq-NE tzm-Latn tzm-Latn-MA uk-UA ur-PK uz-Arab-AF
        uz-Cyrl-UZ uz-Latn uz-Latn-UZ vai-Latn-LR vai-Vaii vai-Vaii-LR ve-ZA
        vi-VN vo vo-001 vun-TZ wae-CH wal-ET xh-ZA xog-UG yav-CM yo-NG zgh-MA
        zh-Hans zh-Hans-CN zh-Hant-MO zh-Hant-TW zu-ZA
    )
};

# using non-Unicode codepoints as placeholders:
# $N: formatted number
# $P: percent sign
# $C: currency sign
# $M: minus sign
my ($N, $P, $C, $M) = map { chr } 0x1F0000 .. 0x1F0003;

our $CACHE = {
    patterns => {
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
    attributes => {
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
