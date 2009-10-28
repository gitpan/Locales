package Locales::Country::fa;
use utf8;

BEGIN
{
	use base qw( Locales::Country::Base     );
	use vars qw( %CODES %COUNTRIES $VERSION );

	$VERSION = "0.02";
}

__PACKAGE__->setData ( \%CODES, \%COUNTRIES, \*DATA );


1;

=head1 THIS MODULE IS DEPRECATED

This POD documents the deprecated legacy system (pre v0.06)

New code should use the more modern, efficient, and CLDR based L<Locales> object system.

=head1 NAME

Locales::Country::fa - ISO 3166-1 Country Codes in Persian.

=head1 SYNOPSIS

  require Locales::Country::fa;

  my $fa = new Locales::Country::fa;

  print "  ", $fa->getLocale, " => ", $fa->code2country ( "ir" ), "\n";
  print "  ", $fa->getLocale, " => ", $fa->code2country ( "irn" ), "\n";
  print "  ", $fa->getLocale, " => ", $fa->code2country ( "364" ), "\n";

  print "  ", $fa->getLocale, " => ", $fa->country2code ( "ایران", "alpha2" ), "\n";
  print "  ", $fa->getLocale, " => ", $fa->country2code ( "ایران", "alpha3" ), "\n";
  print "  ", $fa->getLocale, " => ", $fa->country2code ( "ایران", "numeric" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Persian language ISO 3166-1
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
ad:and:020:آندورا
ae:are:784:امارات متحده‌ی عربی
af:afg:004:افغانستان
ag:atg:028:آنتیگوا و باربودا
ai:aia:660:آنگیل
al:alb:008:آلبانی
am:arm:051:ارمنستان
an:ant:530:آنتیل هلند
ao:ago:024:آنگولا
aq:ata:010:جنوبگان
ar:arg:032:آرژانتین
as:asm:016:ساموای امریکا
at:aut:040:اتریش
au:aus:036:استرالیا
aw:abw:533:آروبا
az:aze:031:آذربایجان
ba:bih:070:بوسنی و هرزگوین
bb:brb:052:باربادوس
bd:bgd:050:بنگلادش
be:bel:056:بلژیک
bf:bfa:854:بورکینافاسو
bg:bgr:100:بلغارستان
bh:bhr:048:بحرین
bi:bdi:108:بوروندی
bj:ben:204:بنین
bm:bmu:060:برمودا
bn:brn:096:برونئی
bo:bol:068:بولیوی
br:bra:076:برزیل
bs:bhs:044:باهاما
bt:btn:064:بوتان
bv:bvt:074:جزیره‌ی بووت
bw:bwa:072:بوتسوانا
by:blr:112:بیلوروسی
bz:blz:084:بلیز
ca:can:124:کانادا
cc:cck:166:جزایر کوکوس
cd:::جمهوری دموکراتیک کنگو
cf:caf:140:جمهوری افریقای مرکزی
cg:cog:178:کونگو
ch:che:756:سوئیس
ci:civ:384:ساحل عاج
ck:cok:184:جزایر کوک
cl:chl:152:شیلی
cm:cmr:120:کامرون
cn:chn:156:چین
co:col:170:کلمبیا
cr:cri:188:کاستاریکا
cu:cub:192:کوبا
cv:cpv:132:کیپ ورد
cx:cxr:162:جزیره‌ی کریسمس
cy:cyp:196:قبرس
cz:cze:203:جمهوری چک
de:deu:276:آلمان
dj:dji:262:جیبوتی
dk:dnk:208:دانمارک
dm:dma:212:دومینیکا
do:dom:214:جمهوری دومینیکن
dz:dza:012:الجزایر
ec:ecu:218:اکوادر
ee:est:233:استونی
eg:egy:818:مصر
eh:esh:732:صحرای غربی
er:eri:232:اریتره
es:esp:724:اسپانیا
et:eth:231:اتیوپی
fi:fin:246:فنلاند
fj:fji:242:فیجی
fk:flk:238:جزایر فالکلند
fm:fsm:583:میکرونزی
fo:fro:234:جزایر فارو
fr:fra:250:فرانسه
ga:gab:266:گابون
gb:gbr:826:انگلستان
gd:grd:308:گرانادا
ge:geo:268:گرجستان
gf:guf:254:گویان فرانسه
gh:gha:288:غنا
gi:gib:292:گیبرالتار
gl:grl:304:گروئنلند
gm:gmb:270:گامبیا
gn:gin:324:گینه
gp:glp:312:گوادلوپ
gq:gnq:226:گینه‌ی استوایی
gr:grc:300:یونان
gs:sgs:239:جورجیای جنوبی و جزایر ساندویچ جنوبی
gt:gtm:320:گواتمالا
gu:gum:316:گوام
gw:gnb:624:گینه‌ی بیسائو
gy:guy:328:گویان
hk:hkg:344:هنگ‌کنگ
hm:hmd:334:جزیره‌ی هرد و جزایر مک‌دونالد
hn:hnd:340:هندوراس
hr:hrv:191:کرواسی
ht:hti:332:هاییتی
hu:hun:348:مجارستان
id:idn:360:اندونزی
ie:irl:372:ایرلند
il:isr:376:اسرائیل
in:ind:356:هند
io:iot:086:مستعمره‌های انگلستان در اقیانوس هند
iq:irq:368:عراق
ir:irn:364:ایران
is:isl:352:ایسلند
it:ita:380:ایتالیا
jm:jam:388:جامائیکا
jo:jor:400:اردن
jp:jpn:392:ژاپن
ke:ken:404:کنیا
kg:kgz:417:قرقیزستان
kh:khm:116:کامبوج
ki:kir:296:کیریباتی
km:com:174:کومورو
kn:kna:659:سنت کیتس و نویس
kp:prk:408:کره‌ی شمالی
kr:kor:410:کره‌ی جنوبی
kw:kwt:414:کویت
ky:cym:136:جزایر کِیمن
kz:kaz:398:قزاقستان
la:lao:418:لائوس
lb:lbn:422:لبنان
lc:lca:662:سنت لوسیا
li:lie:438:لیختن‌اشتاین
lk:lka:144:سری‌لانکا
lr:lbr:430:لیبریا
ls:lso:426:لسوتو
lt:ltu:440:لیتوانی
lu:lux:442:لوکزامبورگ
lv:lva:428:لتونی
ly:lby:434:لیبی
ma:mar:504:مراکش
mc:mco:492:موناکو
md:mda:498:مولدووا
mg:mdg:450:ماداگاسکار
mh:mhl:584:جزایر مارشال
mk:mkd:807:مقدونیه
ml:mli:466:مالی
mm:mmr:104:میانمار
mn:mng:496:مغولستان
mo:mac:446:ماکائو
mp:mnp:580:جزایر ماریانای شمالی
mq:mtq:474:مارتینیک
mr:mrt:478:موریتانی
ms:msr:500:مونت‌سرات
mt:mlt:470:مالت
mu:mus:480:موریتیوس
mv:mdv:462:مالدیو
mw:mwi:454:مالاوی
mx:mex:484:مکزیک
my:mys:458:مالزی
mz:moz:508:موزامبیک
na:nam:516:نامیبیا
nc:ncl:540:کالدونیای جدید
ne:ner:562:نیجر
nf:nfk:574:جزیره‌ی نورفولک
ng:nga:566:نیجریه
ni:nic:558:نیکاراگوئه
nl:nld:528:هلند
no:nor:578:نروژ
np:npl:524:نپال
nr:nru:520:نائورو
nu:niu:570:نیوئه
nz:nzl:554:زلاند نو
om:omn:512:عمان
pa:pan:591:پاناما
pe:per:604:پرو
pf:pyf:258:پلی‌نزی فرانسه
pg:png:598:پاپوا گینه‌ی نو
ph:phl:608:فیلیپین
pk:pak:586:پاکستان
pl:pol:616:لهستان
pm:spm:666:سنت پیر و میکلون
pn:pcn:612:پیتکایرن
pr:pri:630:پورتو ریکو
pt:prt:620:پرتغال
pw:plw:585:پالائو
py:pry:600:پاراگوئه
qa:qat:634:قطر
re:reu:638:ریونیون
ro:rom:642:رومانی
ru:rus:643:روسیه
rw:rwa:646:رواندا
sa:sau:682:عربستان سعودی
sb:slb:090:جزایر سلیمان
sc:syc:690:سیشل
sd:sdn:736:سودان
se:swe:752:سوئد
sg:sgp:702:سنگاپور
sh:shn:654:سنت هلن
si:svn:705:اسلوونی
sj:sjm:744:اسوالبارد و جان ماین
sk:svk:703:اسلواکی
sl:sle:694:سیرالئون
sm:smr:674:سان مارینو
sn:sen:686:سنگال
so:som:706:سومالی
sp:::صربستان
sr:sur:740:سورینام
st:stp:678:سائو تومه و پرینسیپه
sv:slv:222:السالوادور
sy:syr:760:سوریه
sz:swz:748:سوازیلند
tc:tca:796:جزایر ترک و کایکوس
td:tcd:148:چاد
tf:atf:260:مستعمره‌های جنوبی فرانسه
tg:tgo:768:توگو
th:tha:764:تایلند
tj:tjk:762:تاجیکستان
tk:tkl:772:توکلائو
tl:tls:626:تیمور شرقی
tm:tkm:795:ترکمنستان
tn:tun:788:تونس
to:ton:776:تونگا
tr:tur:792:ترکیه
tt:tto:780:ترینیداد و توباگو
tv:tuv:798:تووالو
tw:twn:158:تایوان
tz:tza:834:تانزانیا
ua:ukr:804:اوکراین
ug:uga:800:اوگاندا
um:umi:581:جزایر کوچک دورافتاده‌ی ایالات متحده
us:usa:840:ایالات متحده‌ی امریکا
uy:ury:858:اوروگوئه
uz:uzb:860:ازبکستان
va:vat:336:واتیکان
vc:vct:670:سنت وینسنت و گرنادین
ve:ven:862:ونزوئلا
vg:vgb:092:جزایر ویرجین انگلستان
vi:vir:850:جزایر ویرجین ایالات متحده
vn:vnm:704:ویتنام
vu:vut:548:وانواتو
wf:wlf:876:والیس و فیوتونا
ws:wsm:882:ساموا
ye:yem:887:یمن
yt:myt:175:مایوت
yu:yug:891:یوگسلاوی
za:zaf:710:افریقای جنوبی
zm:zmb:894:زامبیا
zr:zar:180:زئیر
zw:zwe:716:زیمبابوه
