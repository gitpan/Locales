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


__END__

=head1 NAME

language7.pl - Demonstration of Language Module C<language2code> Usage.

=head1 SYNOPSIS

./language7.pl

=head1 DESCRIPTION

THis is the same script as language1.pl but demonstrating
the C<language2code> method instead of C<code2language>.

This is a simple demonstration script that shows how language 
modules (locale really) can be used directly to instantiate
a L<Locales::Language> instance in the language supported by
the module.  The C<language2code> method is demonstrated.
For example:

  require Locales::Language::am;
  my $am = new Locales::Language::am;

  print $am->getLocale, " => ", $am->language2code ( "እንግሊዝኛ" ), "\n";

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Language::am>
L<Locales::Language::de>
L<Locales::Language::en>
L<Locales::Language::fr>

=cut
