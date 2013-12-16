use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name   => 'CLDR::Number',
    license       => 'perl',
    create_readme => 1,
    configure_requires => {
        'Module::Build' => '0.36',
    },
    build_requires => {
        'Pod::Man'        => '2.04',
        'Test::Exception' => '0.22',
        'Test::More'      => '0.82',
    },
    requires => {
        'perl'             => '5.8.1',
        'charnames'        => 0,
        'namespace::clean' => 0,
        'strict'           => 0,
        'utf8'             => 0,
        'warnings'         => 0,
        'Carp'             => 0,
        'English'          => 0,
        'Math::BigFloat'   => 0,
        'Math::Round'      => 0,
        'Moo'              => '1.000000',
        'Moo::Role'        => 0,
        'Scalar::Util'     => 0,
    },
    meta_merge => {
        resources => {
            repository => 'git://github.com/perl-cldr/cldr-number-perl5.git',
            homepage   => 'https://github.com/perl-cldr/cldr-number-perl5',
            bugtracker => 'https://github.com/perl-cldr/cldr-number-perl5/issues',
        },
    },
);

$builder->create_build_script;
