use Test::More tests => 3;

use lib 'lib', '../lib';

BEGIN {
    use_ok('Locales');
}

SKIP: {
    skip 'File::Slurp is needed for these tests, skipping ...', 2 unless eval "require File::Slurp";
}

diag("Sanity checking Locales $Locales::VERSION DB");

my $path = $INC{'Locales.pm'};
$path =~ s/\.pm$//;

my $language_path  = "$path/DB/Language";     # make me portable
my $territory_path = "$path/DB/Territory";    # make me portable

my @langs = sort( map { my $pm = $_; $pm =~ s{\.pm$}{}; $pm } File::Slurp::read_dir($language_path) );
my @terrs = sort( map { my $pm = $_; $pm =~ s{\.pm$}{}; $pm } File::Slurp::read_dir($territory_path) );
is_deeply( \@langs, \@terrs, 'DB/Language and DB/Territory contain the same locales' );

use Locales::DB::Language::en;
use Locales::DB::Territory::en;
my @en_lang_codes = sort( keys %Locales::DB::Language::en::code_to_name );
my @en_terr_codes = sort( keys %Locales::DB::Territory::en::code_to_name );

my %lang_lu;
@lang_lu{@en_lang_codes} = ();
ok(!( grep { !exists $lang_lu{$_} } @langs ), 'en codes contain available locales');
