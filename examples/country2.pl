require Locales::Country;

my $am = new Locales::Country ( "am" );
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

country2.pl - Demonstration of L<Locales::Country> OO Usage.

=head1 SYNOPSIS

./country2.pl

=head1 DESCRIPTION

This is a simple demonstration script that shows how the top
level L<Locales::Country> module can be used to instantiate
a new object set for a supported country passed as an argument
at creation time.  For example:

  require Locales::Country;
  my $am = new Locales::Country ( "am" );

  print $am->getLocale, " => ", $am->code2country ( "gb" ), "\n";

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Country>

=cut
