#
#  Set the environment LC_ALL variable to French,
#  but import with another lang.  Also use in classic mode.
#
$ENV{LC_ALL} = "de";

use Locales::Language ( "am" );

my $l = new Locales::Language;
print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

$l->setLocale ( "de" );
print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

$l->setLocale ( "en" );
print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

$l->setLocale ( "fr" );
print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

$l->setLocale;  # no arg returns to the import setting
print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";
