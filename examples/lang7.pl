use utf8;
require Locales::Language::am;
require Locales::Language::de;
require Locales::Language::en;
require Locales::Language::fr;

my $am = new Locales::Language::am;
my $de = new Locales::Language::de;
my $en = new Locales::Language::en;
my $fr = new Locales::Language::fr;

print $am->getLocale, " => ", $am->language2code ( "እንግሊዝኛ" ), "\n";
print $de->getLocale, " => ", $de->language2code ( "Englisch" ), "\n";
print $en->getLocale, " => ", $en->language2code ( "English" ), "\n";
print $fr->getLocale, " => ", $fr->language2code ( "Anglais" ), "\n";
