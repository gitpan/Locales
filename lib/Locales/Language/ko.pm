package Locales::Language::ko;
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

Locales::Language::ko - ISO 639 Language Codes in Korean.

=head1 SYNOPSIS

  require Locales::Language::ko;

  my $ko = new Locales::Language::ko;

  print "  ", $ko->getLocale, " => ", $ko->code2language ( "ko" ), "\n";
  print "  ", $ko->getLocale, " => ", $ko->language2code ( "한국어" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Korean language ISO 639
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
aa:아파르어
ab:압카즈어
af:남아공 공용어
am:암하라어
ar:아랍어
as:아샘어
ay:아이마라어
az:아제르바이잔어
ba:바슈키르어
be:벨로루시어
bg:불가리아어
bh:비하르어
bi:비슬라마어
bn:벵골어
bo:티베트어
br:브르타뉴어
ca:카탈로니아어
co:코르시카어
cs:체코어
cy:웨일스어
da:덴마크어
de:독일어
dz:부탄어
el:그리스어
en:영어
eo:에스페란토어
es:스페인어
et:에스토니아어
eu:바스크어
fa:이란어
fi:핀란드어
fj:피지어
fo:페로스어
fr:프랑스어
fy:프리지아어
ga:아일랜드어
gd:스코갤릭어
gl:갈리시아어
gn:구아라니어
gu:구자라트어
ha:하우자어
he:히브리어
hi:힌디어
hr:크로아티아어
hu:헝가리어
hy:아르메니아어
ia:인터링거
id:인도네시아어
ie:인터링게어
ik:이누피아크어
is:아이슬란드어
it:이탈리아어
iu:이눅티투트어
ja:일본어
jv:자바어
ka:그루지야어
kk:카자흐어
kl:그린랜드어
km:캄보디아어
kn:카나다어
ko:한국어
ks:카슈미르어
ku:크르드어
ky:키르기스어
la:라틴어
ln:링갈라어
lo:라오어
lt:리투아니아어
lv:라트비아어 (레트어)
mg:마다가스카르어
mi:마오리어
mk:마케도니아어
ml:말라얄람어
mn:몽골어
mo:몰다비아어
mr:마라티어
ms:말레이어
mt:몰타어
my:버마어
na:나우루어
ne:네팔어
nl:네덜란드어
no:노르웨이어
oc:옥시트어
om:오로모어 (아판)
or:오리야어
pa:펀잡어
pl:폴란드어
ps:파시토어 (푸시토)
pt:포르투칼어
qu:케추아어
rm:레토로만어
rn:반투어(부룬디)
ro:루마니아어
ru:러시아어
rw:반투어(루완다)
sa:산스크리트어
sd:신디어
sg:산고어
sh:세르보크로아티아어
si:스리랑카어
sk:슬로바키아어
sl:슬로베니아어
sm:사모아어
sn:쇼나어
so:소말리아어
sq:알바니아어
sr:세르비아어
ss:시스와티어
st:세소토어
su:순단어
sv:스웨덴어
sw:스와힐리어
ta:타밀어
te:텔루구어
tg:타지키스탄어
th:태국어
ti:티그리냐어
tk:투르크멘어
tl:타갈로그어
tn:세츠와나어
to:통가어
tr:터키어
ts:통가어
tt:타타르어
tw:트위어
ug:위구르어
uk:우크라이나어
ur:우르두어
uz:우즈베크어
vi:베트남어
vo:볼라퓌크어
wo:올로프어
xh:반투어(남아프리카)
yi:이디시어
yo:요루바어
za:주앙어
zh:중국어
zu:줄루어