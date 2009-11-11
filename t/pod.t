#!perl

use Test::More;
eval 'use Test::Pod 1.14';
plan $@ ? ('skip_all' => 'Test::Pod 1.14 required for testing POD coverage') : ('tests' => 1);
use Locales;
pod_file_ok( $INC{'Locales.pm'}, "Locales.pm is covered" );
# We don't really need POD for the mods that are essentially a databases
# all_pod_files_ok();
