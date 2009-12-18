
# Auto generated during CLDR build

use Test::More tests => 6;

use lib 'lib', '../lib';

BEGIN {
    use_ok('Locales::DB::Language::ee');
    use_ok('Locales::DB::Territory::ee');
}

diag("Sanity checking Locales::DB::Language::ee $Locales::DB::Language::ee::VERSION DB");

use Locales;
use Locales::DB::Language::en;
use Locales::DB::Territory::en;

my @en_lang_codes = sort( keys %Locales::DB::Language::en::code_to_name );
my @en_terr_codes = sort( keys %Locales::DB::Territory::en::code_to_name );

my @my_lang_codes = sort( keys %Locales::DB::Language::ee::code_to_name );
my @my_terr_codes = sort( keys %Locales::DB::Territory::ee::code_to_name );
my %lang_lu;
my %terr_lu;
@lang_lu{@my_lang_codes} = ();
@terr_lu{@my_terr_codes} = ();
ok( $Locales::DB::Language::ee::cldr_version eq $Locales::cldr_version,       'CLDR version is correct' );
ok( $Locales::DB::Language::ee::VERSION      eq ( $Locales::VERSION - 0.09 ), 'VERSION is correct' );

ok( !( grep { !exists $lang_lu{$_} } @en_lang_codes ), 'ee languages contains en' );
ok( !( grep { !exists $terr_lu{$_} } @en_terr_codes ), 'ee territories contains en' );

