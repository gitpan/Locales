#
#  Set the environment LC_ALL variable to French,
#  this sets the default language for the package.
#
$ENV{LC_ALL} = "fr_FR";

require Locales::Language;

my $am = new Locales::Language ( "am" );
my $de = new Locales::Language ( "de" );
my $en = new Locales::Language ( "en" );
my $fr = new Locales::Language;

print $am->getLocale, " => ", $am->code2language ( "en" ), "\n";
print $de->getLocale, " => ", $de->code2language ( "en" ), "\n";
print $en->getLocale, " => ", $en->code2language ( "en" ), "\n";
print $fr->getLocale, " => ", $fr->code2language ( "en" ), "\n";


__END__

=head1 NAME

language4.pl - Demonstration of L<Locales::Language> w/ Environment Variables.

=head1 SYNOPSIS

./language4.pl

=head1 DESCRIPTION

This is a simple demonstration script that shows how the top
level L<Locales::Language> module will apply the environment LC_ALL
setting if set (LC_ALL, LANG and LANGUAGE are always checked in this
order).  For example:

  $ENV{LC_ALL} = "fr_FR";                   # reset environment locale.

  require Locales::Language;

  my $fr = new Locales::Language;           # environemnet locale used.
  my $de = new Locales::Language ( "de" );  # overrides default language.

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Language>

=cut
