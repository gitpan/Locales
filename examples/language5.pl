#
#  Set the environment LC_ALL variable to French,
#  but import with another lang.  Also use in classic mode.
#
$ENV{LC_ALL} = "de";

use Locales::Language ( "am" );

my $l = new Locales::Language;
print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

$l->setLocale ( "de" );
print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

$l->setLocale ( "en" );
print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

$l->setLocale ( "fr" );
print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

$l->setLocale;  # no arg returns to the import setting
print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";


__END__

=head1 NAME

language5.pl - Demonstration of L<Locales::Language> C<setLocale> Usage.

=head1 SYNOPSIS

./language5.pl

=head1 DESCRIPTION

This is a simple demonstration script that shows how the top
level L<Locales::Language> module will override the environment LC_ALL
setting at import time.  Methods for resetting the default locale
are also demonstrated.  For example:

  $ENV{LC_ALL} = "de";             # reset environment locale.

  use Locales::Language ( "am" );  # override environment locale.

  my $l = new Locales::Language;
  print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

  $l->setLocale ( "fr" );          # reset default locale.
  print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

  $l->setLocale;                   # no arg returns to the import setting
  print $l->getLocale, " => ", $l->code2language ( "en" ), "\n";

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Language>

=cut
