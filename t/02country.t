# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

use Test::More qw(no_plan);
use strict;
use utf8;

use Locales::Country ( "en" );

is ( 1, 1, "loaded." );

is ( code2country ( "gb" ), "United Kingdom", "English UK Test 1" );

my $am = new Locales::Country ( "am" );
my $de = new Locales::Country ( "de" );
my $en = new Locales::Country;
my $fr = new Locales::Country ( "fr" );

is ( $am->code2country( "gb" ), "እንግሊዝ",   "Amharic UK Test 1" );
is ( $de->code2country( "gb" ), "Vereinigtes Königreich", "German UK Test 1"  );
is ( $en->code2country( "gb" ), "United Kingdom",  "English UK Test 2" );
is ( $fr->code2country( "gb" ), "Royaume-Uni",  "French UK Test 1"  );

is ( $am->code2country( "gbr" ), "እንግሊዝ",   "Amharic UK Test 2" );
is ( $de->code2country( "gbr" ), "Vereinigtes Königreich", "German UK Test 2"  );
is ( $en->code2country( "gbr" ), "United Kingdom",  "English UK Test 3" );
is ( $fr->code2country( "gbr" ), "Royaume-Uni",  "French UK Test 2"  );

is ( $am->code2country( "826" ), "እንግሊዝ",   "Amharic UK Test 3" );
is ( $de->code2country( "826" ), "Vereinigtes Königreich", "German UK Test 3"  );
is ( $en->code2country( "826" ), "United Kingdom",  "English UK Test 4" );
is ( $fr->code2country( "826" ), "Royaume-Uni",  "French UK Test 3"  );
