#
#  Set a default language at import time
#
use Locales::Language ( "am" );

my $am = new Locales::Language;
my $de = new Locales::Language ( "de" );
my $en = new Locales::Language ( "en" );
my $fr = new Locales::Language ( "fr" );

print $am->getLocale, " => ", $am->code2language ( "en" ), "\n";
print $de->getLocale, " => ", $de->code2language ( "en" ), "\n";
print $en->getLocale, " => ", $en->code2language ( "en" ), "\n";
print $fr->getLocale, " => ", $fr->code2language ( "en" ), "\n";
