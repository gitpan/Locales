#
#  Set the environment LC_ALL variable to French,
#  but import with another lang.  Also use in classic mode.
#
$ENV{LC_ALL} = "de";

use Locales::Language ( "am" );

print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

Locales::Language::setLocale ( "de" );
print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

Locales::Language->setLocale ( "en" );
print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

Locales::Language::setLocale ( "fr" );
print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

Locales::Language::setLocale;  # no arg returns to import setting
print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";
