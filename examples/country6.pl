#
#  Set the environment LC_ALL variable to French,
#  but import with another lang.  Also use in classic mode.
#
$ENV{LC_ALL} = "de";

use Locales::Country ( "am" );

print Locales::Country::getLocale, " => ", code2country ( "gb"  ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "gbr" ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "826" ), "\n";

Locales::Country::setLocale ( "de" );
print Locales::Country::getLocale, " => ", code2country ( "gb"  ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "gbr" ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "826" ), "\n";

Locales::Country->setLocale ( "en" );
print Locales::Country::getLocale, " => ", code2country ( "gb"  ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "gbr" ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "826" ), "\n";

Locales::Country::setLocale ( "fr" );
print Locales::Country::getLocale, " => ", code2country ( "gb"  ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "gbr" ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "826" ), "\n";

Locales::Country::setLocale;  # no arg returns to import setting
print Locales::Country::getLocale, " => ", code2country ( "gb"  ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "gbr" ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "826" ), "\n";
