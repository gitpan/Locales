require Locales::Language::am;
require Locales::Language::de;
require Locales::Language::en;
require Locales::Language::fr;

my $am = new Locales::Language::am;
my $de = new Locales::Language::de;
my $en = new Locales::Language::en;
my $fr = new Locales::Language::fr;

print $am->getLocale, " => ", $am->code2language ( "en" ), "\n";
print $de->getLocale, " => ", $de->code2language ( "en" ), "\n";
print $en->getLocale, " => ", $en->code2language ( "en" ), "\n";
print $fr->getLocale, " => ", $fr->code2language ( "en" ), "\n";


__END__

=head1 NAME

language1.pl - Demonstration of Language Module OO Usage.

=head1 SYNOPSIS

./language1.pl

=head1 DESCRIPTION

This is a simple demonstration script that shows how language 
modules (locale really) can be used directly to instantiate
a L<Locales::Language> instance in the language supported by
the module.  The C<code2language> method is demonstrated.
For example:

  require Locales::Language::am;
  my $am = new Locales::Language::am;

  print $am->getLocale, " => ", $am->code2language ( "en" ), "\n";

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Language::am>
L<Locales::Language::de>
L<Locales::Language::en>
L<Locales::Language::fr>

=cut
