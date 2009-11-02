use Test::More;plan skip_all => 'Skipping deprecated system tests since they break on some systems';

# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# use Test::More qw(no_plan);
# use strict;
# use utf8;
#
# use Locales::Language ( "en" );
# 
# is ( 1, 1, "loaded." );
# 
# is ( code2language ( "en" ), "English", "English English Test 1" );
# 
# my $am = new Locales::Language ( "am" );
# my $de = new Locales::Language ( "de" );
# my $en = new Locales::Language;
# my $fr = new Locales::Language ( "fr" );
# 
# is ( $am->code2language ( "en" ), "እንግሊዝኛ",   "Amharic English Test 1" );
# is ( $de->code2language ( "en" ), "Englisch", "German English Test 1"  );
# is ( $en->code2language ( "en" ), "English",  "English English Test 2" );
# is ( $fr->code2language ( "en" ), "Anglais",  "French English Test 1"  );
