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


__END__

=head1 NAME

country7.pl - Demonstration of Country Module C<country2code> Usage.

=head1 SYNOPSIS

./country7.pl

=head1 DESCRIPTION

THis is the same script as country1.pl but demonstrating
the C<country2code> method instead of C<code2country>.

This is a simple demonstration script that shows how country 
modules (locale really) can be used directly to instantiate
a L<Locales::Country> instance in the country supported by
the module.  The C<country2code> method is demonstrated.
For example:

  require Locales::Country::am;
  my $am = new Locales::Country::am;

  print $am->getLocale, " => ", $am->country2code ( "እንግሊዝ" ), "\n";

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Country::am>
L<Locales::Country::de>
L<Locales::Country::en>
L<Locales::Country::fr>

=cut
