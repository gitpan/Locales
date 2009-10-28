package Locales::Language::en;


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

Locales::Language::en - ISO 639 Language Codes in English.

=head1 SYNOPSIS

  require Locales::Language::en;

  my $en = new Locales::Language::en;

  print "  ", $en->getLocale, " => ", $en->code2language ( "en" ), "\n";
  print "  ", $en->getLocale, " => ", $en->language2code ( "English" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to English language ISO 639
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
ab:Abkhazian
ae:Avestan
af:Afrikaans
am:Amharic
ar:Arabic
as:Assamese
ay:Aymara
az:Azerbaijani

ba:Bashkir
be:Belarusian
bg:Bulgarian
bh:Bihari
bi:Bislama
bn:Bengali
bo:Tibetan
br:Breton
bs:Bosnian

ca:Catalan
ce:Chechen
ch:Chamorro
co:Corsican
cs:Czech
cu:Church Slavic
cv:Chuvash
cy:Welsh

da:Danish
de:German
dz:Dzongkha

el:Greek
en:English
eo:Esperanto
es:Spanish
et:Estonian
eu:Basque

fa:Persian
fi:Finnish
fj:Fijian
fo:Faeroese
fr:French
fy:Frisian

ga:Irish
gd:Gaelic (Scots)
gl:Gallegan
gn:Guarani
gu:Gujarati
gv:Manx

ha:Hausa
he:Hebrew
hi:Hindi
ho:Hiri Motu
hr:Croatian
hu:Hungarian
hy:Armenian
hz:Herero

ia:Interlingua
id:Indonesian
ie:Interlingue
ik:Inupiaq
is:Icelandic
it:Italian
iu:Inuktitut

ja:Japanese
jw:Javanese

ka:Georgian
ki:Kikuyu
kj:Kuanyama
kk:Kazakh
kl:Kalaallisut
km:Khmer
kn:Kannada
ko:Korean
ks:Kashmiri
ku:Kurdish
kv:Komi
kw:Cornish
ky:Kirghiz

la:Latin
lb:Letzeburgesch
ln:Lingala
lo:Lao
lt:Lithuanian
lv:Latvian

mg:Malagasy
mh:Marshall
mi:Maori
mk:Macedonian
ml:Malayalam
mn:Mongolian
mo:Moldavian
mr:Marathi
ms:Malay
mt:Maltese
my:Burmese

na:Nauru
nb:Norwegian Bokmal
nd:Ndebele, North
ne:Nepali
ng:Ndonga
nl:Dutch
nn:Norwegian Nynorsk
no:Norwegian
nr:Ndebele, South
nv:Navajo
ny:Chichewa; Nyanja

oc:Occitan (post 1500)
om:Oromo
or:Oriya
os:Ossetian; Ossetic

pa:Panjabi
pi:Pali
pl:Polish
ps:Pushto
pt:Portuguese

qu:Quechua

rm:Rhaeto-Romance
rn:Rundi
ro:Romanian
ru:Russian
rw:Kinyarwanda

sa:Sanskrit
sc:Sardinian
sd:Sindhi
se:Sami
sg:Sango
si:Sinhalese
sk:Slovak
sl:Slovenian
sm:Samoan
sn:Shona
so:Somali
sq:Albanian
sr:Serbian
ss:Swati
st:Sotho
su:Sundanese
sv:Swedish
sw:Swahili

ta:Tamil
te:Telugu
tg:Tajik
th:Thai
ti:Tigrinya
tk:Turkmen
tl:Tagalog
tn:Tswana
to:Tonga
tr:Turkish
ts:Tsonga
tt:Tatar
tw:Twi

ug:Uighur
uk:Ukrainian
ur:Urdu
uz:Uzbek

vi:Vietnamese
vo:Volapuk

wo:Wolof

xh:Xhosa

yi:Yiddish
yo:Yoruba

za:Zhuang
zh:Chinese
zu:Zulu
