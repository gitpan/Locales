package Locales::Language::am;
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

Locales::Language::am - ISO 639 Language Codes in Amharic.

=head1 SYNOPSIS

  require Locales::Language::am;

  my $am = new Locales::Language::am;

  print "  ", $am->getLocale, " => ", $am->code2language ( "am" ), "\n";
  print "  ", $am->getLocale, " => ", $am->language2code ( "አማርኛ" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Amharic language ISO 639
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
aa:አፋርኛ
ab:አብሐዚኛ
af:አፍሪቃንስኛ
am:አማርኛ
ar:ዐርቢኛ
as:አሳሜዛዊ
ay:አያማርኛ
az:አዜርባይጃንኛ
ba:ባስኪርኛ
be:ቤላራሻኛ
bg:ቡልጋሪኛ
bh:ቢሃሪ
bi:ቢስላምኛ
bn:በንጋሊኛ
bo:ትበትንኛ
br:ብሬቶንኛ
ca:ካታላንኛ
co:ኮርሲካኛ
cs:ቼክኛ
cy:ወልሽ
da:ዴኒሽ
de:ጀርመን
dz:ድዞንግኻኛ
el:ግሪክኛ
en:እንግሊዝኛ
eo:ኤስፐራንቶ
es:ስፓኒሽ
et:ኤስቶኒአን
eu:ባስክኛ
fa:ፐርሲያኛ
fi:ፊኒሽ
fj:ፊጂኛ
fo:ፋሮኛ
fr:ፈረንሳይኛ
fy:ፍሪስኛ
ga:አይሪሽ
gd:እስኮትስ ጌልክኛ
gl:ጋለጋኛ
gn:ጓራኒኛ
gu:ጉጃርቲኛ
ha:ሃውሳኛ
he:ዕብራስጥ
hi:ሐንድኛ
hr:ክሮሽያንኛ
hu:ሀንጋሪኛ
hy:አርመናዊ
ia:ኢንቴርሊንጓ
id:እንዶኒሲኛ
ie:እንተርሊንግወ
ik:እኑፒያቅኛ
is:አይስላንድኛ
it:ጣሊያንኛ
iu:እኑክቲቱትኛ
ja:ጃፓንኛ
jv:ጃቫንኛ
ka:ጊዮርጊያን
kk:ካዛክኛ
kl:ካላሊሱትኛ
km:ክመርኛ
kn:ካናዳኛ
ko:ኮሪያኛ
ks:ካሽሚርኛ
ku:ኩርድሽኛ
ky:ኪርጊዝኛ
la:ላቲንኛ
ln:ሊንጋላኛ
lo:ላውስኛ
lt:ሊቱአኒያን
lv:ላትቪያን
mg:ማላጋስኛ
mi:ማዮሪኛ
mk:ማከዶኒኛ
ml:ማላያላምኛ
mn:ሞንጎላዊኛ
mo:ሞልዳቫዊና
mr:ማራዚኛ
ms:ማላይኛ
mt:ማልቲስኛ
my:ቡርማኛ
na:ናኡሩ
ne:ኔፓሊኛ
nl:ደች
no:ኖርዌጂያን
oc:ኦኪታንኛ
om:ኦሮምኛ
or:ኦሪያኛ
pa:ፓንጃቢኛ
pl:ፖሊሽ
ps:ፑሽቶኛ
pt:ፖርቱጋሊኛ
qu:ኵቿኛ
rm:ሮማንስ
rn:ሩንዲኛ
ro:ሮማኒያን
ru:ራሽኛ
rw:ኪንያርዋንድኛ
sa:ሳንስክሪትኛ
sd:ሲንድሂኛ
sg:ሳንጎኛ
si:ስንሃልኛ
sk:ስሎቫክኛ
sl:ስሎቪኛ
sm:ሳሞአኛ
sn:ሾናኛ
so:ሱማልኛ
sq:ልቤኒኛ
sr:ሰርቢኛ
ss:ስዋቲኛ
st:ሶዞኛ
su:ሱዳንኛ
sv:ስዊድንኛ
sw:ስዋሂሊኛ
ta:ታሚልኛ
te:ተሉጉኛ
tg:ታጂኪኛ
th:ታይኛ
ti:ትግርኛ
tk:ቱርክመንኛ
tl:ታጋሎገኛ
tn:ጽዋናዊኛ
to:ቶንጋ
tr:ቱርክኛ
ts:ጾንጋኛ
tt:ታታርኛ
tw:ትዊኛ
ug:ኡዊግሁርኛ
uk:ዩክረኒኛ
ur:ኡርዱኛ
uz:ኡዝበክኛ
vi:ቪትናምኛ
vo:ቮላፑክኛ
wo:ዎሎፍኛ
xh:ዞሳኛ
yi:ይዲሻዊኛ
yo:ዮሩባዊኛ
za:ዡዋንግኛ
zh:ቻይንኛ
zu:ዙሉኛ
gez:ግዕዝኛ
tig:ትግረ
sid:ሲዳምኛ
