#
#  Set a default country at import time
#
use Locales::Country ( "am" );

my $am = new Locales::Country;
my $de = new Locales::Country ( "de" );
my $en = new Locales::Country ( "en" );
my $fr = new Locales::Country ( "fr" );

print "Alpha 2 'gb':\n";
print "  ", $am->getLocale, " => ", $am->code2country ( "gb" ), "\n";
print "  ", $de->getLocale, " => ", $de->code2country ( "gb" ), "\n";
print "  ", $en->getLocale, " => ", $en->code2country ( "gb" ), "\n";
print "  ", $fr->getLocale, " => ", $fr->code2country ( "gb" ), "\n";

print "Alpha 3 'gbr':\n";
print "  ", $am->getLocale, " => ", $am->code2country ( "gbr" ), "\n";
print "  ", $de->getLocale, " => ", $de->code2country ( "gbr" ), "\n";
print "  ", $en->getLocale, " => ", $en->code2country ( "gbr" ), "\n";
print "  ", $fr->getLocale, " => ", $fr->code2country ( "gbr" ), "\n";

print "Numeric '826':\n";
print "  ", $am->getLocale, " => ", $am->code2country ( "826" ), "\n";
print "  ", $de->getLocale, " => ", $de->code2country ( "826" ), "\n";
print "  ", $en->getLocale, " => ", $en->code2country ( "826" ), "\n";
print "  ", $fr->getLocale, " => ", $fr->code2country ( "826" ), "\n";


__END__

=head1 NAME

country3.pl - Demonstration of L<Locales::Country> Import Usage.

=head1 SYNOPSIS

./country3.pl

=head1 DESCRIPTION

This is a simple demonstration script that shows how the top
level L<Locales::Country> module can be imported with a default
country set for the package at import time (overriding the LC_ALL
setting in the environment).  For example:

  use Locales::Country ( "am" );           # set default country to "am"

  my $am = new Locales::Country;           # applies default country
  my $de = new Locales::Country ( "de" );  # overrides default country

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Country>

=cut
