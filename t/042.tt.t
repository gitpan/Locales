
# Auto generated during CLDR build

use Test::More tests => 6;

use lib 'lib', '../lib';

BEGIN {
    use_ok('Locales::DB::Language::tt');
    use_ok('Locales::DB::Territory::tt');
}

diag("Sanity checking Locales::DB::Language::tt $Locales::DB::Language::tt::VERSION DB");

use Locales;
use Locales::DB::Language::en;
use Locales::DB::Territory::en;

my @en_lang_codes = sort( keys %Locales::DB::Language::en::code_to_name );
my @en_terr_codes = sort( keys %Locales::DB::Territory::en::code_to_name );

my @my_lang_codes = sort( keys %Locales::DB::Language::tt::code_to_name );
my @my_terr_codes = sort( keys %Locales::DB::Territory::tt::code_to_name );
my %lang_lu;
my %terr_lu;
@lang_lu{@my_lang_codes} = ();
@terr_lu{@my_terr_codes} = ();
ok( $Locales::DB::Language::tt::cldr_version eq $Locales::cldr_version,       'CLDR version is correct' );
ok( $Locales::DB::Language::tt::VERSION      eq ( $Locales::VERSION - 0.05 ), 'VERSION is correct' );

ok( !( grep { !exists $lang_lu{$_} } @en_lang_codes ), 'tt languages contains en' );
ok( !( grep { !exists $terr_lu{$_} } @en_terr_codes ), 'tt territories contains en' );
