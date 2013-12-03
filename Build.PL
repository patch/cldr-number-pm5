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
        'perl'           => '5.8.1',
        'strict'         => 0,
        'utf8'           => 0,
        'warnings'       => 0,
        'Carp'           => 0,
        'English'        => 0,
        'Math::BigFloat' => 0,
        'Math::Round'    => 0,
        'Moo'            => '1.000000',
        'Moo::Role'      => 0,
        'Scalar::Util'   => 0,
    },
);

$builder->create_build_script;
