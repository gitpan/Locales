package Locales::Language::es;
use utf8;

BEGIN
{
	use base qw( Locales::Language::Base    );
	use vars qw( %CODES %LANGUAGES $VERSION );

	$VERSION = "0.02";
}

__PACKAGE__->setData ( \%CODES, \%LANGUAGES, \*DATA );


1;
__DATA__
af:Afrikaans
am:Amharic
ar:Árabe
az:Azerbayano
be:Bielorruso
bg:Búlgaro
bh:Bihari
bn:Bengalí
ca:Catalán
cs:Checo
da:Danés
de:Alemán
el:Griego
en:Inglés
eo:Esperanto
es:Español
et:Estonio
eu:Vasco
fa:Farsi
fi:Finlandés
fo:Faroés
fr:Francés
ga:Irlandés
gl:Gallego
gu:Goujaratí
he:Hebreo
hi:Hindi
hr:Croata
hu:Húngaro
hy:Armenio
id:Indonesio
is:Islandés
it:Italiano
ja:Japonés
ka:Georgiano
kk:Kazajo
kl:Groenlandés
km:Kmer
kn:Canara
ko:Coreano
ku:Kurdo
kw:Córnico
ky:Kirghiz
la:Latín
lt:Lituano
lv:Letón
mk:Macedonio
mn:Mongol
mr:Marathi
ms:Malaisio
mt:Maltés
my:Birmano
nl:Holandés
no:Noruego
pa:Punjabí
pl:Polaco
pt:Portugués
ro:Rumano
root:Raíz
ru:Ruso
sh:Serbo-croata
sk:Eslovaco
sl:Esloveno
so:Somalí
sq:Albanés
sr:Servio
sv:Sueco
sw:Swahili
te:Telugu
th:Tailandés
ti:Tigrinya
tr:Turco
tt:Tataro
uk:Ucraniano
ur:Urdu
uz:Uzbeko
vi:Vietnamés
zh:Chino
zu:Zulú
