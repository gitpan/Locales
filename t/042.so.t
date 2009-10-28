
# Auto generated during CLDR build

use Test::More tests => 6;

use lib 'lib', '../lib';

BEGIN {
    use_ok('Locales::DB::Language::so');
    use_ok('Locales::DB::Territory::so');
}

diag("Sanity checking Locales::DB::Language::so $Locales::DB::Language::so::VERSION DB");

use Locales;
use Locales::DB::Language::en;
use Locales::DB::Territory::en;

my @en_lang_codes = sort( keys %Locales::DB::Language::en::code_to_name );
my @en_terr_codes = sort( keys %Locales::DB::Territory::en::code_to_name );

my @my_lang_codes = sort( keys %Locales::DB::Language::so::code_to_name );
my @my_terr_codes = sort( keys %Locales::DB::Territory::so::code_to_name );
my %lang_lu;
my %terr_lu;
@lang_lu{@my_lang_codes} = ();
@terr_lu{@my_terr_codes} = ();
ok( $Locales::DB::Language::so::cldr_version eq $Locales::cldr_version,       'CLDR version is correct' );
ok( $Locales::DB::Language::so::VERSION      eq ( $Locales::VERSION - 0.05 ), 'VERSION is correct' );

ok( !( grep { !exists $lang_lu{$_} } @en_lang_codes ), 'so languages contains en' );
ok( !( grep { !exists $terr_lu{$_} } @en_terr_codes ), 'so territories contains en' );

