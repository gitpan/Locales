#
#  Set the environment LC_ALL variable to French,
#  this sets the default language for the package.
#
$ENV{LC_ALL} = "fr_FR";

use Locales::Language;

my $am = new Locales::Language ( "am" );
my $de = new Locales::Language ( "de" );
my $en = new Locales::Language ( "en" );
my $fr = new Locales::Language;

print $am->getLocale, " => ", $am->code2language ( "en" ), "\n";
print $de->getLocale, " => ", $de->code2language ( "en" ), "\n";
print $en->getLocale, " => ", $en->code2language ( "en" ), "\n";
print $fr->getLocale, " => ", $fr->code2language ( "en" ), "\n";
