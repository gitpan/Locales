require Locales::Language;

my $am = new Locales::Language ( "am" );
my $de = new Locales::Language ( "de" );
my $en = new Locales::Language ( "en" );
my $fr = new Locales::Language ( "fr" );

print $am->getLocale, " => ", $am->code2language ( "en" ), "\n";
print $de->getLocale, " => ", $de->code2language ( "en" ), "\n";
print $en->getLocale, " => ", $en->code2language ( "en" ), "\n";
print $fr->getLocale, " => ", $fr->code2language ( "en" ), "\n";


__END__

=head1 NAME

language2.pl - Demonstration of L<Locales::Language> OO Usage.

=head1 SYNOPSIS

./language2.pl

=head1 DESCRIPTION

This is a simple demonstration script that shows how the top
level L<Locales::Language> module can be used to instantiate
a new object set for a supported language passed as an argument
at creation time.  For example:

  require Locales::Language;
  my $am = new Locales::Language ( "am" );

  print $am->getLocale, " => ", $am->code2language ( "en" ), "\n";

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Language>

=cut
