package CLDR::Number::Data::System;

use v5.8.1;
use utf8;
use strict;
use warnings;

# This module does not have a publicly supported interface and may change in
# backward incompatible ways in the future. Please use one of the documented
# classes instead.

our $VERSION      = '0.13';
our $CLDR_VERSION = '28';

# Supplemental: Numbering Systems
our $DATA = {
    ahom     => [qw( 𑜰 𑜱 𑜲 𑜳 𑜴 𑜵 𑜶 𑜷 𑜸 𑜹 )],
    arab     => [qw( ٠ ١ ٢ ٣ ٤ ٥ ٦ ٧ ٨ ٩ )],
    arabext  => [qw( ۰ ۱ ۲ ۳ ۴ ۵ ۶ ۷ ۸ ۹ )],
    bali     => [qw( ᭐ ᭑ ᭒ ᭓ ᭔ ᭕ ᭖ ᭗ ᭘ ᭙ )],
    beng     => [qw( ০ ১ ২ ৩ ৪ ৫ ৬ ৭ ৮ ৯ )],
    brah     => [qw( 𑁦 𑁧 𑁨 𑁩 𑁪 𑁫 𑁬 𑁭 𑁮 𑁯 )],
    cakm     => [qw( 𑄶 𑄷 𑄸 𑄹 𑄺 𑄻 𑄼 𑄽 𑄾 𑄿 )],
    cham     => [qw( ꩐ ꩑ ꩒ ꩓ ꩔ ꩕ ꩖ ꩗ ꩘ ꩙ )],
    deva     => [qw( ० १ २ ३ ४ ५ ६ ७ ८ ९ )],
    fullwide => [qw( ０ １ ２ ３ ４ ５ ６ ７ ８ ９ )],
    gujr     => [qw( ૦ ૧ ૨ ૩ ૪ ૫ ૬ ૭ ૮ ૯ )],
    guru     => [qw( ੦ ੧ ੨ ੩ ੪ ੫ ੬ ੭ ੮ ੯ )],
    hanidec  => [qw( 〇 一 二 三 四 五 六 七 八 九 )],
    hmng     => [qw( 𖭐 𖭑 𖭒 𖭓 𖭔 𖭕 𖭖 𖭗 𖭘 𖭙 )],
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
    mathbold => [qw( 𝟎 𝟏 𝟐 𝟑 𝟒 𝟓 𝟔 𝟕 𝟖 𝟗 )],
    mathdbl  => [qw( 𝟘 𝟙 𝟚 𝟛 𝟜 𝟝 𝟞 𝟟 𝟠 𝟡 )],
    mathmono => [qw( 𝟶 𝟷 𝟸 𝟹 𝟺 𝟻 𝟼 𝟽 𝟾 𝟿 )],
    mathsanb => [qw( 𝟬 𝟭 𝟮 𝟯 𝟰 𝟱 𝟲 𝟳 𝟴 𝟵 )],
    mathsans => [qw( 𝟢 𝟣 𝟤 𝟥 𝟦 𝟧 𝟨 𝟩 𝟪 𝟫 )],
    mlym     => [qw( ൦ ൧ ൨ ൩ ൪ ൫ ൬ ൭ ൮ ൯ )],
    modi     => [qw( 𑙐 𑙑 𑙒 𑙓 𑙔 𑙕 𑙖 𑙗 𑙘 𑙙 )],
    mong     => [qw( ᠐ ᠑ ᠒ ᠓ ᠔ ᠕ ᠖ ᠗ ᠘ ᠙ )],
    mroo     => [qw( 𖩠 𖩡 𖩢 𖩣 𖩤 𖩥 𖩦 𖩧 𖩨 𖩩 )],
    mtei     => [qw( ꯰ ꯱ ꯲ ꯳ ꯴ ꯵ ꯶ ꯷ ꯸ ꯹ )],
    mymr     => [qw( ၀ ၁ ၂ ၃ ၄ ၅ ၆ ၇ ၈ ၉ )],
    mymrshan => [qw( ႐ ႑ ႒ ႓ ႔ ႕ ႖ ႗ ႘ ႙ )],
    mymrtlng => [qw( ꧰ ꧱ ꧲ ꧳ ꧴ ꧵ ꧶ ꧷ ꧸ ꧹ )],
    nkoo     => [qw( ߀ ߁ ߂ ߃ ߄ ߅ ߆ ߇ ߈ ߉ )],
    olck     => [qw( ᱐ ᱑ ᱒ ᱓ ᱔ ᱕ ᱖ ᱗ ᱘ ᱙ )],
    orya     => [qw( ୦ ୧ ୨ ୩ ୪ ୫ ୬ ୭ ୮ ୯ )],
    osma     => [qw( 𐒠 𐒡 𐒢 𐒣 𐒤 𐒥 𐒦 𐒧 𐒨 𐒩 )],
    saur     => [qw( ꣐ ꣑ ꣒ ꣓ ꣔ ꣕ ꣖ ꣗ ꣘ ꣙ )],
    shrd     => [qw( 𑇐 𑇑 𑇒 𑇓 𑇔 𑇕 𑇖 𑇗 𑇘 𑇙 )],
    sind     => [qw( 𑋰 𑋱 𑋲 𑋳 𑋴 𑋵 𑋶 𑋷 𑋸 𑋹 )],
    sinh     => [qw( ෦ ෧ ෨ ෩ ෪ ෫ ෬ ෭ ෮ ෯ )],
    sora     => [qw( 𑃰 𑃱 𑃲 𑃳 𑃴 𑃵 𑃶 𑃷 𑃸 𑃹 )],
    sund     => [qw( ᮰ ᮱ ᮲ ᮳ ᮴ ᮵ ᮶ ᮷ ᮸ ᮹ )],
    takr     => [qw( 𑛀 𑛁 𑛂 𑛃 𑛄 𑛅 𑛆 𑛇 𑛈 𑛉 )],
    talu     => [qw( ᧐ ᧑ ᧒ ᧓ ᧔ ᧕ ᧖ ᧗ ᧘ ᧙ )],
    tamldec  => [qw( ௦ ௧ ௨ ௩ ௪ ௫ ௬ ௭ ௮ ௯ )],
    telu     => [qw( ౦ ౧ ౨ ౩ ౪ ౫ ౬ ౭ ౮ ౯ )],
    thai     => [qw( ๐ ๑ ๒ ๓ ๔ ๕ ๖ ๗ ๘ ๙ )],
    tibt     => [qw( ༠ ༡ ༢ ༣ ༤ ༥ ༦ ༧ ༨ ༩ )],
    tirh     => [qw( 𑓐 𑓑 𑓒 𑓓 𑓔 𑓕 𑓖 𑓗 𑓘 𑓙 )],
    vaii     => [qw( ꘠ ꘡ ꘢ ꘣ ꘤ ꘥ ꘦ ꘧ ꘨ ꘩ )],
    wara     => [qw( 𑣠 𑣡 𑣢 𑣣 𑣤 𑣥 𑣦 𑣧 𑣨 𑣩 )],
};

1;
