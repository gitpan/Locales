package Locales::Country::am;
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

Locales::Country::am - ISO 3166-1 Country Codes in Amharic.

=head1 SYNOPSIS

  require Locales::Country::am;

  my $am = new Locales::Country::am;

  print "  ", $am->getLocale, " => ", $am->code2country ( "gb" ), "\n";
  print "  ", $am->getLocale, " => ", $am->code2country ( "gbr" ), "\n";
  print "  ", $am->getLocale, " => ", $am->code2country ( "826" ), "\n";

  print "  ", $am->getLocale, " => ", $am->country2code ( "እንግሊዝ", "alpha2" ), "\n";
  print "  ", $am->getLocale, " => ", $am->country2code ( "እንግሊዝ", "alpha3" ), "\n";
  print "  ", $am->getLocale, " => ", $am->country2code ( "እንግሊዝ", "numeric" ), "\n";

=head1 DESCRIPTION

This module provides an OO interface to Amharic language ISO 3166-1
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
ad:and:020:አንዶራ
ae:are:784:የተባበሩት አረብ ኤምሬትስ
al:alb:008:አልባኒያ
am:arm:051:አርሜኒያ
an:ant:530:ኔዘርላንድስ አንቲልስ
ar:arg:032:አርጀንቲና
at:aut:040:ኦስትሪያ
au:aus:036:አውስትሬሊያ
az:aze:031:አዘርባጃን
ba:bih:070:ቦስኒያ እና ሄርዞጎቪኒያ
bb:brb:052:ባርቤዶስ
be:bel:056:ቤልጄም
bg:bgr:100:ቡልጌሪያ
bh:bhr:048:ባህሬን
bm:bmu:060:ቤርሙዳ
bo:bol:068:ቦሊቪያ
br:bra:076:ብራዚል
bt:btn:064:ቡህታን
by:blr:112:ቤላሩስ
bz:blz:084:ቤሊዘ
cf:caf:140:የመካከለኛው አፍሪካ ሪፐብሊክ
ch:che:756:ስዊዘርላንድ
cl:chl:152:ቺሊ
cm:cmr:120:ካሜሩን
cn:chn:156:ቻይና
co:col:170:ኮሎምቢያ
cv:cpv:132:ኬፕ ቬርዴ
cy:cyp:196:ሳይፕረስ
cz:cze:203:ቼክ ሪፑብሊክ
de:deu:276:ጀርመን
dk:dnk:208:ዴንማርክ
dm:dma:212:ዶሚኒካ
do:dom:214:ዶሚኒክ ሪፑብሊክ
dz:dza:012:አልጄሪያ
ec:ecu:218:ኢኳዶር
ee:est:233:ኤስቶኒያ
eg:egy:818:ግብጽ
eh:esh:732:ምዕራባዊ ሳህራ
er:eri:232:ኤርትራ
es:esp:724:ስፔን
et:eth:231:ኢትዮጵያ
fi:fin:246:ፊንላንድ
fj:fji:242:ፊጂ
fm:fsm:583:ሚክሮኔዢያ
gb:gbr:826:እንግሊዝ
ge:geo:268:ጆርጂያ
gf:guf:254:የፈረንሳይ ጉዊአና
gm:gmb:270:ጋምቢያ
gn:gin:324:ጊኒ
gq:gnq:226:ኢኳቶሪያል ጊኒ
gr:grc:300:ግሪክ
gw:gnb:624:ቢሳዎ
gy:guy:328:ጉያና
hk:hkg:344:ሆንግ ኮንግ
hr:hrv:191:ክሮኤሽያ
ht:hti:332:ሀይቲ
hu:hun:348:ሀንጋሪ
id:idn:360:ኢንዶኔዢያ
ie:irl:372:አየርላንድ
il:isr:376:እስራኤል
in:ind:356:ህንድ
iq:irq:368:ኢራቅ
is:isl:352:አይስላንድ
it:ita:380:ጣሊያን
jm:jam:388:ጃማይካ
jo:jor:400:ጆርዳን
jp:jpn:392:ጃፓን
kh:khm:116:ካምቦዲያ
km:com:174:ኮሞሮስ
kp:prk:408:ደቡብ ኮሪያ
kr:kor:410:ሰሜን ኮሪያ
kw:kwt:414:ክዌት
lb:lbn:422:ሊባኖስ
lt:ltu:440:ሊቱዌኒያ
lv:lva:428:ላትቪያ
ly:lby:434:ሊቢያ
ma:mar:504:ሞሮኮ
md:mda:498:ሞልዶቫ
mk:mkd:807:ማከዶኒያ
mn:mng:496:ሞንጎሊያ
mo:mac:446:ማካዎ
mr:mrt:478:ሞሪቴኒያ
mt:mlt:470:ማልታ
mu:mus:480:ማሩሸስ
mx:mex:484:ሜክሲኮ
my:mys:458:ማሌዢያ
na:nam:516:ናሚቢያ
nc:ncl:540:ኒው ካሌዶኒያ
ng:nga:566:ናይጄሪያ
nl:nld:528:ኔዘርላንድ
no:nor:578:ኖርዌ
np:npl:524:ኔፓል
nz:nzl:554:ኒው ዚላንድ
pe:per:604:ፔሩ
pf:pyf:258:የፈረንሳይ ፖሊኔዢያ
pg:png:598:ፓፑዋ ኒው ጊኒ
pl:pol:616:ፖላንድ
pr:pri:630:ፖርታ ሪኮ
ro:rom:642:ሮሜኒያ
ru:rus:643:ራሺያ
sa:sau:682:ሳውድአረቢያ
sd:sdn:736:ሱዳን
se:swe:752:ስዊድን
sg:sgp:702:ሲንጋፖር
si:svn:705:ስሎቬኒያ
sk:svk:703:ስሎቫኪያ
sn:sen:686:ሴኔጋል
so:som:706:ሱማሌ
sp::ሰርቢያ
sy:syr:760:ሲሪያ
td:tcd:148:ቻድ
tf:atf:260:የፈረንሳይ ደቡባዊ ግዛቶች
th:tha:764:ታይላንድ
tj:tjk:762:ታጃኪስታን
tl:tls:626:ምስራቅ ቲሞር
tn:tun:788:ቱኒዚያ
tr:tur:792:ቱርክ
tt:tto:780:ትሪኒዳድ እና ቶባጎ
tz:tza:834:ታንዛኒያ
ug:uga:800:ዩጋንዳ
us:usa:840:አሜሪካ
uz:uzb:860:ዩዝበኪስታን
ve:ven:862:ቬንዙዌላ
vg:vgb:092:የእንግሊዝ ድንግል ደሴቶች
vi:vir:850:የአሜሪካ ቨርጂን ደሴቶች
ye:yem:887:የመን
yu:yug:891:ዩጎዝላቪያ
za:zaf:710:ደቡብ አፍሪካ
zm:zmb:894:ዛምቢያ
zr:zar:180:ዛየር
