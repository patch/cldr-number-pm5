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
CLDR
com
formatter
formatters
GitHub
LDML
nan
permil
preparsed
shutterstock
Shutterstock
subtag
superscripting
TODO
user’s
UTS
world’s
