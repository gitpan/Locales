#
#  Set the environment LC_ALL variable to French,
#  this sets the default country for the package.
#
$ENV{LC_ALL} = "fr_FR";

use Locales::Country;

my $am = new Locales::Country ( "am" );
my $de = new Locales::Country ( "de" );
my $en = new Locales::Country ( "en" );
my $fr = new Locales::Country;

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

country4.pl - Demonstration of L<Locales::Country> w/ Environment Variables.

=head1 SYNOPSIS

./country4.pl

=head1 DESCRIPTION

This is a simple demonstration script that shows how the top
level L<Locales::Country> module will apply the environment LC_ALL
setting if set (LC_ALL, LANG and LANGUAGE are always checked in this
order).  For example:

  $ENV{LC_ALL} = "fr_FR";                  # reset environment locale.

  require Locales::Country;

  my $fr = new Locales::Country;           # environemnet locale used.
  my $de = new Locales::Country ( "de" );  # overrides default country.

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Country>

=cut
