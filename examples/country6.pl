#
#  Set the environment LC_ALL variable to French,
#  but import with another lang.  Also use in classic mode.
#
$ENV{LC_ALL} = "de";

use Locales::Country ( "am" );

print Locales::Country::getLocale, " => ", code2country ( "gb"  ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "gbr" ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "826" ), "\n";

Locales::Country::setLocale ( "de" );
print Locales::Country::getLocale, " => ", code2country ( "gb"  ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "gbr" ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "826" ), "\n";

Locales::Country->setLocale ( "en" );
print Locales::Country::getLocale, " => ", code2country ( "gb"  ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "gbr" ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "826" ), "\n";

Locales::Country::setLocale ( "fr" );
print Locales::Country::getLocale, " => ", code2country ( "gb"  ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "gbr" ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "826" ), "\n";

Locales::Country::setLocale;  # no arg returns to import setting
print Locales::Country::getLocale, " => ", code2country ( "gb"  ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "gbr" ), "\n";
print Locales::Country::getLocale, " => ", code2country ( "826" ), "\n";


__END__

=head1 NAME

country6.pl - Demonstration of L<Locales::Country> Functional Usage.

=head1 SYNOPSIS

./country6.pl

=head1 DESCRIPTION

This is the same script as country5.pl but with functional usage
demonstrated.

This is a simple demonstration script that shows how the top
level L<Locales::Country> module will override the environment LC_ALL
setting at import time.  Methods for resetting the default locale
are also demonstrated.  For example:

  $ENV{LC_ALL} = "de";            # reset environment locale.

  use Locales::Country ( "am" );  # override environment locale.

  print Locales::Country::getLocale, " => ", code2country ( "gb" ), "\n";

  Locales::Country::setLocale ( "fr" );
  print Locales::Country::getLocale, " => ", code2country ( "gb" ), "\n";

  Locales::Country::setLocale;    # no arg returns to import setting
  print Locales::Country::getLocale, " => ", code2country ( "gb" ), "\n";

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Country>

=cut
