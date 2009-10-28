package Locales::Language::fr;
use utf8;

BEGIN
{
	use base qw( Locales::Language::Base    );
	use vars qw( %CODES %LANGUAGES $VERSION );

	$VERSION = "0.02";
}

__PACKAGE__->setData ( \%CODES, \%LANGUAGES, \*DATA );



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

=head1 THIS MODULE IS DEPRECATED

This POD documents the deprecated legacy system (pre v0.06)

New code should use the more modern, efficient, and CLDR based L<Locales> object system.

=head1 NAME

Locales::Language::fr - ISO 639 Language Codes in French.

=head1 SYNOPSIS

  require Locales::Language::fr;

  my $fr = new Locales::Language::fr;

  print "  ", $fr->getLocale, " => ", $fr->code2language ( "fr" ), "\n";
  print "  ", $fr->getLocale, " => ", $fr->language2code ( "Français" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to French language ISO 639
language codes.  All of the functions available in the Locale::Language
module are available here as class methods.

This module may be used indirectly through the L<Locales::Language> module
which also exports functions in the style of L<Locale::Language>.

Documentation remains under development.


=head1 COPYRIGHT

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=head1 BUGS

None presently known.

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Language>

Included with this package:

  examples/lang*.pl

=cut


__DATA__
aa:Afar
ab:Abkhaze
af:Afrikaans
am:Amharique
ar:Arabe
as:Assamais
ay:Aymara
az:Azéri
ba:Bachkir
be:Biélorusse
bg:Bulgare
bh:Bihari
bi:Bichlamar
bn:Bengali
bo:Tibétain
br:Breton
ca:Catalan
co:Corse
cs:Tchèque
cy:Gallois
da:Danois
de:Allemand
dz:Dzongkha
el:Grec
en:Anglais
eo:Espéranto
es:Espagnol
et:Estonien
eu:Basque
fa:Persan
fi:Finnois
fj:Fidjien
fo:Féroïen
fr:Français
fy:Frison
ga:Irlandais
gd:Ecossais gaélique
gl:Galicien
gn:Guarani
gu:Goudjrati
ha:Haoussa
he:Hébreu
hi:Hindi
hr:Croate
hu:Hongrois
hy:Arménien
ia:Interlingua
id:Indonésien
ie:Interlingue
ik:Inupiaq
is:Islandais
it:Italien
iu:Inuktitut
ja:Japonais
jv:Javanais
ka:Georgien
kk:Kazakh
kl:Groenlandais
km:Khmer
kn:Kannada
ko:Coréen
ks:Kashmiri
ku:Kurde
ky:Kirghize
la:Latin
ln:Lingala
lo:Lao
lt:Lithuanien
lv:Letton
mg:Malgache
mi:Maori
mk:Macédonien
ml:Malayalam
mn:Mongol
mo:Moldave
mr:Marathe
ms:Malais
mt:Maltais
my:Birman
na:Nauruan
ne:Népalais
nl:Hollandais
no:Norvégien
oc:Occitan
om:Galla
or:Oriya
pa:Pendjabi
pl:Polonais
ps:Pachto
pt:Portugais
qu:Quechua
rm:Rhétoroman
rn:Rundi
ro:Roumain
ru:Russe
rw:Rwanda
sa:Sanscrit
sd:Sindhi
sg:Sango
sh:Serbo-croate
si:Singhalais
sk:Slovaque
sl:Slovène
sm:Samoan
sn:Shona
so:Somali
sq:Albanais
sr:Serbe
ss:Swati
st:Sotho du sud
su:Soundanais
sv:Suédois
sw:Swahili
ta:Tamoul
te:Telugu
tg:Tadjik
th:Thaï
ti:Tigrigna
tk:Turkmène
tl:Tagalog
tn:Setswana
to:Tonga
tr:Turc
ts:Tsonga
tt:Tatare
tw:Twi
ug:Ouïgour
uk:Ukrainien
ur:Ourdou
uz:Ouzbek
vi:Vietnamien
vo:Volapük
wo:Wolof
xh:Xhosa
yi:Yiddish
yo:Yoruba
za:Zhuang
zh:Chinois
zu:Zoulou
