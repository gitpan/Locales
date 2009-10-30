package Locales::Language::ja;
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

Locales::Language::ja - (DEPRECATED use L<Locales> instead) ISO 639 Language Codes in Japanese.

=head1 SYNOPSIS

  require Locales::Language::ja;

  my $ja = new Locales::Language::ja;

  print "  ", $ja->getLocale, " => ", $ja->code2language ( "ja" ), "\n";
  print "  ", $ja->getLocale, " => ", $ja->language2code ( "日本語" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Japanese language ISO 639
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
aa:アファール語
ab:アブハズ語
af:アフリカーンス語
am:アムハラ語
ar:アラビア語
as:アッサム語
ay:アイマラ語
az:アゼルバイジャン語
ba:バシキール語
be:白ロシア語
bg:ブルガリア語
bh:ビハ―ル語
bi:ビスラマ語
bn:ベンガル語
bo:チベット語
br:ブルトン語
ca:カタロニア語
co:コルシカ語
cs:チェコ語
cy:ウェールズ語
da:デンマーク語
de:ドイツ語
dz:ブータン語
el:ギリシア語
en:英語
eo:エスペラント語
es:スペイン語
et:エストニア語
eu:バスク語
fa:ペルシア語
fi:フィンランド語
fj:フィジー語
fo:フェロー語
fr:フランス語
fy:フリジア語
ga:アイルランド語
gd:スコットランド・ゲール語
gl:ガリシア語
gn:グワラニ語
gu:グジャラート語
ha:ハウサ語
he:ヘブライ語
hi:ヒンディー語
hr:クロアチア語
hu:ハンガリー語
hy:アルメニア語
ia:国際語
id:インドネシア語
ie:国際語
ik:イヌピアック語
is:アイスランド語
it:イタリア語
iu:イヌクウティトット語
ja:日本語
jv:ジャワ語
ka:グルジア語
kk:カザフ語
kl:グリーンランド語
km:カンボジア語
kn:カンナダ語
ko:韓国語
ks:カシミール語
ku:クルド語
ky:キルギス語
la:ラテン語
ln:リンガラ語
lo:ラオ語
lt:リトアニア語
lv:ラトビア語 (レット語)
mg:マラガシー語
mi:マオリ語
mk:マケドニア語
ml:マラヤ―ラム語
mn:モンゴル語
mo:モルダビア語
mr:マラーティー語
ms:マライ語
mt:マルタ語
my:ビルマ語
na:ナウル語
ne:ネパール語
nl:オランダ語
no:ノルウェー語
oc:プロバンス語
om:ガラ語
or:オリヤー語
pa:パンジャブ語
pl:ポーランド語
ps:パシュトー語
pt:ポルトガル語
qu:ケチュア語
rm:レト＝ロマン語
rn:ルンジ語
ro:ルーマニア語
ru:ロシア語
rw:ルワンダ語
sa:サンスクリット語
sd:シンド語
sg:サンゴ語
sh:セルボ＝クロアチア語
si:シンハラ語
sk:スロバキア語
sl:スロベニア語
sm:サモア語
sn:ショナ語
so:ソマリ語
sq:アルバニア語
sr:セルビア語
ss:シスワティ語
st:セソト語
su:スンダ語
sv:スウェーデン語
sw:スワヒリ語
ta:タミール語
te:テルグ語
tg:タジク語
th:タイ語
ti:ティグリニア語
tk:トルクメン語
tl:タガログ語
tn:ツワナ語
to:トンガ語
tr:トルコ語
ts:ツォンガ語
tt:タタール語
tw:トゥイ語
ug:ウイグル語
uk:ウクライナ語
ur:ウルドゥー語
uz:ウズベク語
vi:ベトナム語
vo:ボラピュク語
wo:ウォロフ語
xh:コサ語
yi:イディッシュ語
yo:ヨルバ語
za:チワン語
zh:中国語
zu:ズールー語
