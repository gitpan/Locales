package Locales::Country::el;
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

Locales::Country::el - ISO 3166-1 Country Codes in Greek.

=head1 SYNOPSIS

  require Locales::Country::el;

  my $el = new Locales::Country::el;

  print "  ", $el->getLocale, " => ", $el->code2country ( "gb" ), "\n";
  print "  ", $el->getLocale, " => ", $el->code2country ( "gbr" ), "\n";
  print "  ", $el->getLocale, " => ", $el->code2country ( "826" ), "\n";

  print "  ", $el->getLocale, " => ", $el->country2code ( "Ηνωμένο Βασίλειο", "alpha2" ), "\n";
  print "  ", $el->getLocale, " => ", $el->country2code ( "Ηνωμένο Βασίλειο", "alpha3" ), "\n";
  print "  ", $el->getLocale, " => ", $el->country2code ( "Ηνωμένο Βασίλειο", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Greek language ISO 3166-1
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
al:alb:008:Αλβανία
as:asm:016:Ασία (Αγγλικά)
at:aut:040:Αυστρία
au:aus:036:Αυστραλία (Αγγλικά)
ba:bih:070:Βοσνία
be:bel:056:Βέλγιο
bg:bgr:100:Βουλγαρία
br:bra:076:Βραζιλία
ca:can:124:Καναδάς
ch:che:756:Ελβετία
cn:chn:156:Κίνα (Λ.Δ.Κ.)
cz:cze:203:Τσεχία
de:deu:276:Γερμανία
dk:dnk:208:Δανία
ee:est:233:Εσθονία
es:esp:724:Ισπανία
fi:fin:246:Φινλανδία
fr:fra:250:Γαλλία
gb:gbr:826:Ηνωμένο Βασίλειο
gr:grc:300:Ελλάδα
hr:hrv:191:Κροατία
hu:hun:348:Ουγγαρία
ie:irl:372:Ιρλανδία
il:isr:376:Ισραήλ
is:isl:352:Ισλανδία
it:ita:380:Ιταλία
jp:jpn:392:Ιαπωνία
kr:kor:410:Κορέα
la:lao:418:Λατινική Αμερική
lt:ltu:440:Λιθουανία
lv:lva:428:Λετονία
mk:mkd:807:ΠΓΔ Μακεδονίας
nl:nld:528:Ολλανδία
no:nor:578:Νορβηγία
nz:nzl:554:Νέα Ζηλανδία
pl:pol:616:Πολωνία
pt:prt:620:Πορτογαλία
ro:rom:642:Ρουμανία
ru:rus:643:Ρωσία
se:swe:752:Σουηδία
si:svn:705:Σλοβενία
sk:svk:703:Σλοβακία
sp:::Σερβία
th:tha:764:Ταϊλάνδη
tr:tur:792:Τουρκία
tw:twn:158:Ταϊβάν (Δ.Κ.)
us:usa:840:Ηνωμένες Πολιτείες Αμερικής
za:zaf:710:Νότιος Αφρική
