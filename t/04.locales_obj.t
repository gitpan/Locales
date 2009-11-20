use Test::More tests => 62;

use lib 'lib', '../lib';

BEGIN {
    use_ok('Locales');
}

use Locales::DB::Language::ja;
use Locales::DB::Language::fr;
use Locales::DB::Territory::en_au;
use Locales::DB::Territory::en;
use Locales::DB::Language::ar;

## functions ##

# split_tag
# get_i_tag_for_string
# normalize_tag
# normalize_for_key_lookup

ok( Locales::normalize_tag("123456789_abc_1234567812345678123456789_12345678_12345678") eq '12345678_9_abc_12345678_12345678_12345678_9_12345678_12345678', '> 8 char sequence, less than 8, 8 followed by _ , multiple 8 run + extra, and 8 at the end');

## new && get_locale && singleton ##
my $no_arg = Locales->new();
my $en = Locales->new('en');
my $fr = Locales->new('fr');
my $ar = Locales->new('ar');

ok($en->get_native_language_from_code('en') eq $Locales::DB::Language::en::code_to_name{'en'}, 'get_native_language_from_code() 1 w/ en');
ok($en->get_native_language_from_code('fr') eq $Locales::DB::Language::fr::code_to_name{'fr'}, 'get_native_language_from_code() 2 w/ en');
ok($fr->get_native_language_from_code('en') eq $Locales::DB::Language::en::code_to_name{'en'}, 'get_native_language_from_code() 1 w/ non-en');
ok($fr->get_native_language_from_code('fr') eq $Locales::DB::Language::fr::code_to_name{'fr'}, 'get_native_language_from_code() 2 w/ non-en');

ok($en->get_native_language_from_code() eq $Locales::DB::Language::en::code_to_name{'en'}, 'get_native_language_from_code() no-arg w/ en');
ok($fr->get_native_language_from_code() eq $Locales::DB::Language::fr::code_to_name{'fr'}, 'get_native_language_from_code() no-arg w/ non-en');

ok($en->get_character_orientation_from_code('en') eq $Locales::DB::Language::en::misc_info{'orientation'}{'characters'}, 'get_character_orientation_from_code() 1 w/ en');
ok($en->get_character_orientation_from_code('ar') eq $Locales::DB::Language::ar::misc_info{'orientation'}{'characters'}, 'get_character_orientation_from_code() 2 w/ en');
ok($ar->get_character_orientation_from_code('en') eq $Locales::DB::Language::en::misc_info{'orientation'}{'characters'}, 'get_character_orientation_from_code() 1 w/ non-en');
ok($ar->get_character_orientation_from_code('ar') eq $Locales::DB::Language::ar::misc_info{'orientation'}{'characters'}, 'get_character_orientation_from_code() 2 w/ non-en');

ok($en->get_character_orientation_from_code() eq $Locales::DB::Language::en::misc_info{'orientation'}{'characters'}, 'get_character_orientation_from_code() no-arg w/ en');
ok($ar->get_character_orientation_from_code() eq $Locales::DB::Language::ar::misc_info{'orientation'}{'characters'}, 'get_character_orientation_from_code() no-arg w/ non-en');

my $xx = Locales->new('adfvddsfvsdfv');
ok($@, '$@ is set after invalid arg');
ok(!$xx, 'new() returns false on invalid arg');
ok($no_arg->get_locale eq 'en', 'no arg default to en');
ok($en->get_locale eq 'en', 'en arg is en');
ok($no_arg eq $en, '>1 en\'s singleton');
ok($fr->get_locale eq 'fr', 'known arg is correct locale');
Locales->new("Locales;print 'injection attack;'");
ok($@ =~ m{Locales\/DB\/Language\/locales_print_injectio_nattack_\.pm}, 'injection attack via eval thwarted by normalization');

##  get_territory() && get_language ##
ok($en->get_language() eq 'en', 'get_language tag w/ no territory');
ok(!$en->get_territory(), 'get_territory tag w/ no territory');
my $en_au = Locales->new('en_au');
ok($en_au->get_language() eq 'en', 'get_language tag w/ territory');
ok($en_au->get_territory() eq 'au', 'get_territory tag w/ territory');

## get_* territory ##
is_deeply( [sort(keys %Locales::DB::Territory::en::code_to_name)], [sort($en->get_territory_codes())], 'get_territory_codes()');
is_deeply( [sort(values %Locales::DB::Territory::en::code_to_name)], [sort($en->get_territory_names())], 'get_territory_names()');
ok($en->get_territory_from_code('us') eq $Locales::DB::Territory::en::code_to_name{'us'}, 'get_territory_from_code() w/ known arg');
ok($en->get_territory_from_code('  en-GB') eq $Locales::DB::Territory::en::code_to_name{'gb'}, 'get_territory_from_code() normalized');
ok(!$en->get_territory_from_code('ucscs'), 'get_territory_from_code() w/ unknown arg');
ok($en->get_territory_from_code('ucscs',1) eq 'ucscs', 'get_territory_from_code() w/ unknown arg + always_return');
ok($en->get_code_from_territory($Locales::DB::Territory::en::code_to_name{'us'}) eq 'us', 'get_territory_from_code() w/ known arg');
ok(!$en->get_code_from_territory('asdcasdcasdcdc'), 'get_code_from_territory() w/ unknown arg');

ok(!$en->get_territory_from_code(), 'get_territory_from_code() no arg on locale w/ out a territory');
ok($en_au->get_territory_from_code() eq $Locales::DB::Territory::en_au::code_to_name{$en_au->get_territory()}, 'get_territory_from_code() no arg on locale w/ a territory');

ok(\&Locales::code2territory eq \&Locales::get_territory_from_code, 'code2territory aliases get_territory_from_code');
ok(\&Locales::territory2code eq \&Locales::get_code_from_territory, 'territory2code aliases get_code_from_territory');

## get* language ##
is_deeply( [sort(keys %Locales::DB::Language::en::code_to_name)], [sort($en->get_language_codes())], 'get_language_codes()');
is_deeply( [sort(values %Locales::DB::Language::en::code_to_name)], [sort($en->get_language_names())], 'get_language_names()');
ok($en->get_language_from_code('en') eq $Locales::DB::Language::en::code_to_name{'en'}, 'get_language_from_code() w/ known arg');
ok($en->get_language_from_code('  en-GB') eq $Locales::DB::Language::en::code_to_name{'en_gb'}, 'get_language_from_code() normalized');
ok(!$en->get_language_from_code('ucscs'), 'get_language_from_code() w/ unknown arg');
ok($en->get_territory_from_code('ucscs',1) eq 'ucscs', 'get_language_from_code() w/ unknown arg + always_return');
ok($en->get_code_from_language($Locales::DB::Language::en::code_to_name{'en'}) eq 'en', 'get_code_from_language() w/ known arg');
ok(!$en->get_code_from_language('asdcasdcasdcdc'), 'get_code_from_language() w/ unknown arg');

ok($en->get_language_from_code() eq $Locales::DB::Language::en_au::code_to_name{$en->get_locale()}, 'get_language_from_code() no arg on locale w/ out a territory');
ok($en_au->get_language_from_code() eq $Locales::DB::Language::en_au::code_to_name{$en_au->get_locale()}, 'get_territory_from_code() no arg on locale w/ a territory');

ok($en->get_language_from_code('yyyy',1) eq 'yyyy', 'get_language_from_code() + unknown lang only + always_return');
ok($en->get_language_from_code('yyyy_zzzzz',1) eq 'yyyy_zzzzz', 'get_language_from_code() + unknown lang & unknown territory + always_return');
ok($en->get_language_from_code('en_zzzzz',1) eq "$Locales::DB::Language::en::code_to_name{'en'} (zzzzz)", 'get_language_from_code() + known lang & unknown territory + always_return');
ok($en->get_language_from_code('yyyy_us',1) eq "yyyy ($Locales::DB::Territory::en::code_to_name{'us'})", 'get_language_from_code() + unknown lang & known territory + always_return');

ok($en->get_native_language_from_code('yyyy',1) eq $en->get_language_from_code('yyyy',1), 'get_language_from_code() + unknown lang only + always_return');
ok($en->get_native_language_from_code('yyyy_zzzzz',1) eq $en->get_language_from_code('yyyy_zzzzz',1), 'get_language_from_code() + unknown lang & unknown territory + always_return');
ok($en->get_native_language_from_code('en_zzzzz',1) eq $en->get_language_from_code('en_zzzzz',1), 'get_language_from_code() + known lang & unknown territory + always_return');
ok($en->get_native_language_from_code('yyyy_us',1) eq $en->get_language_from_code('yyyy_us',1), 'get_language_from_code() + unknown lang & known territory + always_return');

ok($fr->get_native_language_from_code('yyyy',1) eq $fr->get_language_from_code('yyyy',1), 'get_language_from_code() + unknown lang only + always_return');
ok($fr->get_native_language_from_code('yyyy_zzzzz',1) eq $fr->get_language_from_code('yyyy_zzzzz',1), 'get_language_from_code() + unknown lang & unknown territory + always_return');
ok($fr->get_native_language_from_code('fr_zzzzz',1) eq $fr->get_language_from_code('fr_zzzzz',1), 'get_language_from_code() + known lang & unknown territory + always_return');
ok($fr->get_native_language_from_code('yyyy_us',1) eq $fr->get_language_from_code('yyyy_us',1), 'get_language_from_code() + unknown lang & known territory + always_return');

ok(\&Locales::code2language eq \&Locales::get_language_from_code, 'code2language aliases get_language_from_code');
ok(\&Locales::language2code eq \&Locales::get_code_from_language, 'language2code aliases get_code_from_language');

# misc_info
my $ja = Locales->new('ja'); # ja ='{0}({1})' not '{0} ({1})'
ok($ja->get_language_from_code('en_zzzzz',1) eq "$Locales::DB::Language::ja::code_to_name{'en'}(zzzzz)", 'get_language_from_code() unknown part pattern');
