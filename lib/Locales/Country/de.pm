package Locales::Country::de;
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

Locales::Country::de - ISO 3166-1 Country Codes in German.

=head1 SYNOPSIS

  require Locales::Country::de;

  my $de = new Locales::Country::de;

  print "  ", $de->getLocale, " => ", $de->code2country ( "gb" ), "\n";
  print "  ", $de->getLocale, " => ", $de->code2country ( "gbr" ), "\n";
  print "  ", $de->getLocale, " => ", $de->code2country ( "826" ), "\n";

  print "  ", $de->getLocale, " => ", $de->country2code ( "Vereinigtes Königreich", "alpha2" ), "\n";
  print "  ", $de->getLocale, " => ", $de->country2code ( "Vereinigtes Königreich", "alpha3" ), "\n";
  print "  ", $de->getLocale, " => ", $de->country2code ( "Vereinigtes Königreich", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to German language ISO 3166-1
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
ae:are:784:Vereinigte Arabische Emirate
ag:atg:028:Antigua und Barbuda
al:alb:008:Albanien
am:arm:051:Armenien
an:ant:530:Niederländische Antillen
aq:ata:010:Antarktis
ar:arg:032:Argentinien
as:asm:016:Amerikanisch-Samoa
at:aut:040:Österreich
au:aus:036:Australien
az:aze:031:Aserbaidschan
ba:bih:070:Bosnien und Herzegowina
bd:bgd:050:Bangladesch
be:bel:056:Belgien
bg:bgr:100:Bulgarien
bn:brn:096:Brunei Darussalam
bo:bol:068:Bolivien
br:bra:076:Brasilien
bv:bvt:074:Bouvetinsel
bw:bwa:072:Botsuana
ca:can:124:Kanada
cc:cck:166:Kokosinseln
cd:::Demokratische Republik Kongo
cf:caf:140:Zentralafrikanische Republik
cg:cog:178:Kongo
ch:che:756:Schweiz
ci:civ:384:Côte dIvoire
ck:cok:184:Cookinseln
cm:cmr:120:Kamerun
co:col:170:Kolumbien
cu:cub:192:Kuba
cv:cpv:132:Kap Verde
cx:cxr:162:Weihnachtsinsel
cy:cyp:196:Zypern
cz:cze:203:Tschechien
de:deu:276:Deutschland
dj:dji:262:Dschibuti
dk:dnk:208:Dänemark
do:dom:214:Dominikanische Republik
dz:dza:012:Algerien
ee:est:233:Estland
eg:egy:818:Ägypten
es:esp:724:Spanien
et:eth:231:Äthiopien
fi:fin:246:Finnland
fj:fji:242:Fidschi
fk:flk:238:Falklandinseln
fm:fsm:583:Mikronesien
fo:fro:234:Färöer
fr:fra:250:Frankreich
ga:gab:266:Gabun
gb:gbr:826:Vereinigtes Königreich
ge:geo:268:Georgien
gf:guf:254:Französisch-Guayana
gl:grl:304:Grönland
gq:gnq:226:Äquatorialguinea
gr:grc:300:Griechenland
gs:sgs:239:Südgeorgien und die Südlichen Sandwichinseln
hm:hmd:334:Heard und McDonaldinseln
hr:hrv:191:Kroatien
hu:hun:348:Ungarn
id:idn:360:Indonesien
ie:irl:372:Irland
in:ind:356:Indien
io:iot:086:Britisches Territorium im Indischen Ozean
iq:irq:368:Irak
is:isl:352:Island
it:ita:380:Italien
jm:jam:388:Jamaika
jo:jor:400:Jordanien
ke:ken:404:Kenia
kg:kgz:417:Kirgisistan
kh:khm:116:Kambodscha
km:com:174:Komoren
kn:kna:659:St. Kitts und Nevis
kp:prk:408:Demokratische Volksrepublik Korea
kr:kor:410:Republik Korea
ky:cym:136:Kaimaninseln
kz:kaz:398:Kasachstan
lb:lbn:422:Libanon
lc:lca:662:St. Lucia
lt:ltu:440:Litauen
lu:lux:442:Luxemburg
lv:lva:428:Lettland
ly:lby:434:Libyen
ma:mar:504:Marokko
md:mda:498:Moldawien
mg:mdg:450:Madagaskar
mh:mhl:584:Marshallinseln
mk:mkd:807:Mazedonien
mn:mng:496:Mongolei
mo:mac:446:Macau S.A.R.,China
mp:mnp:580:Nördliche Marianen
mr:mrt:478:Mauretanien
mv:mdv:462:Malediven
mx:mex:484:Mexiko
mz:moz:508:Mosambik
nc:ncl:540:Neukaledonien
nf:nfk:574:Norfolkinsel
nl:nld:528:Niederlande
no:nor:578:Norwegen
nz:nzl:554:Neuseeland
pf:pyf:258:Französisch-Polynesien
pg:png:598:Papua-Neuguinea
ph:phl:608:Philippinen
pl:pol:616:Polen
pm:spm:666:St. Pierre und Miquelon
qa:qat:634:Katar
ro:rom:642:Rumänien
ru:rus:643:Russland
rw:rwa:646:Ruanda
sa:sau:682:Saudi-Arabien
sb:slb:090:Salomonen
sc:syc:690:Seychellen
se:swe:752:Schweden
sg:sgp:702:Singapur
sh:shn:654:St. Helena
si:svn:705:Slowenien
sj:sjm:744:Svalbard und Jan Mayen
sk:svk:703:Slowakei
sp:::Serbien
st:stp:678:São Tomé und Príncipe
sy:syr:760:Syrien
sz:swz:748:Swasiland
tc:tca:796:Turks- und Caicosinseln
td:tcd:148:Tschad
tf:atf:260:Französische Süd- und Antarktisgebiete
tj:tjk:762:Tadschikistan
tn:tun:788:Tunesien
tr:tur:792:Türkei
tt:tto:780:Trinidad und Tobago
tz:tza:834:Tansania
um:umi:581:Amerikanisch-Ozeanien
us:usa:840:Vereinigte Staaten
uz:uzb:860:Usbekistan
va:vat:336:Vatikanstadt
vc:vct:670:St. Vincent und die Grenadinen
vg:vgb:092:Britische Jungferninseln
vi:vir:850:Amerikanische Jungferninseln
wf:wlf:876:Wallis und Futuna
ye:yem:887:Jemen
yu:yug:891:Jugoslawien
za:zaf:710:Südafrika
zm:zmb:894:Sambia
zw:zwe:716:Simbabwe
