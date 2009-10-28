package Locales::Country::es;
use utf8;

BEGIN
{
	use base qw( Locales::Country::Base     );
	use vars qw( %CODES %COUNTRIES $VERSION );

	$VERSION = "0.02";
}

__PACKAGE__->setData ( \%CODES, \%COUNTRIES, \*DATA );


1;

=head1 THIS MODULE IS DEPRECATED

This POD documents the deprecated legacy system (pre v0.06)

New code should use the more modern, efficient, and CLDR based L<Locales> object system.

=head1 NAME

Locales::Country::es - ISO 3166-1 Country Codes in Spanish.

=head1 SYNOPSIS

  require Locales::Country::es;

  my $es = new Locales::Country::es;

  print "  ", $es->getLocale, " => ", $es->code2country ( "es" ), "\n";
  print "  ", $es->getLocale, " => ", $es->code2country ( "esp" ), "\n";
  print "  ", $es->getLocale, " => ", $es->code2country ( "724" ), "\n";

  print "  ", $es->getLocale, " => ", $es->country2code ( "España", "alpha2" ), "\n";
  print "  ", $es->getLocale, " => ", $es->country2code ( "España", "alpha3" ), "\n";
  print "  ", $es->getLocale, " => ", $es->country2code ( "España", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Spanish language ISO 3166-1
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
ae:are:784:Emiratos Árabes Unidos
as:asm:016:Samoa Americana
be:bel:056:Bélgica
bh:bhr:048:Bahráin
br:bra:076:Brasil
by:blr:112:Bielorrusia
bz:blz:084:Belice
ca:can:124:Canadá
ch:che:756:Suiza
cz:cze:203:Chequia
de:deu:276:Alemania
dk:dnk:208:Dinamarca
do:dom:214:República Dominicana
dz:dza:012:Argelia
eg:egy:818:Egipto
es:esp:724:España
fi:fin:246:Finlandia
fo:fro:234:Islas Feroe
fr:fra:250:Francia
gb:gbr:826:Reino Unido
gl:grl:304:Groenlanida
gr:grc:300:Grecia
hr:hrv:191:Croacia
hu:hun:348:Hungría
ie:irl:372:Irlanda
iq:irq:368:Irak
ir:irn:364:Irán
is:isl:352:Islandia
it:ita:380:Italia
jo:jor:400:Jordania
jp:jpn:392:Japón
ke:ken:404:Kenia
kp:prk:408:Corea del Norte
kr:kor:410:Corea del Sur
lb:lbn:422:Líbano
lt:ltu:440:Lituania
lu:lux:442:Luxemburgo
lv:lva:428:Letonia
ma:mar:504:Marruecos
mh:mhl:584:Islas Marshall
mp:mnp:580:Islas Marianas del Norte
mx:mex:484:México
nl:nld:528:Países Bajos
no:nor:578:Noruega
nz:nzl:554:Nueva Zelanda
om:omn:512:Omán
pa:pan:591:Panamá
pe:per:604:Perú
ph:phl:608:Islas Filipinas
pk:pak:586:Pakistán
pl:pol:616:Polonia
ro:rom:642:Rumania
ru:rus:643:Rusia
sa:sau:682:Arabia Saudí
sd:sdn:736:Sudán
se:swe:752:Suecia
sg:sgp:702:Singapur
si:svn:705:Eslovenia
sk:svk:703:Eslovaquia
sp:::Servia
sy:syr:760:Siria
th:tha:764:Tailandia
tn:tun:788:Túnez
tr:tur:792:Turquía
tt:tto:780:Trinidad y Tabago
tw:twn:158:Taiwán
ua:ukr:804:Ucraina
um:umi:581:Islas Periféricas Menores de los Estados Unidos
us:usa:840:Estados Unidos
vi:vir:850:Islas Vírgenes de los Estados Unidos
za:zaf:710:Sudáfrica
