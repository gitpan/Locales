
# Auto generated during CLDR build

use Test::More tests => 6;

use lib 'lib', '../lib';

BEGIN {
    use_ok('Locales::DB::Language::bs');
    use_ok('Locales::DB::Territory::bs');
}

diag("Sanity checking Locales::DB::Language::bs $Locales::DB::Language::bs::VERSION DB");

use Locales;
use Locales::DB::Language::en;
use Locales::DB::Territory::en;

my @en_lang_codes = sort( keys %Locales::DB::Language::en::code_to_name );
my @en_terr_codes = sort( keys %Locales::DB::Territory::en::code_to_name );

my @my_lang_codes = sort( keys %Locales::DB::Language::bs::code_to_name );
my @my_terr_codes = sort( keys %Locales::DB::Territory::bs::code_to_name );
my %lang_lu;
my %terr_lu;
@lang_lu{@my_lang_codes} = ();
@terr_lu{@my_terr_codes} = ();
ok( $Locales::DB::Language::bs::cldr_version eq $Locales::cldr_version,       'CLDR version is correct' );
ok( $Locales::DB::Language::bs::VERSION      eq ( $Locales::VERSION - 0.06 ), 'VERSION is correct' );

ok( !( grep { !exists $lang_lu{$_} } @en_lang_codes ), 'bs languages contains en' );
ok( !( grep { !exists $terr_lu{$_} } @en_terr_codes ), 'bs territories contains en' );

