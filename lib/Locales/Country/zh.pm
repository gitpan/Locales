package Locales::Country::zh;
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

Locales::Country::zh - ISO 3166-1 Country Codes in Chinese.

=head1 SYNOPSIS

  require Locales::Country::zh;

  my $zh = new Locales::Country::zh;

  print "  ", $zh->getLocale, " => ", $zh->code2country ( "cn" ), "\n";
  print "  ", $zh->getLocale, " => ", $zh->code2country ( "chn" ), "\n";
  print "  ", $zh->getLocale, " => ", $zh->code2country ( "156" ), "\n";

  print "  ", $zh->getLocale, " => ", $zh->country2code ( "中華人民共和國", "alpha2" ), "\n";
  print "  ", $zh->getLocale, " => ", $zh->country2code ( "中華人民共和國", "alpha3" ), "\n";
  print "  ", $zh->getLocale, " => ", $zh->country2code ( "中華人民共和國", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Chinese language ISO 3166-1
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
ad:and:020:安道尔
ae:are:784:阿拉伯联合酋长国
af:afg:004:阿富汗
ai:aia:660:安圭拉
al:alb:008:阿尔巴尼亚
am:arm:051:亚美尼亚
an:ant:530:荷属安的列斯群岛
ao:ago:024:安哥拉
ar:arg:032:阿根廷
at:aut:040:奥地利
au:aus:036:澳大利亚
aw:abw:533:阿鲁巴
az:aze:031:阿塞拜疆
ba:bih:070:波斯尼亚和黑山共和国
bb:brb:052:巴巴多斯
bd:bgd:050:孟加拉
be:bel:056:比利时
bf:bfa:854:布基纳法索
bg:bgr:100:保加利亚
bh:bhr:048:巴林
bi:bdi:108:布隆迪
bj:ben:204:贝宁
bm:bmu:060:百慕大
bn:brn:096:文莱
bo:bol:068:玻利维亚
br:bra:076:巴西
bs:bhs:044:巴哈马
bt:btn:064:不丹
bw:bwa:072:博茨瓦纳
by:blr:112:白俄罗斯
bz:blz:084:伯里兹
ca:can:124:加拿大
cf:caf:140:中非共和国
cg:cog:178:刚果
ch:che:756:瑞士
ci:civ:384:象牙海岸
cl:chl:152:智利
cm:cmr:120:喀麦隆
cn:chn:156:中華人民共和國
co:col:170:哥伦比亚
cr:cri:188:哥斯达黎加
cu:cub:192:古巴
cv:cpv:132:佛得角
cy:cyp:196:塞浦路斯
cz:cze:203:捷克共和国
de:deu:276:德国
dj:dji:262:吉布提
dk:dnk:208:丹麦
dm:dma:212:多米尼加联邦
do:dom:214:多米尼加共和国
dz:dza:012:阿尔及利亚
ec:ecu:218:厄瓜多尔
ee:est:233:爱沙尼亚
eg:egy:818:埃及
eh:esh:732:西撒哈拉
er:eri:232:厄里特尼亚
es:esp:724:西班牙
et:eth:231:埃塞俄比亚
fi:fin:246:芬兰
fj:fji:242:斐济
fm:fsm:583:密克罗尼西亚
fr:fra:250:法国
ga:gab:266:加蓬
gb:gbr:826:英国
ge:geo:268:格鲁吉亚
gf:guf:254:法属圭亚那
gh:gha:288:加纳
gm:gmb:270:冈比亚
gn:gin:324:几内亚
gp:glp:312:瓜德罗普岛
gq:gnq:226:赤道几内亚
gr:grc:300:希腊
gt:gtm:320:危地马拉
gw:gnb:624:几内亚比绍共和国
gy:guy:328:圭亚那
hk:hkg:344:中国香港特别行政区
hn:hnd:340:洪都拉斯
hr:hrv:191:克罗地亚
ht:hti:332:海地
hu:hun:348:匈牙利
id:idn:360:印度尼西亚
ie:irl:372:爱尔兰
il:isr:376:以色列
in:ind:356:印度
iq:irq:368:伊拉克
ir:irn:364:伊朗
is:isl:352:冰岛
it:ita:380:意大利
jm:jam:388:牙买加
jo:jor:400:约旦
jp:jpn:392:日本
ke:ken:404:肯尼亚
kg:kgz:417:吉尔吉克斯坦
kh:khm:116:柬埔寨
ki:kir:296:基里巴斯
km:com:174:科摩罗
kp:prk:408:北朝鲜
kr:kor:410:南朝鲜
kw:kwt:414:科威特
kz:kaz:398:哈萨克斯坦
la:lao:418:老挝
lb:lbn:422:黎巴嫩
li:lie:438:列支敦士登
lk:lka:144:斯里兰卡
lr:lbr:430:利比里亚
ls:lso:426:莱索托
lt:ltu:440:立陶宛
lu:lux:442:卢森堡
lv:lva:428:拉脱维亚
ly:lby:434:利比亚
ma:mar:504:摩洛哥
mc:mco:492:摩纳哥
md:mda:498:摩尔多瓦
mg:mdg:450:马达加斯加
mk:mkd:807:马其顿王国
ml:mli:466:马里
mm:mmr:104:缅甸
mn:mng:496:蒙古
mo:mac:446:中国澳门特别行政区
mq:mtq:474:马提尼克岛
mr:mrt:478:毛里塔尼亚
ms:msr:500:蒙特塞拉群岛
mt:mlt:470:马耳他
mu:mus:480:毛里求斯
mx:mex:484:墨西哥
my:mys:458:马来西亚
mz:moz:508:莫桑比克
na:nam:516:纳米比亚
nc:ncl:540:新克里多尼亚群岛
ne:ner:562:尼日尔
ng:nga:566:尼日利亚
ni:nic:558:尼加拉瓜
nl:nld:528:荷兰
no:nor:578:挪威
np:npl:524:尼泊尔
nu:niu:570:纽埃岛
nz:nzl:554:新西兰
om:omn:512:阿曼
pa:pan:591:巴拿马
pe:per:604:秘鲁
pf:pyf:258:法属玻利尼西亚
pg:png:598:巴布亚新几内亚
ph:phl:608:菲律宾
pk:pak:586:巴基斯坦
pl:pol:616:波兰
pr:pri:630:波多黎哥
pt:prt:620:葡萄牙
py:pry:600:巴拉圭
qa:qat:634:卡塔尔
ro:rom:642:罗马尼亚
ru:rus:643:俄罗斯
rw:rwa:646:卢旺达
sa:sau:682:沙特阿拉伯
sc:syc:690:塞舌尔群岛
sd:sdn:736:苏丹
se:swe:752:瑞典
sg:sgp:702:新加坡
si:svn:705:斯洛文尼亚
sk:svk:703:斯洛伐克
sl:sle:694:塞拉里昂
sn:sen:686:塞内加尔
so:som:706:索马里
sp:::塞尔维亚
sr:sur:740:苏里南
sv:slv:222:萨尔瓦多
sy:syr:760:叙利亚
sz:swz:748:斯威士兰
td:tcd:148:乍得
tf:atf:260:法属南特立尼达
tg:tgo:768:多哥
th:tha:764:泰国
tj:tjk:762:塔吉克斯坦
tk:tkl:772:联合群岛
tl:tls:626:东帝汶
tm:tkm:795:土库曼斯坦
tn:tun:788:突尼斯
to:ton:776:汤加
tr:tur:792:土耳其
tt:tto:780:特立尼达和多巴哥
tw:twn:158:台湾
tz:tza:834:坦桑尼亚
ua:ukr:804:乌克兰
ug:uga:800:乌干达
us:usa:840:美国
uy:ury:858:乌拉圭
uz:uzb:860:乌兹别克斯坦
va:vat:336:梵蒂冈
ve:ven:862:委内瑞拉
vg:vgb:092:英属维京群岛
vi:vir:850:美属维京群岛
vn:vnm:704:越南
vu:vut:548:瓦努阿图
ye:yem:887:也门
yt:myt:175:马约特岛
yu:yug:891:南斯拉夫
za:zaf:710:南非
zm:zmb:894:赞比亚
zr:zar:180:扎伊尔
zw:zwe:716:津巴布韦
