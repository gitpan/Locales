package Locales::Country::fi;
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

Locales::Country::fi - ISO 3166-1 Country Codes in Finnish.

=head1 SYNOPSIS

  require Locales::Country::fi;

  my $fi = new Locales::Country::fi;

  print "  ", $fi->getLocale, " => ", $fi->code2country ( "fi" ), "\n";
  print "  ", $fi->getLocale, " => ", $fi->code2country ( "fin" ), "\n";
  print "  ", $fi->getLocale, " => ", $fi->code2country ( "246" ), "\n";

  print "  ", $fi->getLocale, " => ", $fi->country2code ( "Suomi", "alpha2" ), "\n";
  print "  ", $fi->getLocale, " => ", $fi->country2code ( "Suomi", "alpha3" ), "\n";
  print "  ", $fi->getLocale, " => ", $fi->country2code ( "Suomi", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Finnish language ISO 3166-1
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
ae:are:784:Yhdistyneet Arabiemiraatit
at:aut:040:Itävalta
ba:bih:070:Bosnia
be:bel:056:Belgia
br:bra:076:Brasilia
by:blr:112:Valko-Venäjä
ca:can:124:Kanada
ch:che:756:Sveitsi
cn:chn:156:Kiina
co:col:170:Kolumbia
cz:cze:203:Tsekin tasavalta
de:deu:276:Saksa
dk:dnk:208:Tanska
do:dom:214:Dominikaaninen tasavalta
ec:ecu:218:Equador
ee:est:233:Viro
eg:egy:818:Egypti
es:esp:724:Espanja
fi:fin:246:Suomi
fr:fra:250:Ranska
gb:gbr:826:Iso-Britannia
gr:grc:300:Kreikka
hk:hkg:344:Hongknog, erit.hall.alue
hr:hrv:191:Kroatia
hu:hun:348:Unkari
ie:irl:372:Irlanti
in:ind:356:Intia
is:isl:352:Islanti
it:ita:380:Italia
jo:jor:400:Jordania
jp:jpn:392:Japani
kr:kor:410:Korea
la:lao:418:Latinalainen Amerikka
lb:lbn:422:Libanon
lt:ltu:440:Liettua
lu:lux:442:Luxemburg
ma:mar:504:Marokko
mk:mkd:807:Makedonia (FYR)
mo:mac:446:Macao, erit.hall.alue
mx:mex:484:Meksiko
nl:nld:528:Alankomaat
no:nor:578:Norja
nz:nzl:554:Uusi Seelanti
pl:pol:616:Puola
pt:prt:620:Portugali
ru:rus:643:Venäjä
sa:sau:682:Saudi-Arabia
se:swe:752:Ruotsi
sy:syr:760:Syyria
th:tha:764:Thaimaa
tr:tur:792:Turkki
ua:ukr:804:Ukraina
us:usa:840:Yhdysvallat
ye:yem:887:Jemen
za:zaf:710:Etelä-Afrikka
