package Locales::Country::hi;
use utf8;

BEGIN
{
	use base qw( Locales::Country::Base     );
	use vars qw( %CODES %COUNTRIES $VERSION );

	$VERSION = "0.02";
}

__PACKAGE__->setData ( \%CODES, \%COUNTRIES, \*DATA );


1;


=head1 NAME

Locales::Country::hi - ISO 3166-1 Country Codes in Hindi.

=head1 SYNOPSIS

  require Locales::Country::hi;

  my $hi = new Locales::Country::hi;

  print "  ", $hi->getLocale, " => ", $hi->code2country ( "in" ), "\n";
  print "  ", $hi->getLocale, " => ", $hi->code2country ( "ind" ), "\n";
  print "  ", $hi->getLocale, " => ", $hi->code2country ( "356" ), "\n";

  print "  ", $hi->getLocale, " => ", $hi->country2code ( "भारत", "alpha2" ), "\n";
  print "  ", $hi->getLocale, " => ", $hi->country2code ( "भारत", "alpha3" ), "\n";
  print "  ", $hi->getLocale, " => ", $hi->country2code ( "भारत", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Hindi language ISO 3166-1
country codes.  All of the functions available in the Locale::Country
module are available here as class methods.

This module may be used indirectly through the L<Locales::Country> module
which also exports functions in the style of L<Locale::Country>.

Documentation remains under development.


=head1 COPYRIGHT

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=head1 BUGS

None presently known.

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Country>

Included with this package:

  examples/country*.pl

=cut


__DATA__
gr:grc:300:ग्रीस
gt:gtm:320:गोतेदाला
gw:gnb:624:गीनी-बिसाउ
gy:guy:328:गुयाना
hn:hnd:340:हाॅनडुरास
hr:hrv:191:क्रोशीया
ht:hti:332:हाईटी
hu:hun:348:हंगेरी
in:ind:356:भारत
pe:per:604:पेरू
tl:tls:626:ईस्ट टिमोर
tm:tkm:795:तुक्रमेनिस्तान
uy:ury:858:उरूगुए
va:vat:336:वाॅटिकन
vg:vgb:092:ब्रिटिश वर्जीन ऌईलैंडस्
vi:vir:850:ईउ, एस वर्जीन आईलैंडस्
vu:vut:548:सानुअतु
