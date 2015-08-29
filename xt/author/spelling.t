use utf8;
use strict;
use warnings;
use Test::More;

eval 'use Test::Spelling';
plan skip_all => 'Test::Spelling not installed; skipping' if $@;

# Test::Spelling only supports byte strings, not character strings :(
binmode DATA, ':bytes';

add_stopwords(<DATA>);
all_pod_files_spelling_ok();

__DATA__
BHD
bn
CHF
CLDR
com
de
en
formatter
formatters
fr
GitHub
Hant
Indic
instantiation
JPY
ko
LDML
mille
MX
nan
nl
permil
preparsed
ru
shutterstock
Shutterstock
subtag
superscripting
TODO
TWD
USD
user’s
UTS
world’s
zh
