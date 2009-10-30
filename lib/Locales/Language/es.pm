package Locales::Language::es;
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

Locales::Language::es - (DEPRECATED use L<Locales> instead) ISO 639 Language Codes in Spanish.

=head1 SYNOPSIS

  require Locales::Language::es;

  my $es = new Locales::Language::es;

  print "  ", $es->getLocale, " => ", $es->code2language ( "es" ), "\n";
  print "  ", $es->getLocale, " => ", $es->language2code ( "Español" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Spanish language ISO 639
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
