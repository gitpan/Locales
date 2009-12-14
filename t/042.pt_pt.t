
# Auto generated during CLDR build

use Test::More tests => 6;

use lib 'lib', '../lib';

BEGIN {
    use_ok('Locales::DB::Language::pt_pt');
    use_ok('Locales::DB::Territory::pt_pt');
}

diag("Sanity checking Locales::DB::Language::pt_pt $Locales::DB::Language::pt_pt::VERSION DB");

use Locales;
use Locales::DB::Language::en;
use Locales::DB::Territory::en;

my @en_lang_codes = sort( keys %Locales::DB::Language::en::code_to_name );
my @en_terr_codes = sort( keys %Locales::DB::Territory::en::code_to_name );

my @my_lang_codes = sort( keys %Locales::DB::Language::pt_pt::code_to_name );
my @my_terr_codes = sort( keys %Locales::DB::Territory::pt_pt::code_to_name );
my %lang_lu;
my %terr_lu;
@lang_lu{@my_lang_codes} = ();
@terr_lu{@my_terr_codes} = ();
ok( $Locales::DB::Language::pt_pt::cldr_version eq $Locales::cldr_version,       'CLDR version is correct' );
ok( $Locales::DB::Language::pt_pt::VERSION      eq ( $Locales::VERSION - 0.12 ), 'VERSION is correct' );

ok( !( grep { !exists $lang_lu{$_} } @en_lang_codes ), 'pt_pt languages contains en' );
ok( !( grep { !exists $terr_lu{$_} } @en_terr_codes ), 'pt_pt territories contains en' );

