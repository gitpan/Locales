package Locales::Country::ja;
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

Locales::Country::ja - ISO 3166-1 Country Codes in Japanese.

=head1 SYNOPSIS

  require Locales::Country::ja;

  my $ja = new Locales::Country::ja;

  print "  ", $ja->getLocale, " => ", $ja->code2country ( "jp" ), "\n";
  print "  ", $ja->getLocale, " => ", $ja->code2country ( "jpn" ), "\n";
  print "  ", $ja->getLocale, " => ", $ja->code2country ( "392" ), "\n";

  print "  ", $ja->getLocale, " => ", $ja->country2code ( "日本", "alpha2" ), "\n";
  print "  ", $ja->getLocale, " => ", $ja->country2code ( "日本", "alpha3" ), "\n";
  print "  ", $ja->getLocale, " => ", $ja->country2code ( "日本", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Japanese language ISO 3166-1
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
ad:and:020:アンドラ
ae:are:784:アラブ首長国連邦
af:afg:004:アフガニスタン
ai:aia:660:アンギラ
al:alb:008:アルバニア
am:arm:051:アルメニア
an:ant:530:オランダ領アンティル諸島
ao:ago:024:アンゴラ
ar:arg:032:アルゼンチン
at:aut:040:オーストリア
au:aus:036:オーストラリア
aw:abw:533:アルバ島
az:aze:031:アゼルバイジャン
ba:bih:070:ボスニア・ヘルツェゴビナ
bb:brb:052:バルバドス
bd:bgd:050:バングラデシュ
be:bel:056:ベルギー
bf:bfa:854:ブルキナファソ
bg:bgr:100:ブルガリア
bh:bhr:048:バーレーン
bi:bdi:108:ブルンジ
bj:ben:204:ベニン
bm:bmu:060:バーミューダ諸島
bn:brn:096:ブルネイ
bo:bol:068:ボリビア
br:bra:076:ブラジル
bs:bhs:044:バハマ
bt:btn:064:ブータン
bw:bwa:072:ボツワナ
by:blr:112:ベラルーシ
bz:blz:084:ベリーズ
ca:can:124:カナダ
cf:caf:140:中央アフリカ共和国
cg:cog:178:コンゴ
ch:che:756:スイス
ci:civ:384:コートジボアール
cl:chl:152:チリ
cm:cmr:120:カメルーン
cn:chn:156:中華人民共和国
co:col:170:コロンビア
cr:cri:188:コスタリカ
cu:cub:192:キューバ
cv:cpv:132:カーボベルデ
cy:cyp:196:キプロス
cz:cze:203:チェコ
de:deu:276:ドイツ
dj:dji:262:ジブチ
dk:dnk:208:デンマーク
dm:dma:212:ドミニカ国
do:dom:214:ドミニカ共和国
dz:dza:012:アルジェリア
ec:ecu:218:エクアドル
ee:est:233:エストニア
eg:egy:818:エジプト
eh:esh:732:西サハラ
er:eri:232:エリトリア
es:esp:724:スペイン
et:eth:231:エチオピア
fi:fin:246:フィンランド
fj:fji:242:フィジー
fm:fsm:583:ミクロネシア
fr:fra:250:フランス
ga:gab:266:ガボン
gb:gbr:826:イギリス
ge:geo:268:グルジア
gf:guf:254:仏領ギアナ
gh:gha:288:ガーナ
gm:gmb:270:ガンビア
gn:gin:324:ギニア
gp:glp:312:グアドループ
gq:gnq:226:赤道ギニア
gr:grc:300:ギリシア
gt:gtm:320:グアテマラ
gw:gnb:624:ギニアビサウ
gy:guy:328:ガイアナ
hk:hkg:344:香港特別行政区
hn:hnd:340:ホンジュラス
hr:hrv:191:クロアチア
ht:hti:332:ハイチ
hu:hun:348:ハンガリー
id:idn:360:インドネシア
ie:irl:372:アイルランド
il:isr:376:イスラエル
in:ind:356:インド
iq:irq:368:イラク
ir:irn:364:イラン
is:isl:352:アイスランド
it:ita:380:イタリア
jm:jam:388:ジャマイカ
jo:jor:400:ヨルダン
jp:jpn:392:日本
ke:ken:404:ケニア
kg:kgz:417:キルギスタン
kh:khm:116:カンボジア
ki:kir:296:キリバス
km:com:174:コモロ
kp:prk:408:朝鮮民主主義人民共和国
kr:kor:410:大韓民国
kw:kwt:414:クウェート
kz:kaz:398:カザフスタン
la:lao:418:ラオス
lb:lbn:422:レバノン
li:lie:438:リヒテンシュタイン
lk:lka:144:スリランカ
lr:lbr:430:リベリア
ls:lso:426:レソト
lt:ltu:440:リトアニア
lu:lux:442:ルクセンブルク
lv:lva:428:ラトビア
ly:lby:434:リビア
ma:mar:504:モロッコ
mc:mco:492:モナコ
md:mda:498:モルドバ
mg:mdg:450:マダガスカル
mk:mkd:807:マケドニア
ml:mli:466:マリ
mm:mmr:104:ミャンマー
mn:mng:496:モンゴル
mo:mac:446:マカオ特別行政区
mq:mtq:474:マルティニーク島
mr:mrt:478:モーリタニア
ms:msr:500:モントセラト島
mt:mlt:470:マルタ
mu:mus:480:モーリシャス
mx:mex:484:メキシコ
my:mys:458:マレーシア
mz:moz:508:モザンビーク
na:nam:516:ナミビア
nc:ncl:540:ニューカレドニア
ne:ner:562:ニジェール
ng:nga:566:ナイジェリア
ni:nic:558:ニカラグア
nl:nld:528:オランダ
no:nor:578:ノルウェー
np:npl:524:ネパール
nu:niu:570:ニウエ島
nz:nzl:554:ニュージーランド
om:omn:512:オマーン
pa:pan:591:パナマ
pe:per:604:ペルー
pf:pyf:258:仏領ポリネシア
pg:png:598:パプアニューギニア
ph:phl:608:フィリピン
pk:pak:586:パキスタン
pl:pol:616:ポーランド
pr:pri:630:プエルトリコ
pt:prt:620:ポルトガル
py:pry:600:パラグアイ
qa:qat:634:カタール
ro:rom:642:ルーマニア
ru:rus:643:ロシア
rw:rwa:646:ルワンダ
sa:sau:682:サウジアラビア
sc:syc:690:セイシェル
sd:sdn:736:スーダン
se:swe:752:スウェーデン
sg:sgp:702:シンガポール
si:svn:705:スロベニア
sk:svk:703:スロバキア
sl:sle:694:シエラレオネ
sn:sen:686:セネガル
so:som:706:ソマリア
sp:::セルビア
sr:sur:740:スリナム
sv:slv:222:エルサルバドル
sy:syr:760:シリア
sz:swz:748:スワジランド
td:tcd:148:チャド
tf:atf:260:仏南方領
tg:tgo:768:トーゴ
th:tha:764:タイ
tj:tjk:762:タジキスタン
tk:tkl:772:トケラウ諸島
tl:tls:626:東ティモール
tm:tkm:795:トルクメニスタン
tn:tun:788:チュニジア
to:ton:776:トンガ
tr:tur:792:トルコ
tt:tto:780:トリニダード・トバゴ
tw:twn:158:台湾
tz:tza:834:タンザニア
ua:ukr:804:ウクライナ
ug:uga:800:ウガンダ
us:usa:840:アメリカ合衆国
uy:ury:858:ウルグアイ
uz:uzb:860:ウズベキスタン
va:vat:336:バチカン
ve:ven:862:ベネズエラ
vg:vgb:092:英領バージン諸島
vi:vir:850:米領バージン諸島
vn:vnm:704:ベトナム
vu:vut:548:バヌアツ
ye:yem:887:イエメン
yt:myt:175:マヨット島
yu:yug:891:ユーゴスラビア連邦
za:zaf:710:南アフリカ
zm:zmb:894:ザンビア
zr:zar:180:ザイール
zw:zwe:716:ジンバブエ
