#
#  Set the environment LC_ALL variable to French,
#  but import with another lang.  Also use in classic mode.
#
$ENV{LC_ALL} = "de";

use Locales::Country ( "am" );

my $l = new Locales::Country;
print $l->getLocale, " => ", $l->code2country ( "gb"  ), "\n";
print $l->getLocale, " => ", $l->code2country ( "gbr" ), "\n";
print $l->getLocale, " => ", $l->code2country ( "826" ), "\n";

$l->setLocale ( "de" );
print $l->getLocale, " => ", $l->code2country ( "gb"  ), "\n";
print $l->getLocale, " => ", $l->code2country ( "gbr" ), "\n";
print $l->getLocale, " => ", $l->code2country ( "826" ), "\n";

$l->setLocale ( "en" );
print $l->getLocale, " => ", $l->code2country ( "gb"  ), "\n";
print $l->getLocale, " => ", $l->code2country ( "gbr" ), "\n";
print $l->getLocale, " => ", $l->code2country ( "826" ), "\n";

$l->setLocale ( "fr" );
print $l->getLocale, " => ", $l->code2country ( "gb"  ), "\n";
print $l->getLocale, " => ", $l->code2country ( "gbr" ), "\n";
print $l->getLocale, " => ", $l->code2country ( "826" ), "\n";

$l->setLocale;  # no arg returns to the import setting
print $l->getLocale, " => ", $l->code2country ( "gb"  ), "\n";
print $l->getLocale, " => ", $l->code2country ( "gbr" ), "\n";
print $l->getLocale, " => ", $l->code2country ( "826" ), "\n";
