#
#  Set a default language at import time
#
use Locales::Language ( "am" );

my $am = new Locales::Language;
my $de = new Locales::Language ( "de" );
my $en = new Locales::Language ( "en" );
my $fr = new Locales::Language ( "fr" );

print $am->getLocale, " => ", $am->code2language ( "en" ), "\n";
print $de->getLocale, " => ", $de->code2language ( "en" ), "\n";
print $en->getLocale, " => ", $en->code2language ( "en" ), "\n";
print $fr->getLocale, " => ", $fr->code2language ( "en" ), "\n";


__END__

=head1 NAME

language3.pl - Demonstration of L<Locales::Language> Import Usage.

=head1 SYNOPSIS

./language3.pl

=head1 DESCRIPTION

This is a simple demonstration script that shows how the top
level L<Locales::Language> module can be imported with a default
language set for the package at import time (overriding the LC_ALL
setting in the environment).  For example:

  use Locales::Language ( "am" );           # set default language to "am"

  my $am = new Locales::Language;           # applies default language
  my $de = new Locales::Language ( "de" );  # overrides default language

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Language>

=cut
