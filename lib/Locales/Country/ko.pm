package Locales::Country::ko;
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

Locales::Country::ko - ISO 3166-1 Country Codes in Korean.

=head1 SYNOPSIS

  require Locales::Country::ko;

  my $ko = new Locales::Country::ko;

  print "  ", $ko->getLocale, " => ", $ko->code2country ( "kp" ), "\n";
  print "  ", $ko->getLocale, " => ", $ko->code2country ( "prk" ), "\n";
  print "  ", $ko->getLocale, " => ", $ko->code2country ( "408" ), "\n";

  print "  ", $ko->getLocale, " => ", $ko->country2code ( "조선 민주주의 인민 공화국", "alpha2" ), "\n";
  print "  ", $ko->getLocale, " => ", $ko->country2code ( "조선 민주주의 인민 공화국", "alpha3" ), "\n";
  print "  ", $ko->getLocale, " => ", $ko->country2code ( "조선 민주주의 인민 공화국", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Korean language ISO 3166-1
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
ad:and:020:안도라
ae:are:784:아랍에미리트
af:afg:004:아프가니스탄
ai:aia:660:안길라
al:alb:008:알바니아
am:arm:051:아르메니아
an:ant:530:네덜란드령 안틸레스
ao:ago:024:앙골라
ar:arg:032:아르헨티나
at:aut:040:오스트리아
au:aus:036:오스트레일리아
aw:abw:533:아루바
az:aze:031:아제르바이잔
ba:bih:070:보스니아 헤르체고비나
bb:brb:052:바베이도스
bd:bgd:050:방글라데시
be:bel:056:벨기에
bf:bfa:854:부르키나파소
bg:bgr:100:불가리아
bh:bhr:048:바레인
bi:bdi:108:부룬디
bj:ben:204:베넹
bm:bmu:060:버뮤다
bn:brn:096:브루나이
bo:bol:068:볼리비아
br:bra:076:브라질
bs:bhs:044:바하마
bt:btn:064:부탄
bw:bwa:072:보츠와나
by:blr:112:벨라루스
bz:blz:084:벨리즈
ca:can:124:캐나다
cf:caf:140:중앙 아프리카
cg:cog:178:콩고
ch:che:756:스위스
ci:civ:384:코트디부와르
cl:chl:152:칠레
cm:cmr:120:카메룬
cn:chn:156:중국
co:col:170:콜롬비아
cr:cri:188:코스타리카
cu:cub:192:쿠바
cv:cpv:132:까뽀베르데
cy:cyp:196:사이프러스
cz:cze:203:체코
de:deu:276:독일
dj:dji:262:지부티
dk:dnk:208:덴마크
dm:dma:212:도미니카
do:dom:214:도미니카 공화국
dz:dza:012:알제리
ec:ecu:218:에쿠아도르
ee:est:233:에스토니아
eg:egy:818:이집트
eh:esh:732:서사하라
er:eri:232:에리트리아
es:esp:724:스페인
et:eth:231:이디오피아
fi:fin:246:핀란드
fj:fji:242:피지
fm:fsm:583:마이크로네시아
fr:fra:250:프랑스
ga:gab:266:가봉
gb:gbr:826:영국
ge:geo:268:그루지야
gf:guf:254:프랑스령 기아나
gh:gha:288:가나
gm:gmb:270:감비아
gn:gin:324:기니
gp:glp:312:과달로프
gq:gnq:226:적도 기니
gr:grc:300:그리스
gt:gtm:320:과테말라
gw:gnb:624:기네비쏘
gy:guy:328:가이아나
hk:hkg:344:홍콩 S.A.R.
hn:hnd:340:온두라스
hr:hrv:191:크로아티아
ht:hti:332:하이티
hu:hun:348:헝가리
id:idn:360:인도네시아
ie:irl:372:아일랜드
il:isr:376:이스라엘
in:ind:356:인도
iq:irq:368:이라크
ir:irn:364:이란
is:isl:352:아이슬란드
it:ita:380:이탈리아
jm:jam:388:자메이카
jo:jor:400:요르단
jp:jpn:392:일본
ke:ken:404:케냐
kg:kgz:417:키르기스스탄
kh:khm:116:캄보디아
ki:kir:296:키리바시
km:com:174:코모르
kp:prk:408:조선 민주주의 인민 공화국
kr:kor:410:대한민국
kw:kwt:414:쿠웨이트
kz:kaz:398:카자흐스탄
la:lao:418:라오스
lb:lbn:422:레바논
li:lie:438:리히텐슈타인
lk:lka:144:스리랑카
lr:lbr:430:라이베리아
ls:lso:426:레소토
lt:ltu:440:리투아니아
lu:lux:442:룩셈부르크
lv:lva:428:라트비아
ly:lby:434:리비아
ma:mar:504:모로코
mc:mco:492:모나코
md:mda:498:몰도바
mg:mdg:450:마다가스카르
mk:mkd:807:마케도니아어
ml:mli:466:말리
mm:mmr:104:미얀마
mn:mng:496:몽골
mo:mac:446:마카오 S.A.R.
mq:mtq:474:말티니크
mr:mrt:478:모리타니
ms:msr:500:몬트세라트
mt:mlt:470:몰타
mu:mus:480:모리셔스
mx:mex:484:멕시코
my:mys:458:말레이지아
mz:moz:508:모잠비크
na:nam:516:나미비아
nc:ncl:540:뉴 칼레도니아
ne:ner:562:니제르
ng:nga:566:나이지리아
ni:nic:558:니카라과
nl:nld:528:네덜란드
no:nor:578:노르웨이
np:npl:524:네팔
nu:niu:570:니우에
nz:nzl:554:뉴질랜드
om:omn:512:오만
pa:pan:591:파나마
pe:per:604:페루
pf:pyf:258:프랑스령 폴리네시아
pg:png:598:파푸아뉴기니
ph:phl:608:필리핀
pk:pak:586:파키스탄
pl:pol:616:폴란드
pr:pri:630:푸에르토리코
pt:prt:620:포르트칼
py:pry:600:파라과이
qa:qat:634:카타르
ro:rom:642:루마니아
ru:rus:643:러시아
rw:rwa:646:르완다
sa:sau:682:사우디아라비아
sc:syc:690:쉐이쉘
sd:sdn:736:수단
se:swe:752:스웨덴
sg:sgp:702:싱가포르
si:svn:705:슬로베니아
sk:svk:703:슬로바키아
sl:sle:694:시에라리온
sn:sen:686:세네갈
so:som:706:소말리아
sp:::세르비아
sr:sur:740:수리남
sv:slv:222:엘살바도르
sy:syr:760:시리아
sz:swz:748:스와질랜드
td:tcd:148:차드
tf:atf:260:프랑스 남부 지방
tg:tgo:768:토고
th:tha:764:태국
tj:tjk:762:타지키스탄
tk:tkl:772:토켈라우
tl:tls:626:동티모르
tm:tkm:795:투르크메니스탄
tn:tun:788:튀니지
to:ton:776:통가
tr:tur:792:터키
tt:tto:780:트리니다드 토바고
tw:twn:158:대만
tz:tza:834:탄자니아
ua:ukr:804:우크라이나
ug:uga:800:우간다
us:usa:840:미국
uy:ury:858:우루과이
uz:uzb:860:우즈베키스탄
va:vat:336:바티칸
ve:ven:862:베네수엘라
vg:vgb:092:영국령 버진 아일랜드
vi:vir:850:미국령 버진 아일랜드
vn:vnm:704:베트남
vu:vut:548:바누아투
ye:yem:887:예멘
yt:myt:175:마요티
yu:yug:891:유고슬라비아
za:zaf:710:남아프리카
zm:zmb:894:잠비아
zr:zar:180:자이르
zw:zwe:716:짐바브웨
