package Locales::Country::fr;
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

Locales::Country::fr - (DEPRECATED use L<Locales> instead) ISO 3166-1 Country Codes in French.

=head1 SYNOPSIS

  require Locales::Country::fr;

  my $fr = new Locales::Country::fr;

  print "  ", $fr->getLocale, " => ", $fr->code2country ( "fr" ), "\n";
  print "  ", $fr->getLocale, " => ", $fr->code2country ( "fra" ), "\n";
  print "  ", $fr->getLocale, " => ", $fr->code2country ( "250" ), "\n";

  print "  ", $fr->getLocale, " => ", $fr->country2code ( "France", "alpha2" ), "\n";
  print "  ", $fr->getLocale, " => ", $fr->country2code ( "France", "alpha3" ), "\n";
  print "  ", $fr->getLocale, " => ", $fr->country2code ( "France", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to French language ISO 3166-1
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
ad:and:020:Andorre
ae:are:784:Emirats Arabes Unis
al:alb:008:Albanie
am:arm:051:Arménie
an:ant:530:Antilles Néerlandaises
ar:arg:032:Argentine
at:aut:040:Autriche
au:aus:036:Australie
az:aze:031:Azerbaïdjan
ba:bih:070:Bosnie-Herzégovine
bb:brb:052:Barbade
be:bel:056:Belgique
bg:bgr:100:Bulgarie
bh:bhr:048:Bahreïn
bm:bmu:060:Bermudes
bo:bol:068:Bolivie
br:bra:076:Brésil
bt:btn:064:Bhoutan
by:blr:112:Biélo-Russie
bz:blz:084:Bélize
cf:caf:140:République Centre-Africaine
ch:che:756:Suisse
cl:chl:152:Chili
cm:cmr:120:Cameroun
cn:chn:156:Chine
co:col:170:Colombie
cv:cpv:132:Cap Vert
cy:cyp:196:Chypre
cz:cze:203:République Tchèque
de:deu:276:Allemagne
dk:dnk:208:Danemark
dm:dma:212:Dominique
do:dom:214:République Dominicaine
dz:dza:012:Algérie
ec:ecu:218:Equateur
ee:est:233:Estonie
eg:egy:818:Egypte
eh:esh:732:Sahara Occidental
er:eri:232:Erythrée
es:esp:724:Espagne
et:eth:231:Ethiopie
fi:fin:246:Finlande
fj:fji:242:Fidji
fm:fsm:583:Micronésie
fr:fra:250:France
gb:gbr:826:Royaume-Uni
ge:geo:268:Géorgie
gf:guf:254:Guinée Française
gm:gmb:270:Gambie
gn:gin:324:Guinée
gq:gnq:226:Guinée Equatoriale
gr:grc:300:Grèce
gw:gnb:624:Guinée-Bissau
gy:guy:328:Guyane
hk:hkg:344:Hong-Kong SAR
hr:hrv:191:Croatie
ht:hti:332:Haïti
hu:hun:348:Hongrie
id:idn:360:Indonésie
ie:irl:372:Irlande
il:isr:376:Israël
in:ind:356:Inde
iq:irq:368:Irak
is:isl:352:Islande
it:ita:380:Italie
jm:jam:388:Jamaïque
jo:jor:400:Jordanie
jp:jpn:392:Japon
kh:khm:116:Cambodge
km:com:174:Comores
kp:prk:408:Corée du Nord
kr:kor:410:Corée du Sud
kw:kwt:414:Koweit
lb:lbn:422:Liban
lt:ltu:440:Lithuanie
lv:lva:428:Lettonie
ly:lby:434:Libye
ma:mar:504:Maroc
md:mda:498:Moldavie
mk:mkd:807:Macédoine
mn:mng:496:Mongolie
mo:mac:446:Macao SAR
mr:mrt:478:Mauritanie
mt:mlt:470:Malte
mu:mus:480:Maurice
mx:mex:484:Mexique
my:mys:458:Malaisie
na:nam:516:Namibie
nc:ncl:540:Nouvelle-Calédonie
ng:nga:566:Nigéria
nl:nld:528:Pays-Bas
no:nor:578:Norvège
np:npl:524:Népal
nz:nzl:554:Nouvelle-Zélande
pe:per:604:Pérou
pf:pyf:258:Polynésie Française
pg:png:598:Papouasie-Nouvelle-Guinée
pl:pol:616:Pologne
pr:pri:630:Porto Rico
ro:rom:642:Roumanie
ru:rus:643:Russie
sa:sau:682:Arabie Saoudite
sd:sdn:736:Soudan
se:swe:752:Suède
sg:sgp:702:Singapour
si:svn:705:Slovénie
sk:svk:703:Slovaquie
sn:sen:686:Sénégal
so:som:706:Somalie
sp:::Serbie
sy:syr:760:Syrie
td:tcd:148:Tchad
tf:atf:260:Territoires Français du Sud
th:tha:764:Thaïlande
tj:tjk:762:Tadjikistan
tl:tls:626:Timor Oriental
tn:tun:788:Tunisie
tr:tur:792:Turquie
tt:tto:780:Trinité-et-Tobago
tz:tza:834:Tanzanie
ug:uga:800:Ouganda
us:usa:840:États-Unis
uz:uzb:860:Ouzbékistan
ve:ven:862:Vénézuela
vg:vgb:092:Iles Vierges Britanniques
vi:vir:850:Iles Vierges Américaines
ye:yem:887:Yémen
yu:yug:891:Yougoslavie
za:zaf:710:Afrique du Sud
zm:zmb:894:Zambie
zr:zar:180:Zaïre
