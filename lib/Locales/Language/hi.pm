package Locales::Language::hi;
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

Locales::Language::hi - ISO 639 Language Codes in Hindi.

=head1 SYNOPSIS

  require Locales::Language::hi;

  my $hi = new Locales::Language::hi;

  print "  ", $hi->getLocale, " => ", $hi->code2language ( "hi" ), "\n";
  print "  ", $hi->getLocale, " => ", $hi->language2code ( "हिंदी" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Hindi language ISO 639
language codes.  All of the functions available in the Locale::Language
module are available here as class methods.

This module may be used indirectly through the L<Locales::Language> module
which also exports functions in the style of L<Locale::Language>.

Documentation remains under development.


=head1 COPYRIGHT

This module is free software; you can redistribute it and/or modify it under
the shi terms as Perl itself.

=head1 BUGS

None presently known.

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Language>

Included with this package:

  examples/lang*.pl

=cut




1;
__DATA__
aa:अफ़ार
ab:अब्खाज़ियन्
af:अफ्रीकी
am:अम्हारिक्
ar:अरबी
as:असामी
ay:आयमारा
az:अज़रबैंजानी
ba:बशख़िर
be:बैलोरूशियन्
bg:बल्गेरियन्
bh:बिहारी
bi:बिस्लामा
bn:बँगाली
bo:तिब्बती
br:ब्रेटन
ca:कातालान
co:कोर्सीकन
cs:चेक
cy:वेल्श
da:डैनीश
de:ज़र्मन
dz:भुटानी
el:ग्रीक
en:अंग्रेजी
eo:एस्पेरान्तो
es:स्पेनिश
et:ऐस्तोनियन्
eu:बास्क्
fa:पर्शियन्
fi:फिनिश
fj:फ़ीजी
fo:फिरोज़ी
fr:फ्रेंच
fy:फ्रीज़न्
ga:आईरिश
gd:स्काट्स् गायेलिक्
gl:गैलिशियन्
gn:गुआरानी
gu:गुज़राती
ha:होउसा
he:हिब्रीऊ
hi:हिंदी
hr:क्रोएशन्
hu:हंगेरी
hy:अरमेनियन्
ia:ईन्टरलिंगुआ
id:इन्डोनेशियन्
ie:ईन्टरलिंगुइ
ik:इनुपियाक्
is:आईस्लैंडिक्
it:ईटालियन्
iu:इनूकीटूत्
ja:जापानी
jv:जावानीस
ka:जॉर्जीयन्
kk:कज़ाख
kl:ग्रीनलैंडिक
km:कैम्बोडियन्
kn:कन्नड़
ko:कोरीयन्
kok:कोंकणी
ks:काश्मिरी
ku:कुरदीश
ky:किरघिज़
la:लैटीन
ln:लिंगाला
lo:लाओथीयन्
lt:लिथुनियन्
lv:लाटवियन् (लेट्टीश)
mg:मालागासी
mi:मेओरी
mk:मैसेडोनियन्
ml:मलयालम
mn:मोंगोलियन
mo:मोलडावियन्
mr:मराठी
ms:मलय
mt:मालटिस्
my:बर्लिस
na:नायरू
ne:नेपाली
nl:डच्
no:नार्वेजीयन्
oc:ओसीटान
om:ओरोमो (अफ़ान)
or:उड़िया
pa:पंजाबी
pl:पॉलिश
ps:पॉशतो (पुशतो)
pt:पुर्तुगी
qu:क्वेशुआ
raj:राजेस्थानी
rm:रहेय्टो-रोमान्स
rn:किरून्दी
ro:रूमानीयन्
root:शिखर
ru:रुसी
rw:किन्यारवाण्डा
sa:संस्कृत
sd:सिन्धी
sg:साँग्रो
sh:सेर्बो-क्रोएशन्
si:शिंघालीस्
sk:स्लोवाक्
sl:स्लोवेनियन्
sm:सामोन
sn:सोणा
so:सोमाली
sq:अल्बेनियन्
sr:सर्बियन्
ss:सीस्वाटि
st:सेसोथो
su:सुन्दानीस
sv:स्विडिश
sw:स्वाहिली
ta:तमिल
te:तेलेगु
tg:ताजिक्
th:थाई
ti:तिग्रीन्या
tk:तुक्रमेन
tl:तागालोग
tn:सेत्स्वाना
to:टोंगा
tr:तुक्रीश
ts:सोंगा
tt:टाटर
tw:ट्वी
ug:उईघुर
uk:यूक्रेनियन्
ur:ऊर्दु
uz:उज़बेक्
vi:वियेतनामी
vo:वोलापुक
wo:वोलोफ
xh:षोसा
yi:येहुदी
yo:योरूबा
za:ज़ुआंग
zh:चीनी
zu:ज़ुलू
