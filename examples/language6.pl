#
#  Set the environment LC_ALL variable to French,
#  but import with another lang.  Also use in classic mode.
#
$ENV{LC_ALL} = "de";

use Locales::Language ( "am" );

print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

Locales::Language::setLocale ( "de" );
print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

Locales::Language->setLocale ( "en" );
print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

Locales::Language::setLocale ( "fr" );
print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

Locales::Language::setLocale;  # no arg returns to import setting
print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";


__END__

=head1 NAME

language6.pl - Demonstration of L<Locales::Language> Functional Usage.

=head1 SYNOPSIS

./language6.pl

=head1 DESCRIPTION

This is the same script as language5.pl but with functional usage
demonstrated.

This is a simple demonstration script that shows how the top
level L<Locales::Language> module will override the environment LC_ALL
setting at import time.  Methods for resetting the default locale
are also demonstrated.  For example:

  $ENV{LC_ALL} = "de";             # reset environment locale.

  use Locales::Language ( "am" );  # override environment locale.

  print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

  Locales::Language::setLocale ( "fr" );
  print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

  Locales::Language::setLocale;    # no arg returns to import setting
  print Locales::Language::getLocale, " => ", code2language ( "en" ), "\n";

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Language>

=cut
