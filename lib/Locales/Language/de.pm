package Locales::Language::de;
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

Locales::Language::de - ISO 639 Language Codes in German.

=head1 SYNOPSIS

  require Locales::Language::de;

  my $de = new Locales::Language::de;

  print "  ", $de->getLocale, " => ", $de->code2language ( "de" ), "\n";
  print "  ", $de->getLocale, " => ", $de->language2code ( "Deutsch" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to German language ISO 639
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
ab:Abchasisch
am:Amharisch
ar:Arabisch
az:Aserbaidschanisch
be:Weißrussisch
bg:Bulgarisch
bn:Bengalisch
bo:Tibetisch
br:Bretonisch
ca:Katalanisch
co:Korsisch
cs:Tschechisch
cy:Walisisch
da:Dänisch
de:Deutsch
dz:Bhutanisch
el:Griechisch
en:Englisch
es:Spanisch
et:Estnisch
eu:Baskisch
fa:Persisch
fi:Finnisch
fj:Fidschianisch
fo:Färöisch
fr:Französisch
fy:Frisisch
ga:Irisch
gd:Schottisch-Gälisch
gl:Galizisch
he:Hebräisch
hr:Kroatisch
hu:Ungarisch
hy:Armenisch
id:Indonesisch
is:Isländisch
it:Italienisch
ja:Japanisch
jv:Javanesisch
ka:Georgisch
kk:Kasachisch
kl:Grönländisch
km:Kkambodschanisch
ko:Koreanisch
ks:Kaschmirisch
ku:Kurdisch
ky:Kirgisisch
la:Latein
lt:Litauisch
lv:Lettisch
mk:Mazedonisch
mn:Mongolisch
mo:Moldawisch
mt:Maltesisch
my:Burmesisch
na:Nauruisch
nb:Norwegisch Bokmål
ne:Nepalesisch
nl:Holländisch
nn:Norwegisch Nynorsk
no:Norwegisch
pl:Polnisch
pt:Portugiesisch
rm:Rätoromanisch
ro:Rumänisch
ru:Russisch
sh:Serbo-Kroatisch
sk:Slowakisch
sl:Slowenisch
sm:Samoanisch
so:Somalisch
sq:Albanisch
sr:Serbisch
sv:Schwedisch
tg:Tadschikisch
tk:Türkmenisch
tr:Türkisch
uk:Ukrainisch
uz:Usbekisch
vi:Vietnamesisch
yi:Jiddisch
zh:Chinesisch
