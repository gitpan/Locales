package Locales::Country::ru;
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

Locales::Country::ru - ISO 3166-1 Country Codes in Russian.

=head1 SYNOPSIS

  require Locales::Country::ru;

  my $ru = new Locales::Country::ru;

  print "  ", $ru->getLocale, " => ", $ru->code2country ( "gb" ), "\n";
  print "  ", $ru->getLocale, " => ", $ru->code2country ( "gbr" ), "\n";
  print "  ", $ru->getLocale, " => ", $ru->code2country ( "826" ), "\n";

  print "  ", $ru->getLocale, " => ", $ru->country2code ( "Великобритания", "alpha2" ), "\n";
  print "  ", $ru->getLocale, " => ", $ru->country2code ( "Великобритания", "alpha3" ), "\n";
  print "  ", $ru->getLocale, " => ", $ru->country2code ( "Великобритания", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Russian language ISO 3166-1
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
al:alb:008:Албания
as:asm:016:Азия
at:aut:040:Австрия
au:aus:036:Австралия
ba:bih:070:Босния
be:bel:056:Бельгия
bg:bgr:100:Болгария
br:bra:076:Бразилия
ca:can:124:Канада
ch:che:756:Швейцария
cn:chn:156:Китай (КНР)
cz:cze:203:Чехия
de:deu:276:Германия
dk:dnk:208:Дания
ee:est:233:Эстония
es:esp:724:Испания
fi:fin:246:Финляндия
fr:fra:250:Франция
gb:gbr:826:Великобритания
gr:grc:300:Греция
hr:hrv:191:Хорватия
hu:hun:348:Венгрия
ie:irl:372:Ирландия
il:isr:376:╚тЁшЄ
is:isl:352:Исландия
it:ita:380:Италия
jp:jpn:392:Япония
kr:kor:410:Корея
la:lao:418:Латинская Америка
lt:ltu:440:Литва
lv:lva:428:Латвия
mk:mkd:807:Македония
nl:nld:528:Нидерланды
no:nor:578:Норвегия
nz:nzl:554:Новая Зеландия
pl:pol:616:Польша
pt:prt:620:Португалия
ro:rom:642:Румыния
ru:rus:643:Россия
se:swe:752:Швеция
si:svn:705:Словения
sk:svk:703:Словакия
sp:::Сербия
th:tha:764:Таиланд
tr:tur:792:Турция
tw:twn:158:Тайвань
us:usa:840:США
za:zaf:710:ЮАР
