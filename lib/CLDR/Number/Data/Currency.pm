package CLDR::Number::Data::Currency;

use utf8;
use strict;
use warnings;

our $VERSION = '0.00_01';

our $LOCALES = {
    root => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    aa => {
        ETB => 'Br'
    },
    'aa-DJ' => {
        DJF => 'Fdj'
    },
    'aa-ER' => {
        ERN => 'Nfk'
    },
    af => {
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF',
        ZAR => 'R'
    },
    'af-NA' => {
        NAD => '$'
    },
    ak => {
        GHS => "GH\x{20b5}"
    },
    am => {
        AUD => 'AU$',
        BRL => 'R$',
        CNY => "CN\x{a5}",
        ETB => "\x{1265}\x{122d}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ar => {
        AED => "\x{62f}.\x{625}.\x{200f}",
        AUD => 'AU$',
        BHD => "\x{62f}.\x{628}.\x{200f}",
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "\x{64a}.\x{635}",
        DZD => "\x{62f}.\x{62c}.\x{200f}",
        EGP => "\x{62c}.\x{645}.\x{200f}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{631}.\x{647}.\x{200f}",
        IQD => "\x{62f}.\x{639}.\x{200f}",
        JOD => "\x{62f}.\x{623}.\x{200f}",
        JPY => "JP\x{a5}",
        KMF => "\x{641}.\x{62c}.\x{642}.\x{200f}",
        KRW => "\x{20a9}",
        KWD => "\x{62f}.\x{643}.\x{200f}",
        LBP => "\x{644}.\x{644}.\x{200f}",
        LYD => "\x{62f}.\x{644}.\x{200f}",
        MAD => "\x{62f}.\x{645}.\x{200f}",
        MRO => "\x{623}.\x{645}.\x{200f}",
        MXN => 'MX$',
        NZD => 'NZ$',
        OMR => "\x{631}.\x{639}.\x{200f}",
        QAR => "\x{631}.\x{642}.\x{200f}",
        SAR => "\x{631}.\x{633}.\x{200f}",
        SDD => "\x{62f}.\x{633}.\x{200f}",
        SDG => "\x{62c}.\x{633}.",
        SSP => "\x{62c}.\x{62c}.\x{633}.",
        SYP => "\x{644}.\x{633}.\x{200f}",
        THB => "\x{e3f}",
        TND => "\x{62f}.\x{62a}.\x{200f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF',
        XXX => '***',
        YER => "\x{631}.\x{64a}.\x{200f}"
    },
    'ar-DJ' => {
        DJF => 'Fdj'
    },
    'ar-ER' => {
        ERN => 'Nfk'
    },
    'ar-LB' => {
        SDG => 'SDG'
    },
    'ar-SO' => {
        SOS => 'S'
    },
    'ar-SS' => {
        GBP => "GB\x{a3}",
        SSP => "\x{a3}"
    },
    asa => {
        TZS => 'TSh'
    },
    ast => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    az => {
        AUD => 'A$',
        AZN => 'man.',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'az-Cyrl' => {
        AZN => "\x{43c}\x{430}\x{43d}."
    },
    be => {
        BYR => "\x{440}.",
        JPY => "\x{a5}",
        RUB => "\x{440}\x{430}\x{441}. \x{440}\x{443}\x{431}.",
        USD => '$'
    },
    bem => {
        ZMW => 'K'
    },
    bez => {
        TZS => 'TSh'
    },
    bg => {
        AUD => 'AUD',
        BGN => "\x{43b}\x{432}.",
        BRL => 'BRL',
        CAD => 'CAD',
        CNY => 'CNY',
        EUR => "\x{20ac}",
        GBP => 'GBP',
        HKD => 'HKD',
        ILS => 'ILS',
        INR => 'INR',
        JPY => 'JPY',
        KRW => 'KRW',
        MXN => 'MXN',
        NZD => 'NZD',
        RUB => "\x{440}\x{443}\x{431}.",
        THB => 'THB',
        TWD => 'TWD',
        USD => "\x{449}.\x{434}.",
        VND => 'VND',
        XAF => 'FCFA',
        XCD => 'XCD',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    bn => {
        AUD => 'A$',
        BDT => "\x{9f3}",
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    bo => {
        CNY => "\x{a5}"
    },
    'bo-IN' => {
        CNY => "CN\x{a5}"
    },
    bs => {
        BAM => 'KM',
        CZK => "K\x{10d}",
        PLN => 'zl',
        RSD => 'din.'
    },
    'bs-Cyrl' => {
        BAM => "\x{41a}\x{41c}",
        CZK => "\x{41a}\x{447}",
        JPY => "\x{a5}",
        PLN => "\x{437}\x{43b}",
        RSD => "\x{434}\x{438}\x{43d}.",
        TRY => "\x{422}\x{43b}"
    },
    byn => {
        ERN => 'Nfk'
    },
    ca => {
        AUD => 'AU$',
        BRL => 'BRL',
        CAD => 'CA$',
        CNY => "\x{a5}",
        ESP => "\x{20a7}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MXN',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'XCD',
        XOF => 'XOF',
        XPF => 'CFPF'
    },
    'ca-FR' => {
        FRF => 'F'
    },
    cgg => {
        UGX => 'USh'
    },
    chr => {
        USD => '$'
    },
    cs => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        CSK => "K\x{10d}s",
        CZK => "K\x{10d}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => 'INR',
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => 'THB',
        TWD => 'NT$',
        USD => 'US$',
        VND => 'VND',
        XAF => 'FCFA',
        XBB => 'EMU',
        XCD => 'EC$',
        XEU => 'ECU',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    cy => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    da => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        DKK => 'kr',
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    dav => {
        KES => 'Ksh'
    },
    de => {
        ATS => "\x{f6}S",
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'de-CH' => {
        CHF => 'CHF'
    },
    'de-LU' => {
        LUF => 'F'
    },
    dz => {
        AUD => 'AU$',
        BRL => 'R$',
        BTN => 'Nu.',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => 'ILS',
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "KR\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "TH\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        XAF => 'XAF'
    },
    ebu => {
        KES => 'Ksh'
    },
    ee => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        GHS => "GH\x{20b5}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XCD => 'EC$'
    },
    el => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        GRD => "\x{394}\x{3c1}\x{3c7}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    en => {
        JPY => "\x{a5}",
        USD => '$'
    },
    'en-001' => {
        USD => 'US$'
    },
    'en-AU' => {
        AUD => '$',
        USD => 'US$'
    },
    'en-BB' => {
        BBD => '$'
    },
    'en-BE' => {
        USD => 'US$'
    },
    'en-BM' => {
        BMD => '$'
    },
    'en-BS' => {
        BSD => '$'
    },
    'en-BW' => {
        BWP => 'P'
    },
    'en-BZ' => {
        BZD => '$'
    },
    'en-CA' => {
        CAD => '$',
        USD => 'US$'
    },
    'en-CC' => {
        AUD => '$'
    },
    'en-CK' => {
        NZD => '$'
    },
    'en-CX' => {
        AUD => '$'
    },
    'en-Dsrt' => {
        USD => '$'
    },
    'en-ER' => {
        ERN => 'Nfk'
    },
    'en-FJ' => {
        FJD => '$'
    },
    'en-FK' => {
        FKP => "\x{a3}",
        GBP => "GB\x{a3}"
    },
    'en-GB' => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'en-GH' => {
        GHS => "GH\x{20b5}"
    },
    'en-GI' => {
        GBP => "GB\x{a3}",
        GIP => "\x{a3}",
        USD => 'US$'
    },
    'en-GM' => {
        GMD => 'D'
    },
    'en-GY' => {
        GYD => '$'
    },
    'en-HK' => {
        HKD => '$',
        USD => 'US$'
    },
    'en-IN' => {
        USD => 'US$'
    },
    'en-JM' => {
        JMD => '$'
    },
    'en-KE' => {
        KES => 'Ksh'
    },
    'en-KI' => {
        AUD => '$'
    },
    'en-KY' => {
        KYD => '$'
    },
    'en-LR' => {
        LRD => '$'
    },
    'en-LS' => {
        ZAR => 'R'
    },
    'en-MG' => {
        MGA => 'Ar'
    },
    'en-MO' => {
        MOP => 'MOP$',
        USD => 'US$'
    },
    'en-MT' => {
        GBP => "GB\x{a3}",
        USD => 'US$'
    },
    'en-MU' => {
        MUR => 'Rs'
    },
    'en-MW' => {
        MWK => 'MK'
    },
    'en-NA' => {
        NAD => '$'
    },
    'en-NF' => {
        AUD => '$'
    },
    'en-NG' => {
        NGN => "\x{20a6}"
    },
    'en-NR' => {
        AUD => '$'
    },
    'en-NU' => {
        NZD => '$'
    },
    'en-NZ' => {
        NZD => '$',
        USD => 'US$'
    },
    'en-PG' => {
        PGK => 'K'
    },
    'en-PH' => {
        PHP => "\x{20b1}"
    },
    'en-PK' => {
        PKR => 'Rs',
        USD => 'US$'
    },
    'en-PN' => {
        NZD => '$'
    },
    'en-RW' => {
        RWF => 'RF'
    },
    'en-SB' => {
        SBD => '$'
    },
    'en-SC' => {
        SCR => 'SR'
    },
    'en-SG' => {
        SGD => '$',
        USD => 'US$'
    },
    'en-SH' => {
        GBP => "GB\x{a3}",
        SHP => "\x{a3}"
    },
    'en-SL' => {
        SLL => 'Le'
    },
    'en-SS' => {
        GBP => "GB\x{a3}",
        SSP => "\x{a3}"
    },
    'en-SX' => {
        ANG => 'NAf.'
    },
    'en-SZ' => {
        SZL => 'E'
    },
    'en-TK' => {
        NZD => '$'
    },
    'en-TO' => {
        TOP => 'T$'
    },
    'en-TT' => {
        TTD => '$'
    },
    'en-TV' => {
        AUD => '$'
    },
    'en-TZ' => {
        TZS => 'TSh'
    },
    'en-UG' => {
        UGX => 'USh'
    },
    'en-VU' => {
        VUV => 'VT'
    },
    'en-WS' => {
        WST => 'WS$'
    },
    'en-ZA' => {
        ZAR => 'R'
    },
    'en-ZM' => {
        ZMW => 'K'
    },
    es => {
        ARS => 'AR$',
        AUD => 'AU$',
        BRL => 'BRL',
        CAD => 'CA$',
        CNY => 'CNY',
        ESP => "\x{20a7}",
        GBP => 'GBP',
        HKD => 'HKD',
        ILS => 'ILS',
        INR => 'INR',
        JPY => 'JPY',
        KRW => 'KRW',
        MXN => 'MX$',
        NZD => 'NZD',
        THB => 'THB',
        TWD => 'TWD',
        USD => '$',
        VND => 'VND',
        XCD => 'EC$',
        XOF => 'XOF',
        XPF => 'XPF'
    },
    'es-AR' => {
        ARS => '$',
        USD => 'US$'
    },
    'es-BO' => {
        BOB => 'Bs'
    },
    'es-CL' => {
        CLP => '$',
        USD => 'US$'
    },
    'es-CO' => {
        COP => '$',
        USD => 'US$'
    },
    'es-CR' => {
        CRC => "\x{20a1}"
    },
    'es-CU' => {
        CUP => '$',
        USD => 'US$'
    },
    'es-DO' => {
        DOP => '$',
        USD => 'US$'
    },
    'es-GT' => {
        GTQ => 'Q'
    },
    'es-HN' => {
        HNL => 'L'
    },
    'es-MX' => {
        AED => 'AED',
        ALL => 'ALL',
        AMD => 'AMD',
        ANG => 'Naf',
        AOA => 'Kz',
        ARA => 'ARA',
        AWG => 'Afl.',
        AZN => 'AZN',
        BAM => 'BAM',
        BBD => 'BBD',
        BDT => 'BDT',
        BGN => 'BGN',
        BHD => 'BHD',
        BIF => 'BIF',
        BMD => 'BMD',
        BND => 'BND',
        BOB => 'BOB',
        BOL => 'BOL',
        BOP => 'BOP',
        BOV => 'BOV',
        BRB => 'BRB',
        BRC => 'BRC',
        BRE => 'BRE',
        BRL => 'BRL',
        BRN => 'BRN',
        BRR => 'BRR',
        BRZ => 'BRZ',
        BSD => 'BSD',
        BTN => 'BTN',
        BWP => 'BWP',
        BYR => 'BYR',
        BZD => 'BZD',
        CAD => 'CAD',
        CDF => 'CDF',
        CHF => 'CHF',
        CLE => 'CLE',
        CLF => 'CLF',
        CLP => 'CLP',
        CNY => "CN\x{a5}",
        COP => 'COP',
        COU => 'COU',
        CRC => 'CRC',
        CUC => 'CUC',
        CUP => 'CUP',
        CVE => 'CVE',
        CZK => 'CZK',
        DJF => 'DJF',
        DKK => 'DKK',
        DOP => 'DOP',
        DZD => 'DZD',
        ECS => 'ECS',
        ECV => 'ECV',
        EGP => 'EGP',
        ERN => 'ERN',
        ETB => 'ETB',
        EUR => 'EUR',
        FJD => 'FJD',
        FKP => 'FKP',
        GBP => 'GBP',
        GEL => 'GEL',
        GHS => 'GHS',
        GIP => 'GIP',
        GMD => 'GMD',
        GNF => 'GNF',
        GTQ => 'GTQ',
        GYD => 'GYD',
        HKD => 'HKD',
        HNL => 'HNL',
        HRK => 'HRK',
        HTG => 'HTG',
        HUF => 'HUF',
        IDR => 'IDR',
        ILS => 'ILS',
        INR => 'INR',
        IQD => 'IQD',
        IRR => 'IRR',
        ISK => 'ISK',
        JMD => 'JMD',
        JOD => 'JOD',
        JPY => 'JPY',
        KES => 'KES',
        KGS => 'KGS',
        KHR => 'KHR',
        KMF => 'KMF',
        KPW => 'KPW',
        KRW => 'KRW',
        KWD => 'KWD',
        KYD => 'KYD',
        KZT => 'KZT',
        LAK => 'LAK',
        LBP => 'LBP',
        LKR => 'LKR',
        LRD => 'LRD',
        LTL => 'LTL',
        LVL => 'LVL',
        LYD => 'LYD',
        MAD => 'MAD',
        MDL => 'MDL',
        MGA => 'MGA',
        MKD => 'MKD',
        MMK => 'MMK',
        MNT => 'MNT',
        MOP => 'MOP',
        MRO => 'MRO',
        MUR => 'MUR',
        MVR => 'MVR',
        MWK => 'MWK',
        MXN => '$',
        MXP => 'MXP',
        MYR => 'MYR',
        MZN => 'MZN',
        NAD => 'NAD',
        NGN => 'NGN',
        NIC => 'NIC',
        NIO => 'NIO',
        NOK => 'NOK',
        NPR => 'NPR',
        NZD => 'NZD',
        OMR => 'OMR',
        PAB => 'PAB',
        PEI => 'PEI',
        PEN => 'PEN',
        PES => 'PES',
        PGK => 'PGK',
        PHP => 'PHP',
        PKR => 'PKR',
        PLN => 'PLN',
        PYG => 'PYG',
        QAR => 'QAR',
        RON => 'RON',
        RSD => 'RSD',
        RUB => 'RUB',
        RWF => 'RWF',
        SAR => 'SAR',
        SBD => 'SBD',
        SCR => 'SCR',
        SDG => 'SDG',
        SEK => 'SEK',
        SGD => 'SGD',
        SHP => 'SHP',
        SLL => 'SLL',
        SOS => 'SOS',
        SRD => 'SRD',
        SRG => 'SRG',
        SSP => 'SSP',
        STD => 'STD',
        SVC => 'SVC',
        SYP => 'SYP',
        SZL => 'SZL',
        THB => 'THB',
        TJS => 'TJS',
        TMT => 'TMT',
        TND => 'TND',
        TOP => 'TOP',
        TRY => 'TRY',
        TTD => 'TTD',
        TWD => 'TWD',
        TZS => 'TZS',
        UAH => 'UAH',
        UGX => 'UGX',
        USD => 'USD',
        USN => 'USN',
        USS => 'USS',
        UYI => 'UYI',
        UYU => 'UYU',
        UZS => 'UZS',
        VEF => 'VEF',
        VND => 'VND',
        VUV => 'VUV',
        WST => 'WST',
        XAF => 'XAF',
        XCD => 'XCD',
        XOF => 'XOF',
        XPF => 'XPF',
        YER => 'YER',
        ZAR => 'ZAR',
        ZMW => 'ZMK'
    },
    'es-NI' => {
        NIO => 'C$'
    },
    'es-PA' => {
        PAB => 'B/.'
    },
    'es-PE' => {
        PEN => 'S/.'
    },
    'es-PH' => {
        PHP => "\x{20b1}"
    },
    'es-PR' => {
        USD => '$'
    },
    'es-PY' => {
        PYG => "\x{20b2}"
    },
    'es-US' => {
        JPY => "\x{a5}",
        USD => '$'
    },
    'es-UY' => {
        USD => 'US$',
        UYU => '$'
    },
    'es-VE' => {
        VEF => 'Bs.'
    },
    et => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EEK => 'kr',
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    eu => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        ESP => "\x{20a7}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    fa => {
        AFN => "\x{60b}",
        CAD => '$CA',
        CNY => "\x{a5}CN",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => '$HK',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        IRR => "\x{631}\x{6cc}\x{627}\x{644}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        MXN => '$MX',
        NZD => '$NZ',
        THB => "\x{e3f}",
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => '$EC',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    fi => {
        AUD => 'AUD',
        BRL => 'BRL',
        CAD => 'CAD',
        CNY => 'CNY',
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HKD',
        ILS => 'ILS',
        INR => 'INR',
        JPY => "\x{a5}",
        KRW => 'KRW',
        MXN => 'MXN',
        NZD => 'NZD',
        THB => 'THB',
        TWD => 'TWD',
        USD => '$',
        VND => 'VND',
        XAF => 'FCFA',
        XCD => 'XCD',
        XOF => 'CFA',
        XPF => 'XPF'
    },
    fil => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        PHP => "\x{20b1}",
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    fo => {
        DKK => 'kr'
    },
    fr => {
        ARS => '$AR',
        AUD => '$AU',
        BEF => 'FB',
        BMD => '$BM',
        BND => '$BN',
        BSD => '$BS',
        BZD => '$BZ',
        CAD => '$CA',
        CLP => '$CL',
        CNY => "\x{a5}CN",
        COP => '$CO',
        CVE => '$CV',
        CYP => "\x{a3}CY",
        EGP => "\x{a3}EG",
        EUR => "\x{20ac}",
        FJD => '$FJ',
        FKP => "\x{a3}FK",
        FRF => 'F',
        GBP => "\x{a3}GB",
        GIP => "\x{a3}GI",
        HKD => '$HK',
        IEP => "\x{a3}IE",
        ILP => "\x{a3}IL",
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        ITL => "\x{20a4}IT",
        JPY => "\x{a5}JP",
        KRW => "\x{20a9}",
        LBP => "\x{a3}LB",
        LRD => '$LR',
        MTP => "\x{a3}MT",
        MXN => '$MX',
        NAD => '$NA',
        NZD => '$NZ',
        RHD => '$RH',
        SBD => '$SB',
        SDG => "\x{a3}SD",
        SGD => '$SG',
        SHP => "\x{a3}SH",
        SRD => '$SR',
        SSP => "\x{a3}SS",
        THB => "\x{e3f}",
        TTD => '$TT',
        TWD => '$TW',
        USD => '$US',
        UYU => '$UY',
        VND => "\x{20ab}",
        WST => 'WS$',
        XAF => 'FCFA',
        XOF => 'CFA',
        XPF => 'FCFP'
    },
    'fr-BI' => {
        BIF => 'FBu'
    },
    'fr-CA' => {
        CAD => '$',
        CNY => "CN\x{a5}",
        WST => 'WST'
    },
    'fr-CD' => {
        CDF => 'FC'
    },
    'fr-CH' => {
        CHF => 'CHF'
    },
    'fr-DJ' => {
        DJF => 'Fdj'
    },
    'fr-DZ' => {
        DZD => 'DA'
    },
    'fr-GN' => {
        GNF => 'FG'
    },
    'fr-HT' => {
        HTG => 'G'
    },
    'fr-KM' => {
        KMF => 'CF'
    },
    'fr-LU' => {
        FRF => 'FRF',
        LUF => 'F'
    },
    'fr-MG' => {
        MGA => 'Ar'
    },
    'fr-MR' => {
        MRO => 'UM'
    },
    'fr-MU' => {
        MUR => 'Rs'
    },
    'fr-RW' => {
        RWF => 'RF'
    },
    'fr-SC' => {
        SCR => 'SR'
    },
    'fr-SY' => {
        SYP => 'LS'
    },
    'fr-TN' => {
        TND => 'DT'
    },
    'fr-VU' => {
        VUV => 'VT'
    },
    ga => {
        ANG => "A\x{cd} f."
    },
    gd => {
        USD => '$'
    },
    gl => {
        CAD => '$CA',
        CNY => "CN\x{a5}",
        ESP => "\x{20a7}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => '$HK',
        INR => "\x{20b9}",
        JPY => "\x{a5}JP",
        KRW => "\x{20a9}",
        MXN => '$MX',
        THB => "\x{e3f}",
        USD => '$'
    },
    gsw => {
        ATS => "\x{f6}S",
        CHF => 'CHF',
        JPY => "\x{a5}",
        USD => '$'
    },
    gu => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    guz => {
        KES => 'Ksh'
    },
    ha => {
        NGN => "\x{20a6}"
    },
    'ha-Latn-GH' => {
        GHS => "GH\x{20b5}"
    },
    haw => {
        USD => '$'
    },
    he => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILP => "\x{5dc}\x{5f4}\x{5d9}",
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    hi => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    hr => {
        AUD => 'AUD',
        BRL => 'BRL',
        CAD => 'CAD',
        CNY => 'CNY',
        GBP => 'GBP',
        HKD => 'HKD',
        HRK => 'kn',
        ILS => 'ILS',
        INR => 'INR',
        JPY => "\x{a5}",
        KRW => 'KRW',
        MXN => 'MXN',
        NZD => 'NZD',
        THB => 'THB',
        TWD => 'TWD',
        USD => 'USD',
        VND => 'VND',
        XAF => 'FCFA',
        XCD => 'XCD',
        XOF => 'CFA',
        XPF => 'XPF'
    },
    'hr-BA' => {
        BAM => 'KM'
    },
    hu => {
        AUD => 'AUD',
        BRL => 'BRL',
        CAD => 'CAD',
        CNY => 'CNY',
        EUR => 'EUR',
        GBP => 'GBP',
        HKD => 'HKD',
        HUF => 'Ft',
        ILS => 'ILS',
        INR => 'INR',
        JPY => "\x{a5}",
        KRW => 'KRW',
        MXN => 'MXN',
        NZD => 'NZD',
        THB => 'THB',
        TWD => 'TWD',
        USD => '$',
        VND => 'VND',
        XAF => 'FCFA',
        XCD => 'XCD',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    hy => {
        AMD => "\x{564}\x{580}.",
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    id => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        IDR => 'Rp',
        ILS => "\x{20aa}",
        INR => 'Rs',
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ig => {
        NGN => "\x{20a6}"
    },
    ii => {
        CNY => "\x{a5}"
    },
    is => {
        CAD => 'CAD',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        INR => "\x{20b9}",
        ISK => 'kr',
        JPY => "JP\x{a5}",
        MXN => 'MXN',
        THB => "\x{e3f}",
        USD => 'USD',
        XAF => 'FCFA',
        XOF => 'CFA'
    },
    it => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'it-CH' => {
        CHF => 'CHF'
    },
    ja => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "\x{5143}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{ffe5}",
        KRW => "\x{ffe6}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    jgo => {
        XAF => 'FCFA'
    },
    jmc => {
        TZS => 'TSh'
    },
    ka => {
        AUD => 'AUD',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => 'CNY',
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HKD',
        ILS => 'ILS',
        INR => 'INR',
        JPY => 'JPY',
        KRW => 'KRW',
        MXN => 'MX$',
        NZD => 'NZD',
        THB => 'THB',
        TWD => 'TWD',
        USD => 'US$',
        VND => 'VND',
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    kab => {
        DZD => 'DA'
    },
    kam => {
        KES => 'Ksh'
    },
    kde => {
        TZS => 'TSh'
    },
    kea => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XPF => 'CFPF'
    },
    ki => {
        KES => 'Ksh'
    },
    kk => {
        CAD => 'CA$',
        KZT => "\x{20b8}",
        MXN => 'MX$',
        RUB => "\x{440}\x{443}\x{431}.",
        USD => 'US$'
    },
    kkj => {
        XAF => 'FCFA'
    },
    kl => {
        DKK => 'kr',
        EUR => "\x{20ac}",
        NOK => 'Nkr',
        SEK => 'Skr'
    },
    kln => {
        KES => 'Ksh'
    },
    km => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KHR => "\x{17db}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    kn => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ko => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ksb => {
        TZS => 'TSh'
    },
    ky => {
        AUD => 'AUD',
        BRL => 'BRL',
        CAD => 'CAD',
        CNY => "CN\x{a5}",
        GBP => 'GBP',
        HKD => 'HKD',
        ILS => 'ILS',
        INR => 'INR',
        JPY => "JP\x{a5}",
        KGS => "\x{441}\x{43e}\x{43c}",
        KRW => 'KRW',
        MXN => 'MXN',
        NZD => 'NZD',
        THB => "\x{e3f}",
        TWD => 'TWD',
        USD => 'USD',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'XCD',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    lag => {
        TZS => 'TSh'
    },
    lg => {
        UGX => 'USh'
    },
    lkt => {
        USD => '$'
    },
    ln => {
        CDF => 'FC'
    },
    'ln-AO' => {
        AOA => 'Kz'
    },
    lo => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        LAK => "\x{20ad}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    lt => {
        AUD => 'AUD',
        BRL => 'BRL',
        CAD => 'CAD',
        CNY => 'CNY',
        GBP => 'GBP',
        HKD => 'HKD',
        ILS => 'ILS',
        INR => 'INR',
        JPY => 'JPY',
        KRW => 'KRW',
        LTL => 'Lt',
        MXN => 'MXN',
        NZD => 'NZD',
        THB => 'THB',
        TWD => 'TWD',
        USD => 'USD',
        VND => 'VND',
        XAF => 'XAF',
        XCD => 'XCD',
        XOF => 'XOF',
        XPF => 'XPF'
    },
    lu => {
        CDF => 'FC'
    },
    luo => {
        KES => 'Ksh'
    },
    luy => {
        KES => 'Ksh'
    },
    lv => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        LVL => 'Ls',
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    mas => {
        KES => 'Ksh'
    },
    'mas-TZ' => {
        TZS => 'TSh'
    },
    mer => {
        KES => 'Ksh'
    },
    mfe => {
        MUR => 'Rs'
    },
    mg => {
        MGA => 'Ar'
    },
    mgh => {
        MZN => 'MTn'
    },
    mgo => {
        XAF => 'FCFA'
    },
    mk => {
        AUD => 'AUD',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => 'CNY',
        GBP => 'GBP',
        HKD => 'HKD',
        ILS => 'ILS',
        INR => 'INR',
        JPY => 'JPY',
        KRW => 'KRW',
        MKD => "\x{434}\x{435}\x{43d}",
        MXN => 'MX$',
        NZD => 'NZD',
        THB => 'THB',
        TWD => 'TWD',
        USD => 'US$',
        VND => 'VND',
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ml => {
        AUD => 'A$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    mn => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => 'INR',
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MNT => "\x{20ae}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'TWD',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    mr => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ms => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        MYR => 'RM',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'ms-Latn-BN' => {
        BND => '$'
    },
    'ms-Latn-SG' => {
        SGD => '$'
    },
    my => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MMK => 'K',
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    naq => {
        NAD => '$'
    },
    nb => {
        ALK => 'ALK',
        AUD => 'AUD',
        BRL => 'BRL',
        CAD => 'CAD',
        CNX => 'CNX',
        CNY => 'CNY',
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HKD',
        ILR => 'ILR',
        ILS => 'ILS',
        INR => 'INR',
        JPY => 'JPY',
        KRW => 'KRW',
        MVP => 'MVP',
        MXN => 'MXN',
        NOK => 'kr',
        NZD => 'NZD',
        THB => 'THB',
        TWD => 'TWD',
        USD => 'USD',
        VND => 'VND',
        XAF => 'XAF',
        XCD => 'XCD',
        XOF => 'CFA',
        XPF => 'XPF'
    },
    ne => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NPR => "\x{928}\x{947}\x{930}\x{942}",
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    nl => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'C$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        FJD => 'FJ$',
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        SBD => 'SI$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'XPF'
    },
    'nl-AW' => {
        AWG => 'Afl.'
    },
    'nl-BQ' => {
        USD => '$'
    },
    'nl-CW' => {
        ANG => 'NAf.'
    },
    'nl-SR' => {
        SRD => '$'
    },
    'nl-SX' => {
        ANG => 'NAf.'
    },
    nn => {
        NOK => 'kr'
    },
    nnh => {
        XAF => 'FCFA'
    },
    nr => {
        ZAR => 'R'
    },
    nso => {
        ZAR => 'R'
    },
    nyn => {
        UGX => 'USh'
    },
    om => {
        ETB => 'Br'
    },
    'om-KE' => {
        KES => 'Ksh'
    },
    os => {
        BRL => 'R$',
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        USD => '$'
    },
    'os-RU' => {
        RUB => "\x{440}\x{443}\x{431}."
    },
    pa => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'pa-Arab' => {
        PKR => "\x{631}"
    },
    pl => {
        AUD => 'AUD',
        BRL => 'R$',
        CAD => 'CAD',
        CNY => 'CNY',
        GBP => 'GBP',
        HKD => 'HKD',
        ILS => 'ILS',
        INR => 'INR',
        JPY => 'JPY',
        KRW => 'KRW',
        MXN => 'MXN',
        NZD => 'NZD',
        PLN => "z\x{142}",
        THB => 'THB',
        TWD => 'TWD',
        USD => 'USD',
        VND => 'VND',
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ps => {
        AFN => "\x{60b}"
    },
    pt => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        PTE => 'Esc.',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'pt-AO' => {
        AOA => 'Kz'
    },
    'pt-MO' => {
        MOP => 'MOP$'
    },
    'pt-MZ' => {
        MZN => 'MTn'
    },
    'pt-PT' => {
        AUD => 'AU$',
        BRL => 'R$',
        BTN => 'BTN',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        GMD => 'GMD',
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        UZS => 'UZS',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'pt-ST' => {
        STD => 'Db'
    },
    rm => {
        CHF => 'CHF'
    },
    rn => {
        BIF => 'FBu'
    },
    ro => {
        AUD => 'AUD',
        BRL => 'BRL',
        CAD => 'CAD',
        CNY => 'CNY',
        GBP => 'GBP',
        HKD => 'HKD',
        ILS => 'ILS',
        INR => 'INR',
        JPY => 'JPY',
        KRW => 'KRW',
        MXN => 'MXN',
        NZD => 'NZD',
        THB => 'THB',
        TWD => 'TWD',
        USD => 'USD',
        VND => 'VND',
        XCD => 'XCD',
        XOF => 'CFA'
    },
    'ro-MD' => {
        MDL => 'L'
    },
    rof => {
        TZS => 'TSh'
    },
    ru => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        RUB => "\x{440}\x{443}\x{431}.",
        RUR => "\x{440}.",
        THB => "\x{e3f}",
        TMT => "\x{422}\x{41c}\x{422}",
        TWD => 'NT$',
        UAH => "\x{20b4}",
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF',
        XXX => 'XXXX'
    },
    'ru-BY' => {
        BYR => "\x{440}.",
        RUR => 'RUR'
    },
    'ru-KG' => {
        KGS => "\x{441}\x{43e}\x{43c}"
    },
    'ru-KZ' => {
        KZT => "\x{20b8}"
    },
    'ru-MD' => {
        MDL => 'L'
    },
    rw => {
        RWF => 'RF'
    },
    rwk => {
        TZS => 'TSh'
    },
    sah => {
        RUB => "\x{440}\x{443}\x{431}."
    },
    saq => {
        KES => 'Ksh'
    },
    sbp => {
        TZS => 'TSh'
    },
    se => {
        DKK => 'Dkr',
        EUR => "\x{20ac}",
        HKD => 'HK$',
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        MXN => 'MX$',
        NOK => 'kr',
        SEK => 'Skr',
        THB => "\x{e3f}"
    },
    seh => {
        MZN => 'MTn'
    },
    si => {
        LKR => "\x{dbb}\x{dd4}."
    },
    sk => {
        AUD => 'AUD',
        BRL => 'BRL',
        CAD => 'CAD',
        CNY => 'CNY',
        EUR => "\x{20ac}",
        GBP => 'GBP',
        HKD => 'HKD',
        ILS => "\x{20aa}",
        INR => 'INR',
        JPY => 'JPY',
        KRW => 'KRW',
        MXN => 'Mex$',
        NZD => 'NZ$',
        PLN => 'zl',
        THB => 'THB',
        TWD => 'TWD',
        USD => 'USD',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    sl => {
        CAD => 'CAD',
        JPY => "\x{a5}",
        USD => '$'
    },
    so => {
        SOS => 'S'
    },
    'so-DJ' => {
        DJF => 'Fdj'
    },
    'so-ET' => {
        ETB => 'Br'
    },
    'so-KE' => {
        KES => 'Ksh'
    },
    sq => {
        ALL => "Lek\x{eb}",
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'sq-MK' => {
        MKD => 'den'
    },
    sr => {
        AUD => 'A$',
        BAM => "\x{41a}\x{41c}",
        CNY => "CN\x{a5}",
        CZK => "\x{41a}\x{447}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        PLN => "\x{437}\x{43b}",
        RSD => "\x{434}\x{438}\x{43d}.",
        THB => "\x{e3f}",
        TRY => "\x{422}\x{43b}",
        TWD => 'NT$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'sr-Latn' => {
        AUD => 'A$',
        BAM => 'KM',
        CNY => "CN\x{a5}",
        CZK => "K\x{10d}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        PLN => 'zl',
        RSD => 'din.',
        THB => "\x{e3f}",
        TRY => 'Tl',
        TWD => 'NT$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ss => {
        SZL => 'E',
        ZAR => 'R'
    },
    ssy => {
        ERN => 'Nfk'
    },
    st => {
        ZAR => 'R'
    },
    'st-LS' => {
        LSL => 'M'
    },
    sv => {
        AUD => 'AU$',
        BBD => 'Bds$',
        BDT => 'Tk',
        BMD => 'BM$',
        BND => 'BN$',
        BRL => 'BR$',
        BSD => 'BS$',
        BZD => 'BZ$',
        CAD => 'CAN$',
        CNY => "CN\x{a5}",
        DKK => 'Dkr',
        DOP => 'RD$',
        EGP => "EG\x{a3}",
        EUR => "\x{20ac}",
        GBP => "GB\x{a3}",
        GYD => 'GY$',
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        ISK => 'Ikr',
        JMD => 'JM$',
        JPY => "JP\x{a5}",
        LVL => 'Ls',
        MXN => 'MX$',
        NOK => 'NKr',
        NZD => 'NZ$',
        SEK => 'kr',
        SYP => "SY\x{a3}",
        THB => "TH\x{e3f}",
        TWD => 'TW$',
        USD => 'US$',
        VND => "VN\x{20ab}",
        XCD => 'EC$'
    },
    sw => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KES => 'Ksh',
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        TZS => 'TSh',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'sw-UG' => {
        UGX => 'USh'
    },
    swc => {
        CDF => 'FC'
    },
    ta => {
        CAD => 'CA$',
        MXN => 'MX$',
        USD => '$',
        XCD => 'EC$',
        XOF => 'CFA'
    },
    'ta-LK' => {
        LKR => 'Rs.'
    },
    'ta-MY' => {
        MYR => 'RM',
        SGD => 'S$'
    },
    'ta-SG' => {
        MYR => 'RM',
        SGD => '$',
        USD => 'US$'
    },
    te => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    teo => {
        UGX => 'USh'
    },
    'teo-KE' => {
        KES => 'Ksh'
    },
    tg => {
        TJS => "\x{441}\x{43e}\x{43c}"
    },
    th => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ti => {
        ETB => 'Br'
    },
    'ti-ER' => {
        ERN => 'Nfk'
    },
    tig => {
        ERN => 'Nfk'
    },
    tn => {
        ZAR => 'R'
    },
    'tn-BW' => {
        BWP => 'P'
    },
    to => {
        TOP => 'T$'
    },
    tr => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TRY => "\x{20ba}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ts => {
        ZAR => 'R'
    },
    uk => {
        AUD => 'AU$',
        AZN => "\x{43c}\x{430}\x{43d}.",
        BRL => 'BRL',
        CAD => 'CAD',
        CNY => 'CNY',
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HKD',
        ILS => 'ILS',
        INR => 'INR',
        JPY => "\x{a5}",
        KRW => 'KRW',
        MXN => 'MXN',
        NZD => 'NZD',
        RSD => "\x{434}\x{438}\x{43d}.",
        RUB => "\x{440}\x{443}\x{431}.",
        THB => 'THB',
        TWD => 'TWD',
        UAH => "\x{20b4}",
        UAK => "\x{43a}\x{440}\x{431}.",
        USD => 'USD',
        VND => 'VND',
        XAF => 'FCFA',
        XCD => 'XCD',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    ur => {
        AUD => 'A$',
        PKR => 'Rs',
        USD => '$',
        XOF => 'CFA'
    },
    uz => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        UZS => "so\x{2bb}m",
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'uz-Arab' => {
        AFN => "\x{60b}"
    },
    'uz-Cyrl' => {
        AUD => 'A$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        UZS => "\x{441}\x{45e}\x{43c}",
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    vai => {
        LRD => '$'
    },
    'vai-Latn' => {
        LRD => '$'
    },
    ve => {
        ZAR => 'R'
    },
    vi => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{20a9}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    vun => {
        TZS => 'TSh'
    },
    wae => {
        JPY => "\x{a5}",
        RUB => "\x{440}\x{443}\x{431}",
        USD => '$'
    },
    wal => {
        ETB => 'Br'
    },
    xh => {
        ZAR => 'R'
    },
    xog => {
        UGX => 'USh'
    },
    yo => {
        NGN => "\x{20a6}"
    },
    'yo-BJ' => {
        NGN => "\x{20a6}"
    },
    zh => {
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "\x{ffe5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "JP\x{a5}",
        KRW => "\x{ffe6}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => 'US$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'zh-Hans-HK' => {
        HKD => '$'
    },
    'zh-Hans-MO' => {
        CNY => "CN\x{a5}",
        MOP => 'MOP$'
    },
    'zh-Hans-SG' => {
        CNY => "CN\x{a5}",
        SGD => '$'
    },
    'zh-Hant' => {
        ALK => 'ALK',
        AUD => 'AU$',
        BRL => 'R$',
        CAD => 'CA$',
        CNY => "CN\x{a5}",
        EUR => "\x{20ac}",
        GBP => "\x{a3}",
        HKD => 'HK$',
        ILR => 'ILR',
        ILS => "\x{20aa}",
        INR => "\x{20b9}",
        JPY => "\x{a5}",
        KRW => "\x{ffe6}",
        MXN => 'MX$',
        NZD => 'NZ$',
        THB => "\x{e3f}",
        TWD => 'NT$',
        USD => '$',
        VND => "\x{20ab}",
        XAF => 'FCFA',
        XCD => 'EC$',
        XOF => 'CFA',
        XPF => 'CFPF'
    },
    'zh-Hant-HK' => {
        HKD => '$',
        USD => 'US$'
    },
    'zh-Hant-MO' => {
        MOP => 'MOP$'
    },
    zu => {
        ZAR => 'R'
    }
};

our $CURRENCIES = {
    DEFAULT => {
        digits => 2,
        rounding => 0,
    },
    ADP => {
        digits => 0,
        rounding => 0,
    },
    AFN => {
        digits => 0,
        rounding => 0,
    },
    ALL => {
        digits => 0,
        rounding => 0,
    },
    AMD => {
        digits => 0,
        rounding => 0,
    },
    BHD => {
        digits => 3,
        rounding => 0,
    },
    BIF => {
        digits => 0,
        rounding => 0,
    },
    BYR => {
        digits => 0,
        rounding => 0,
    },
    CAD => {
        digits => 2,
        rounding => 0,
        cash_rounding => 5,
    },
    CHF => {
        digits => 2,
        rounding => 0,
        cash_rounding => 5,
    },
    CLF => {
        digits => 0,
        rounding => 0,
    },
    CLP => {
        digits => 0,
        rounding => 0,
    },
    COP => {
        digits => 0,
        rounding => 0,
    },
    CRC => {
        digits => 0,
        rounding => 0,
    },
    DJF => {
        digits => 0,
        rounding => 0,
    },
    ESP => {
        digits => 0,
        rounding => 0,
    },
    GNF => {
        digits => 0,
        rounding => 0,
    },
    GYD => {
        digits => 0,
        rounding => 0,
    },
    HUF => {
        digits => 0,
        rounding => 0,
    },
    IDR => {
        digits => 0,
        rounding => 0,
    },
    IQD => {
        digits => 0,
        rounding => 0,
    },
    IRR => {
        digits => 0,
        rounding => 0,
    },
    ISK => {
        digits => 0,
        rounding => 0,
    },
    ITL => {
        digits => 0,
        rounding => 0,
    },
    JOD => {
        digits => 3,
        rounding => 0,
    },
    JPY => {
        digits => 0,
        rounding => 0,
    },
    KMF => {
        digits => 0,
        rounding => 0,
    },
    KPW => {
        digits => 0,
        rounding => 0,
    },
    KRW => {
        digits => 0,
        rounding => 0,
    },
    KWD => {
        digits => 3,
        rounding => 0,
    },
    LAK => {
        digits => 0,
        rounding => 0,
    },
    LBP => {
        digits => 0,
        rounding => 0,
    },
    LUF => {
        digits => 0,
        rounding => 0,
    },
    LYD => {
        digits => 3,
        rounding => 0,
    },
    MGA => {
        digits => 0,
        rounding => 0,
    },
    MGF => {
        digits => 0,
        rounding => 0,
    },
    MMK => {
        digits => 0,
        rounding => 0,
    },
    MNT => {
        digits => 0,
        rounding => 0,
    },
    MRO => {
        digits => 0,
        rounding => 0,
    },
    MUR => {
        digits => 0,
        rounding => 0,
    },
    OMR => {
        digits => 3,
        rounding => 0,
    },
    PKR => {
        digits => 0,
        rounding => 0,
    },
    PYG => {
        digits => 0,
        rounding => 0,
    },
    RSD => {
        digits => 0,
        rounding => 0,
    },
    RWF => {
        digits => 0,
        rounding => 0,
    },
    SLL => {
        digits => 0,
        rounding => 0,
    },
    SOS => {
        digits => 0,
        rounding => 0,
    },
    STD => {
        digits => 0,
        rounding => 0,
    },
    SYP => {
        digits => 0,
        rounding => 0,
    },
    TMM => {
        digits => 0,
        rounding => 0,
    },
    TND => {
        digits => 3,
        rounding => 0,
    },
    TRL => {
        digits => 0,
        rounding => 0,
    },
    TZS => {
        digits => 0,
        rounding => 0,
    },
    TWD => {
        digits => 2,
        rounding => 0,
        cash_digits => 0,
        cash_rounding => 0,
    },
    UGX => {
        digits => 0,
        rounding => 0,
    },
    UZS => {
        digits => 0,
        rounding => 0,
    },
    VND => {
        digits => 0,
        rounding => 0,
    },
    VUV => {
        digits => 0,
        rounding => 0,
    },
    XAF => {
        digits => 0,
        rounding => 0,
    },
    XOF => {
        digits => 0,
        rounding => 0,
    },
    XPF => {
        digits => 0,
        rounding => 0,
    },
    YER => {
        digits => 0,
        rounding => 0,
    },
    ZMK => {
        digits => 0,
        rounding => 0,
    },
    ZWD => {
        digits => 0,
        rounding => 0,
    },
};

1;
