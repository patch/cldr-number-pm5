package CLDR::Number::Data::System;

use v5.8.1;
use utf8;
use strict;
use warnings;

# This module does not have a publicly supported interface and may change in
# backward incompatible ways in the future. Please use one of the documented
# classes instead.

our $VERSION      = '0.11';
our $CLDR_VERSION = '27.0.1';

# Supplemental: Numbering Systems
our $DATA = {
    arab     => [qw( ٠ ١ ٢ ٣ ٤ ٥ ٦ ٧ ٨ ٩ )],
    arabext  => [qw( ۰ ۱ ۲ ۳ ۴ ۵ ۶ ۷ ۸ ۹ )],
    bali     => [qw( ᭐ ᭑ ᭒ ᭓ ᭔ ᭕ ᭖ ᭗ ᭘ ᭙ )],
    beng     => [qw( ০ ১ ২ ৩ ৪ ৫ ৬ ৭ ৮ ৯ )],
    cham     => [qw( ꩐ ꩑ ꩒ ꩓ ꩔ ꩕ ꩖ ꩗ ꩘ ꩙ )],
    deva     => [qw( ० १ २ ३ ४ ५ ६ ७ ८ ९ )],
    fullwide => [qw( ０ １ ２ ３ ４ ５ ６ ７ ８ ９ )],
    gujr     => [qw( ૦ ૧ ૨ ૩ ૪ ૫ ૬ ૭ ૮ ૯ )],
    guru     => [qw( ੦ ੧ ੨ ੩ ੪ ੫ ੬ ੭ ੮ ੯ )],
    hanidec  => [qw( 〇 一 二 三 四 五 六 七 八 九 )],
    java     => [qw( ꧐ ꧑ ꧒ ꧓ ꧔ ꧕ ꧖ ꧗ ꧘ ꧙ )],
    kali     => [qw( ꤀ ꤁ ꤂ ꤃ ꤄ ꤅ ꤆ ꤇ ꤈ ꤉ )],
    khmr     => [qw( ០ ១ ២ ៣ ៤ ៥ ៦ ៧ ៨ ៩ )],
    knda     => [qw( ೦ ೧ ೨ ೩ ೪ ೫ ೬ ೭ ೮ ೯ )],
    lana     => [qw( ᪀ ᪁ ᪂ ᪃ ᪄ ᪅ ᪆ ᪇ ᪈ ᪉ )],
    lanatham => [qw( ᪐ ᪑ ᪒ ᪓ ᪔ ᪕ ᪖ ᪗ ᪘ ᪙ )],
    laoo     => [qw( ໐ ໑ ໒ ໓ ໔ ໕ ໖ ໗ ໘ ໙ )],
    latn     => [qw( 0 1 2 3 4 5 6 7 8 9 )],
    lepc     => [qw( ᱀ ᱁ ᱂ ᱃ ᱄ ᱅ ᱆ ᱇ ᱈ ᱉ )],
    limb     => [qw( ᥆ ᥇ ᥈ ᥉ ᥊ ᥋ ᥌ ᥍ ᥎ ᥏ )],
    mlym     => [qw( ൦ ൧ ൨ ൩ ൪ ൫ ൬ ൭ ൮ ൯ )],
    mong     => [qw( ᠐ ᠑ ᠒ ᠓ ᠔ ᠕ ᠖ ᠗ ᠘ ᠙ )],
    mtei     => [qw( ꯰ ꯱ ꯲ ꯳ ꯴ ꯵ ꯶ ꯷ ꯸ ꯹ )],
    mymr     => [qw( ၀ ၁ ၂ ၃ ၄ ၅ ၆ ၇ ၈ ၉ )],
    mymrshan => [qw( ႐ ႑ ႒ ႓ ႔ ႕ ႖ ႗ ႘ ႙ )],
    nkoo     => [qw( ߀ ߁ ߂ ߃ ߄ ߅ ߆ ߇ ߈ ߉ )],
    olck     => [qw( ᱐ ᱑ ᱒ ᱓ ᱔ ᱕ ᱖ ᱗ ᱘ ᱙ )],
    orya     => [qw( ୦ ୧ ୨ ୩ ୪ ୫ ୬ ୭ ୮ ୯ )],
    saur     => [qw( ꣐ ꣑ ꣒ ꣓ ꣔ ꣕ ꣖ ꣗ ꣘ ꣙ )],
    sund     => [qw( ᮰ ᮱ ᮲ ᮳ ᮴ ᮵ ᮶ ᮷ ᮸ ᮹ )],
    talu     => [qw( ᧐ ᧑ ᧒ ᧓ ᧔ ᧕ ᧖ ᧗ ᧘ ᧙ )],
    tamldec  => [qw( ௦ ௧ ௨ ௩ ௪ ௫ ௬ ௭ ௮ ௯ )],
    telu     => [qw( ౦ ౧ ౨ ౩ ౪ ౫ ౬ ౭ ౮ ౯ )],
    thai     => [qw( ๐ ๑ ๒ ๓ ๔ ๕ ๖ ๗ ๘ ๙ )],
    tibt     => [qw( ༠ ༡ ༢ ༣ ༤ ༥ ༦ ༧ ༨ ༩ )],
    vaii     => [qw( ꘠ ꘡ ꘢ ꘣ ꘤ ꘥ ꘦ ꘧ ꘨ ꘩ )],
};

1;
