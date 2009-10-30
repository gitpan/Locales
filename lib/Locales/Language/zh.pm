package Locales::Language::zh;
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

Locales::Language::zh - (DEPRECATED use L<Locales> instead) ISO 639 Language Codes in Chinese.

=head1 SYNOPSIS

  require Locales::Language::zh;

  my $zh = new Locales::Language::zh;

  print "  ", $zh->getLocale, " => ", $zh->code2language ( "zh" ), "\n";
  print "  ", $zh->getLocale, " => ", $zh->language2code ( "中文" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Chinese language ISO 639
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
aa:阿法文
ab:阿布哈西亚文
af:南非荷兰文
am:阿姆哈拉文
ar:阿拉伯文
as:阿萨姆文
ay:艾马拉文
az:阿塞拜疆文
ba:巴什客尔文
be:白俄罗斯文
bg:保加利亚文
bh:比哈尔文
bi:比斯拉马文
bn:孟加拉文
bo:西藏文
br:布里多尼文
ca:加泰罗尼亚文
co:科西嘉文
cs:捷克文
cy:威尔士文
da:丹麦文
de:德文
dz:不丹文
el:希腊文
en:英文
eo:世界文
es:西班牙文
et:爱沙尼亚文
eu:巴斯克文
fa:波斯文
fi:芬兰文
fj:斐济文
fo:法罗文
fr:法文
fy:弗里斯兰文
ga:爱尔兰文
gd:苏格兰- 盖尔文
gl:加利西亚文
gn:瓜拉尼文
gu:古加拉提文
ha:豪撒文
he:希伯来文
hi:印地文
hr:克罗地亚文
hu:匈牙利文
hy:亚美尼亚文
ia:拉丁国际文
id:印度尼西亚文
ie:拉丁国际文
ik:依奴皮维克文
is:冰岛文
it:意大利文
iu:爱斯基摩文
ja:日文
jv:爪哇文
ka:格鲁吉亚文
kk:哈萨克文
kl:格陵兰文
km:柬埔寨文
kn:埃纳德文
ko:朝鲜文
ks:克什米尔文
ku:库尔德文
ky:吉尔吉斯文
la:拉丁文
ln:林加拉文
lo:老挝文
lt:立陶宛文
lv:拉托维亚文(列托)
mg:马尔加什文
mi:毛利文
mk:马其顿文
ml:马来亚拉姆文
mn:蒙古文
mo:摩尔多瓦文
mr:马拉地文
ms:马来文
mt:马耳他文
my:缅甸文
na:瑙鲁文
ne:尼泊尔文
nl:荷兰文
no:挪威文
oc:奥西坦文
om:阿曼文
or:欧里亚文
pa:旁遮普文
pl:波兰文
ps:普什图文
pt:葡萄牙文
qu:盖丘亚文
rm:里托罗曼斯文
rn:基隆迪文
ro:罗马尼亚文
ru:俄文
rw:卢旺达文
sa:梵文
sd:苏丹文
sg:桑戈文
sh:塞波尼斯-克罗地亚文
si:僧伽罗文
sk:斯洛伐克文
sl:斯洛文尼亚文
sm:萨摩亚文
sn:塞内加尔文
so:索马里文
sq:阿尔巴尼亚文
sr:塞尔维亚文
ss:辛辛那提文
st:塞索托文
su:苏丹文
sv:瑞典文
sw:斯瓦希里文
ta:泰米尔文
te:泰卢固文
tg:塔吉克文
th:泰文
ti:提格里尼亚文
tk:土库曼文
tl:塔加路族文
tn:突尼斯文
to:汤加文
tr:土耳其文
ts:特松加文
tt:鞑靼文
tw:台湾文
ug:维吾尔文
uk:乌克兰文
ur:乌尔都文
uz:乌兹别克文
vi:越南文
vo:沃拉普克文
wo:沃尔夫文
xh:班图文
yi:依地文
yo:约鲁巴文
za:藏文
zh:中文
zu:祖鲁文
