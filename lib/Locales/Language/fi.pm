package Locales::Language::fi;
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


=head1 NAME

Locales::Language::fi - ISO 639 Language Codes in Finnish.

=head1 SYNOPSIS

  require Locales::Language::fi;

  my $fi = new Locales::Language::fi;

  print "  ", $fi->getLocale, " => ", $fi->code2language ( "fi" ), "\n";
  print "  ", $fi->getLocale, " => ", $fi->language2code ( "Suomi" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Finnish language ISO 639
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
ar:Arabia
az:Azerbaizani
ba:Baski
be:Valkovenäjä
bg:Bulgaria
bh:Bihari
bn:Bengali
ca:Katalaani
cs:Tsekki
da:Tanska
de:Saksa
el:Kreikka
en:Englanti
es:Espanja
et:Viro
fa:Farsi
fi:Suomi
fr:Ranska
he:Heprea
hi:Hindi
hr:Kroatia
hu:Unkari
id:Indonesia
it:Italia
ja:Japani
ka:Georgia
kk:Kazakki
km:Khmer
kn:Kannada
ko:Korea
ku:Kurdi
la:Latinalainen
lt:Liettua
lv:Latvia
mk:Makedonia
mr:Marathi
my:Burma
nl:Hollanti
no:Norja
pl:Puola
pt:Portugali
ro:Romania
ru:Venäjä
sk:Slovakia
sl:Slovenia
sq:Albania
sr:Serbia
sv:Ruotsi
sw:Swahili
te:Telugu
th:Thai
tk:Tagalog
tr:Turkki
uk:Ukraina
ur:Urdu
uz:Uzbekki
zh:Kiina
