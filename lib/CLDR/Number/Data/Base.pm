package CLDR::Number::Data::Base;

use utf8;
use strict;
use warnings;

our $VERSION = '0.00';

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
            currency => "\x{a4}#,##0.00"
        }
    },
    af => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'af-NA' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00"
        }
    },
    agq => {
        patterns => {
            currency => "#,##0.00\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    ak => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    am => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ar => {
        patterns => {
            atleast => '+{0}',
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => "\x{200e}-",
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => "\x{200e}+"
        }
    },
    'ar-DZ' => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'ar-EG' => {
        symbols => {
            nan => 'NaN'
        }
    },
    'ar-LB' => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'ar-LY' => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'ar-MA' => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'ar-MR' => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'ar-QA' => {
        patterns => {
            currency => "\x{a4}#0.00"
        }
    },
    'ar-SA' => {
        patterns => {
            currency => "\x{a4}#0.00"
        }
    },
    'ar-SY' => {
        patterns => {
            currency => "\x{a4}#0.00"
        }
    },
    'ar-TN' => {
        patterns => {
            currency => "\x{a4}#0.00"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'ar-YE' => {
        patterns => {
            currency => "\x{a4}#0.00"
        }
    },
    as => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%'
        }
    },
    asa => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}"
        }
    },
    ast => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    az => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'az-Cyrl' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    bas => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    be => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    bem => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    bez => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        }
    },
    bg => {
        patterns => {
            atleast => "\x{2a7e} {0}",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0} \x{2013} {1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    bm => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    bn => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##,##0.00\x{a4};(#,##,##0.00\x{a4})",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    bo => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => ',',
            nan => 'NaN'
        }
    },
    br => {
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    brx => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    bs => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'bs-Cyrl' => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    byn => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    ca => {
        patterns => {
            atleast => "\x{2265} {0}",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    cgg => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    chr => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    cs => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    cy => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    da => {
        patterns => {
            atleast => '{0} eller derover',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => '{0}-{1}'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    dav => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    de => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'de-AT' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00"
        }
    },
    'de-CH' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00;\x{a4}-#,##0.00"
        },
        symbols => {
            decimal => '.',
            group => '\''
        }
    },
    'de-LI' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00"
        },
        symbols => {
            decimal => '.',
            group => '\''
        }
    },
    dje => {
        patterns => {
            currency => "#,##0.00\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => "\x{a0}"
        }
    },
    dua => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    dyo => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    dz => {
        patterns => {
            currency => "\x{a4}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => "#,##,##0\x{a0}%"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ebu => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    ee => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        },
        symbols => {
            nan => 'mnn'
        }
    },
    el => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'el-CY' => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    en => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'en-150' => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'en-AU' => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    'en-BE' => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'en-GB' => {
        patterns => {
            range => "{0}\x{2013}{1}"
        }
    },
    'en-IN' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%'
        }
    },
    'en-PK' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%'
        }
    },
    'en-US-POSIX' => {
        patterns => {
            currency => "\x{a4}\x{a0}#0.00",
            decimal => '#0.######',
            percent => '#0%'
        },
        symbols => {
            infinity => 'INF',
            permil => '0/00'
        }
    },
    'en-ZA' => {
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    eo => {
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    es => {
        patterns => {
            atleast => "M\x{e1}s de {0}",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'es-419' => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    'es-AR' => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'es-BO' => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'es-CL' => {
        patterns => {
            currency => "\x{a4}#,##0.00;\x{a4}-#,##0.00"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'es-CO' => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'es-CR' => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'es-EC' => {
        patterns => {
            currency => "\x{a4}#,##0.00;\x{a4}-#,##0.00"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'es-GQ' => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    'es-MX' => {
        patterns => {
            atleast => "M\x{e1}s de {0}",
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'es-PY' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00;\x{a4}\x{a0}-#,##0.00"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'es-UY' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    'es-VE' => {
        patterns => {
            currency => "\x{a4}#,##0.00;\x{a4}-#,##0.00"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    et => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2012}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    eu => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "%\x{a0}#,##0",
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ewo => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    fa => {
        patterns => {
            atleast => "{0}+\x{200e}",
            currency => "\x{200e}\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => "\x{200e}\x{2212}",
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => "\x{200e}+"
        }
    },
    'fa-AF' => {
        patterns => {
            percent => "'\x{202a}'#,##0%'\x{202c}'"
        }
    },
    ff => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    fi => {
        patterns => {
            atleast => "v\x{e4}hint\x{e4}\x{e4}n {0}",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => "{0}\x{2012}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => "ep\x{e4}luku",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    fil => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    fo => {
        patterns => {
            currency => "\x{a4}#,##0.00;\x{a4}-#,##0.00",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => "\x{a4}\x{a4}\x{a4}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    fr => {
        patterns => {
            atleast => 'au moins {0}',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => "de {0} \x{e0} {1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'fr-BE' => {
        symbols => {
            group => '.'
        }
    },
    'fr-CH' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00;\x{a4}-#,##0.00"
        },
        symbols => {
            decimal => '.',
            group => '\''
        }
    },
    'fr-LU' => {
        symbols => {
            group => '.'
        }
    },
    fur => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ga => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    gd => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    gl => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    gsw => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%"
        },
        symbols => {
            decimal => '.',
            group => "\x{2019}",
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    gu => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    guz => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    gv => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    ha => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    haw => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    he => {
        patterns => {
            atleast => "\x{2a7e}{0}+",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => "\x{200e}-",
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => "\x{200e}+"
        }
    },
    hi => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    hr => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    hu => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    hy => {
        patterns => {
            atleast => '{0}+',
            currency => "#0.00\x{a0}\x{a4}",
            decimal => '#0.###',
            percent => '#0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ia => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    id => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ig => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    ii => {
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    is => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    it => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'it-CH' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00;\x{a4}-#,##0.00"
        },
        symbols => {
            decimal => '.',
            group => '\''
        }
    },
    ja => {
        patterns => {
            atleast => "{0} \x{4ee5}\x{4e0a}",
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{ff5e}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    jgo => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    jmc => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    ka => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => '{0}-{1}'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => "\x{10d0}\x{10e0}\x{a0}\x{10d0}\x{10e0}\x{10d8}\x{10e1}\x{a0}\x{10e0}\x{10d8}\x{10ea}\x{10ee}\x{10d5}\x{10d8}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    kab => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    kam => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    kde => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    kea => {
        patterns => {
            currency => "#,##0.00\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    khq => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        },
        symbols => {
            group => "\x{a0}"
        }
    },
    ki => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    kk => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    kkj => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    kl => {
        patterns => {
            currency => "\x{a4}#,##0.00;\x{a4}-#,##0.00",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => "\x{a4}\x{a4}\x{a4}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    kln => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    km => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    kn => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ko => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00;(\x{a4}#,##0.00)",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    kok => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%'
        }
    },
    ks => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => '?',
            minus => "\x{200e}-",
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => "\x{200e}+"
        }
    },
    ksb => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        }
    },
    ksf => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    ksh => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => "\x{a4}\x{a4}\x{a4}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    kw => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    ky => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => "\x{441}\x{430}\x{43d}\x{a0}\x{44d}\x{43c}\x{435}\x{441}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    lg => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        }
    },
    lkt => {
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ln => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    lo => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00;\x{a4}-#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => "\x{e9a}\x{ecd}\x{ec8}\x{ec1}\x{ea1}\x{ec8}\x{e99}\x{ec2}\x{e95}\x{ec0}\x{ea5}\x{e81}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    lt => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    lu => {
        patterns => {
            currency => "#,##0.00\x{a4}",
            decimal => '#,##0.###'
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    luo => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        }
    },
    luy => {
        patterns => {
            currency => "\x{a4}#,##0.00;\x{a4}-\x{a0}#,##0.00"
        }
    },
    lv => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00;(\x{a4}#,##0.00)",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2012}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => "nav\x{a0}skaitlis",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    mas => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    mer => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    mfe => {
        symbols => {
            group => "\x{a0}"
        }
    },
    mg => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    mgh => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    mgo => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    mk => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ml => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##,##0.00\x{a4}",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    mn => {
        patterns => {
            atleast => "{0}-\x{441} \x{431}\x{430}\x{433}\x{430}\x{433}\x{4af}\x{439}",
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    mr => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ms => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'ms-Latn-BN' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    mt => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    mua => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    my => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => "\x{1002}\x{100f}\x{1014}\x{103a}\x{1038}\x{1019}\x{101f}\x{102f}\x{1010}\x{103a}\x{101e}\x{1031}\x{102c}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    naq => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    nb => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => "{0}\x{2012}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    nd => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    ne => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    nl => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}\x{a0}#,##0.00;\x{a4}\x{a0}#,##0.00-",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'nl-BE' => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}"
        }
    },
    nmg => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    nn => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => "{0}\x{2012}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    nnh => {
        symbols => {
            decimal => ',',
            group => '.',
            percent => '%'
        }
    },
    nr => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    nso => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    nus => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    nyn => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    om => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    or => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%'
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    os => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => "\x{41d}\x{41d}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    pa => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}\x{a0}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'pa-Arab' => {
        symbols => {
            minus => "\x{200e}-",
            plus => "\x{200e}+"
        }
    },
    pl => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ps => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            minus => "\x{200e}\x{2212}",
            percent => '%',
            plus => "\x{200e}+"
        }
    },
    pt => {
        patterns => {
            atleast => '+{0}',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'pt-PT' => {
        patterns => {
            atleast => '+{0}',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0} - {1}'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    rm => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%"
        },
        symbols => {
            decimal => '.',
            group => "\x{2019}",
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    rn => {
        patterns => {
            currency => "#,##0.00\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    ro => {
        patterns => {
            atleast => '>{0}',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => '{0} - {1}'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    rof => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    ru => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => '{0}-{1}'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => "\x{43d}\x{435}\x{a0}\x{447}\x{438}\x{441}\x{43b}\x{43e}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    rw => {
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    rwk => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        }
    },
    saq => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    sbp => {
        patterns => {
            currency => "#,##0.00\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    se => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => "\x{a4}\x{a4}\x{a4}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    seh => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    ses => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        },
        symbols => {
            group => "\x{a0}"
        }
    },
    sg => {
        patterns => {
            currency => "\x{a4}#,##0.00;\x{a4}-#,##0.00"
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    shi => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    'shi-Latn' => {
        patterns => {
            currency => "#,##0.00\x{a4}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    si => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    sk => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    sl => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "\x{a4}#,##0.00;(\x{a4}#,##0.00)",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    sn => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    so => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    sq => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    sr => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'sr-Latn' => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ss => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    ssy => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    st => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    sv => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => "#,##0\x{a0}%",
            range => "{0}\x{2012}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => "\x{2212}",
            nan => "\x{a4}\x{a4}\x{a4}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    sw => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    swc => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###'
        },
        symbols => {
            decimal => ',',
            group => '.'
        }
    },
    ta => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}\x{a0}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'ta-MY' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        }
    },
    'ta-SG' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        }
    },
    te => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    teo => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    th => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ti => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    tig => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    tn => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    to => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2014}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'TF',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    tr => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '%#,##0',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ts => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    twq => {
        patterns => {
            currency => "#,##0.00\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => "\x{a0}"
        }
    },
    tzm => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    uk => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => "\x{41d}\x{435}\x{a0}\x{447}\x{438}\x{441}\x{43b}\x{43e}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    ur => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "\x{a4}#,##0.00\x{200e}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => "\x{200e}-",
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => "\x{200e}+"
        }
    },
    'ur-IN' => {
        patterns => {
            currency => "\x{a4}\x{a0}#,##,##0.00",
            decimal => '#,##,##0.###',
            percent => '#,##,##0%'
        }
    },
    uz => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'uz-Arab' => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}"
        },
        symbols => {
            decimal => ',',
            group => '.',
            minus => "\x{200e}\x{2212}",
            plus => "\x{200e}+"
        }
    },
    'uz-Cyrl' => {
        patterns => {
            atleast => "\x{2a7e}{0}",
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => "{0}\x{2013}{1}"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}",
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    vai => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###'
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    'vai-Latn' => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###'
        },
        symbols => {
            decimal => '.',
            group => ','
        }
    },
    ve => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    vi => {
        patterns => {
            atleast => '{0}+',
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => ',',
            group => '.',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    vun => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    wae => {
        symbols => {
            decimal => ',',
            group => "\x{2019}"
        }
    },
    wal => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        },
        symbols => {
            group => "\x{2019}"
        }
    },
    xh => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    xog => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}"
        }
    },
    yav => {
        patterns => {
            currency => "#,##0.00\x{a0}\x{a4}",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    yo => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    'yo-BJ' => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    zgh => {
        patterns => {
            currency => "#,##0.00\x{a4}",
            percent => "#,##0\x{a0}%"
        },
        symbols => {
            decimal => ',',
            group => "\x{a0}"
        }
    },
    zh => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}\x{a0}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'zh-Hans-HK' => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    'zh-Hans-MO' => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    'zh-Hans-SG' => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    'zh-Hant' => {
        patterns => {
            atleast => '{0}+',
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%',
            range => '{0}-{1}'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => "\x{975e}\x{6578}\x{503c}",
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    },
    'zh-Hant-HK' => {
        patterns => {
            currency => "\x{a4}#,##0.00"
        }
    },
    zu => {
        patterns => {
            currency => "\x{a4}#,##0.00",
            decimal => '#,##0.###',
            percent => '#,##0%'
        },
        symbols => {
            decimal => '.',
            group => ',',
            infinity => "\x{221e}",
            minus => '-',
            nan => 'I-NaN',
            percent => '%',
            permil => "\x{2030}",
            plus => '+'
        }
    }
};

1;
