require Locales::Country::am;
require Locales::Country::de;
require Locales::Country::en;
require Locales::Country::fr;

my $am = new Locales::Country::am;
my $de = new Locales::Country::de;
my $en = new Locales::Country::en;
my $fr = new Locales::Country::fr;

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

country1.pl - Demonstration of Country Module OO Usage.

=head1 SYNOPSIS

./country1.pl

=head1 DESCRIPTION

This is a simple demonstration script that shows how country 
modules (locale really) can be used directly to instantiate
a L<Locales::Country> instance in the country supported by
the module.  The C<code2country> method is demonstrated.
For example:

  require Locales::Country::am;
  my $am = new Locales::Country::am;

  print $am->getLocale, " => ", $am->code2country ( "gb" ), "\n";

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Country::am>
L<Locales::Country::de>
L<Locales::Country::en>
L<Locales::Country::fr>

=cut
