package Locales::Language::fa;
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

Locales::Language::fa - (DEPRECATED use L<Locales> instead) ISO 639 Language Codes in Persian.

=head1 SYNOPSIS

  require Locales::Language::fa;

  my $fa = new Locales::Language::fa;

  print "  ", $fa->getLocale, " => ", $fa->code2language ( "fa" ), "\n";
  print "  ", $fa->getLocale, " => ", $fa->language2code ( "فارسی" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Persian language ISO 639
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
aa:آفاری
ab:آبخازی
ae:اوستایی
af:آفریکانس
afa:افریقا و آسیایی (غیره)
am:امهری
ang:انگلیسی باستان (حدود ۴۵۰-۱۱۰۰ م.)
apa:زبان‌های آپاچیایی
ar:عربی
arc:آرامی
art:ساخته‌گی (غیره)
as:آسامی
aus:زبان‌های استرالیایی
ay:آیمارایی
az:آذربایجانی
ba:باشکیر
bal:بلوچی
bat:بالتیکی (غیره)
be:بلوروسی
bg:بلغاری
bh:بیهاری
bho:بوجپوری
bi:بیسلاما
bn:بنگالی
bo:تبتی
bs:بوسنیایی
ca:کاتالونیایی
cai:سرخ‌پوستی امریکای مرکزی (غیره)
ce:چچنی
cel:سلتی (غیره)
ch:چامورویی
chr:چروکی
cop:قبطی
cs:چکی
cu:اسلاوی کلیسایی
cv:چوواشی
cy:ویلزی
da:دانمارکی
dak:داکوتایی
de:آلمانی
dra:دراویدی (غیره)
dum:هلندی میانه (حدود ۱۰۵۰-۱۳۵۰ م.)
dz:بوتانی
egy:مصری (باستانی)
el:یونانی
en:انگلیسی
enm:انگلیسی میانه (۱۱۰۰ -۱۵۰۰ م.)
eo:اسپرانتو
es:اسپانیایی
et:استونیایی
eu:باسکی
fa:فارسی
fi:فنلاندی
fj:فیجیایی
fo:فارویی
fr:فرانسوی
frm:فرانسوی میانه (حدود ۱۴۰۰-۱۶۰۰ م.)
fro:فرانسوی قدیم (۸۴۲-حدود ۱۴۰۰ م.)
ga:ایرلندی
gaa:گا
gem:ژرمنی (غیره)
gmh:آلمانی علیای میانه (حدود ۱۰۵۰-۱۵۰۰)
gn:گوارانی
goh:آلمانی علیای باستان (حدود ۷۵۰-۱۰۵۰)
got:گوتیک
grc:یونانی کهن (تا ۱۴۵۳ م.)
gu:گجراتی
gv:مانی
ha:هوسیایی
haw:هاوائیایی
he:عبری
hi:هندی
hit:هیتی
hr:کرواتی
hu:مجاری
hy:ارمنی
hz:هریرویی
ia:میان‌زبان
id:اندونزیایی
ik:اینوپیک
inc:هندیک (غیره)
ine:هندوارودپایی
ira:ایرانی
is:ایسلندی
it:ایتالیایی
iu:اینوکیتوت
iw:عبری
ja:ژاپنی
jpr:فارسی یهودی
jrb:عربی یهودی
jv:جاوه‌ای
ka:گرجی
kk:قزاقی
km:خمری
kn:کاناده‌ای
ko:کره‌ای
kok:کنکانی
ks:کشمیری
ku:کردی
kv:کومیایی
kw:کرنوالی
ky:قرقیزی
la:لاتینی
lb:لتسه‌بورگیش
lit:لیتوانیایی
ln:لینگالا
lo:لائوسی
lt:لیتوانیایی
lv:لتونیایی
map:آسترونیزیایی
mg:مالاگاسیایی
mga:ایرلندی میانه (۹۰۰-۱۲۰۰ م.)
mh:مارشالی
mi:مائوریایی
mis:زبان‌های متفرقه
mk:مقدونی
ml:مالایالامی
mn:مغولی
mo:مولداویایی
moh:موهاکی
mr:مراتی
ms:مالزیایی
mt:مالتی
mul:چندین زبان
my:برمه‌ای
myn:مایاییک
na:نائورویی
nai:سرخ‌پوستی امریکای شمالی (غیره)
nb:بوکسمال نروژی
nd:انده‌بله‌ای شمالی
nds:آلمانی سفلی؛ ساکسون سفلب
ne:نپالی
nl:هلندی
nn:نینورسک نروژی
no:نروژی
nr:انده‌بله‌ای جنوبی
nv:ناواهویی
or:اوریه‌ای
ota:ترکی (امپراتوری عثمانی)
pa:پنجابی
paa:پاپوایی (غیره)
pal:پهلوی
peo:فارسی قدیم (حدود ۶۰۰-۴۰۰ ق.م.)
phi:فیایپینی (غیره)
phn:فنیقی
pi:پالی
pl:لهستانی
ps:پشتو
pt:پرتغالی
qu:کچوایی
ro:رومانیایی
root:ریشه
ru:روسی
rw:کینیارواندایی
sa:سنسکریت
sai:سرخ‌پوستی امریکای جنوبی (غیره)
sc:ساردینیایی
sco:اسکاتلندی
sd:سندی
sem:سامی
sg:سانگویی
sga:ایرلندی باستان (تا ۹۰۰ م.)
sgn:زبان‌های نشانه‌ای
sh:صرب و کرواتی
si:سینهالی
sit:چین و تبتی (غیره)
sk:اسلواکی
sl:اسلووینیایی
sm:ساموآیی
sn:شونایی
so:سومالیایی
sq:آلبانیایی
sr:صربی
st:سوتویی جنوبی
su:سوندایی
sux:سومری
sv:سوئدی
sw:سواحلی
syr:سریانی
ta:تامیلی
te:تلوگویی
tg:تاجیکی
th:تایلندی
ti:تیگرینیایی
tk:ترکمتی
tl:تاگالوگی
tn:تسوانایی
to:تونگایی (جزایر تونگا)
tr:ترکی
ts:تسونگایی
tt:تاتاری
tur:ترکی استانبولی
tw:توی‌یایی
ty:تاهیتیایی
ug:اویغوری
uk:اوکراینی
und:نامشخص
ur:اردو
uz:ازبکی
vi:ویتنامی
vo:ولاپوک
wo:ولوفی
xh:خوسایی
yi:یدی
yo:یوروبایی
zh:چینی
zu:زولویی
