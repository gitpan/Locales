package Locales::Language::ru;
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

Locales::Language::ru - ISO 639 Language Codes in Russian.

=head1 SYNOPSIS

  require Locales::Language::ru;

  my $ru = new Locales::Language::ru;

  print "  ", $ru->getLocale, " => ", $ru->code2language ( "ru" ), "\n";
  print "  ", $ru->getLocale, " => ", $ru->language2code ( "Русский" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Russian language ISO 639
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
aa:Афар
ab:Абхазский
af:Африкаанс
am:Амхарский
ar:Арабский
as:Ассамский
ay:Аямара
az:Азербайджанский
ba:Башкирский
be:Белорусский
bg:Болгарский
bh:Бихарский
bi:Бислама
bn:Бенгальский
bo:Тибетский
br:Бретонский
ca:Каталанский
co:Корсиканский
cs:Чешский
cy:Валлийский
da:Датский
de:Немецкий
dz:Бутанский
el:Греческий
en:Английский
eo:Эсперанто
es:Испанский
et:Эстонский
eu:Баскский
fa:Персидский
fi:Финский
fj:Фиджи
fo:Фарерский
fr:Французский
fy:Фризский
ga:Ирландский
gd:Гаэльский
gl:Галицийский
gn:Гуарани
gu:Гуярати
ha:Хоса
he:Иврит
hi:Хинди
hr:Хорватский
hu:Венгерский
hy:Армянский
ia:Смешанный язык
id:Индонезийский
ie:Смешанный язык
ik:Инапиак
is:Исландский
it:Итальянский
iu:Инактитут
ja:Японский
jv:Яванский
ka:Грузинский
kk:Казахский
kl:Гренландский
km:Камбоджийский
kn:Канада
ko:Корейский
ks:Кашмирский
ku:Курдиш
ky:Киргизский
la:Латинский
ln:Лингала
lo:Лаосский
lt:Литовский
lv:Латвийский
mg:Малагасийский
mi:Маори
mk:Македонский
ml:Малаялам
mn:Монгольский
mo:Молдавский
mr:Маратийский
ms:Малайский
mt:Мальтийский
my:Бирманский
na:Науру
ne:Непальский
nl:Голландский
no:Норвежский
oc:Окитан
om:Оромо (Афан)
or:Ория
pa:Панджабский
pl:Польский
ps:Пашто (Пушто)
pt:Португальский
qu:Кечуа
rm:Раето-романский
rn:Кирундийский
ro:Румынский
ru:Русский
rw:Кинярванда
sa:Санскрит
sd:Синди
sg:Санго
sh:Сербско-хорватский
si:Сингальский
sk:Словацкий
sl:Словенский
sm:Самоа
sn:Шона
so:Сомали
sq:Албанский
sr:Сербский
ss:Сисвати
st:Сесото
su:Санданизский
sv:Шведский
sw:Суахили
ta:Тамильский
te:Телугу
tg:Таджикский
th:Тайский
ti:Тигриниа
tk:Туркменский
tl:Тагалог
tn:Сетсвана
to:Тонга
tr:Турецкий
ts:Тсонга
tt:Татарский
tw:Тви
ug:Уйгурский
uk:Украинский
ur:Урду
uz:Узбекский
vi:Вьетнамский
vo:Волапак
wo:Волоф
xh:Хоза
yi:Идиш
yo:Йоруба
za:Зуанг
zh:Китайский
zu:Зулусский
