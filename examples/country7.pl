use utf8;
require Locales::Country::am;
require Locales::Country::de;
require Locales::Country::en;
require Locales::Country::fr;

my $am = new Locales::Country::am;
my $de = new Locales::Country::de;
my $en = new Locales::Country::en;
my $fr = new Locales::Country::fr;


print "Alpha 2:\n";
print "  ", $am->getLocale, " => ", $am->country2code ( "እንግሊዝ", "alpha2" ), "\n";
print "  ", $de->getLocale, " => ", $de->country2code ( "Vereinigtes Königreich", "alpha2" ), "\n";
print "  ", $en->getLocale, " => ", $en->country2code ( "United Kingdom", "alpha2" ), "\n";
print "  ", $fr->getLocale, " => ", $fr->country2code ( "Royaume-Uni", "alpha2" ), "\n";

print "Alpha 3:\n";
print "  ", $am->getLocale, " => ", $am->country2code ( "እንግሊዝ", "alpha3" ), "\n";
print "  ", $de->getLocale, " => ", $de->country2code ( "Vereinigtes Königreich", "alpha3" ), "\n";
print "  ", $en->getLocale, " => ", $en->country2code ( "United Kingdom", "alpha3" ), "\n";
print "  ", $fr->getLocale, " => ", $fr->country2code ( "Royaume-Uni", "alpha3" ), "\n";

print "Numeric:\n";
print "  ", $am->getLocale, " => ", $am->country2code ( "እንግሊዝ", "numeric" ), "\n";
print "  ", $de->getLocale, " => ", $de->country2code ( "Vereinigtes Königreich", "numeric" ), "\n";
print "  ", $en->getLocale, " => ", $en->country2code ( "United Kingdom", "numeric" ), "\n";
print "  ", $fr->getLocale, " => ", $fr->country2code ( "Royaume-Uni", "numeric" ), "\n";
