#!/usr/bin/perl
use v5.10;
use utf8;
use warnings;
use open qw( :encoding(UTF-8) :std );
use JSON qw( decode_json );

my $cldr_dir = shift || '';

my $version          = '0.09_01';
my $system_cldr_file = "supplemental/numberingSystems.json";
my $system_pm_file   = 'lib/CLDR/Number/Data/System.pm';

$system_cldr_file = "$cldr_dir/$system_cldr_file";

open my $system_cldr_fh, '<', $system_cldr_file
    or die "Can't open $system_cldr_file: $!";

binmode $system_cldr_fh, ':bytes';
my $system_cldr_data = decode_json(
    do { local $/; <$system_cldr_fh> }
)->{supplemental};

close $system_cldr_fh
    or die "Can't close $system_cldr_file: $!";

my $cldr_version = $system_cldr_data->{version}{_cldrVersion};
my %systems      = %{$system_cldr_data->{numberingSystems}};

my $system_perl_data
    = join "\n",
      map { sprintf '    % -8s => [qw( %s )],', $_, join ' ',
                                                    split //,
                                                    $systems{$_}{_digits}
      }
      sort
      grep { $systems{$_}{_type} eq 'numeric' }
      keys %systems;

open my $system_pm_fh, '>', $system_pm_file
    or die "Can't open $system_pm_file: $!";

printf {$system_pm_fh} <<'END_PM', $version, $cldr_version, $system_perl_data;
package CLDR::Number::Data::System;

use v5.8.1;
use utf8;
use strict;
use warnings;

# Supplemental Data: Numbering Systems

# This module does not have a publicly supported interface and may change in
# backward incompatible ways in the future. Please use one of the documented
# classes instead.

our $VERSION      = '%s';
our $CLDR_VERSION = '%s';

our $DATA = {
%s
};

1;
END_PM

close $system_pm_fh
    or die "Can't close $system_pm_file: $!";