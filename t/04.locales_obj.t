use Test::More tests => 223;
use Test::Carp;

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
# normalize_tag with trailing _

# normalize_tag_for_datetime_locale
is( Locales::normalize_tag_for_datetime_locale("EN"),    'en',    'DT with no country part' );
is( Locales::normalize_tag_for_datetime_locale("en-gb"), 'en_GB', 'DT with countyr part' );

# normalize_tag_for_datetime_locale
# normalize_for_key_lookup

my $t = Locales->new();
is( $t->get_list_and(),                undef,                  'get_list_and() no args means nothing returned' );
is( $t->get_list_and('a'),             'a',                    'get_list_and() 1 arg' );
is( $t->get_list_and(qw(a b)),         'a and b',              'get_list_and() 2 args' );
is( $t->get_list_and(qw(a b c)),       'a, b, and c',          'get_list_and() 3 args' );
is( $t->get_list_and(qw(a b c d)),     'a, b, c, and d',       'get_list_and() 3+ args 1' );
is( $t->get_list_and(qw(a b c d e)),   'a, b, c, d, and e',    'get_list_and() 3+ args 2' );
is( $t->get_list_and(qw(a b c d e f)), 'a, b, c, d, e, and f', 'get_list_and() 3+ args 3' );

is( $t->get_list_or(),                undef,                 'get_list_or() no args means nothing returned' );
is( $t->get_list_or('a'),             'a',                   'get_list_or() 1 arg' );
is( $t->get_list_or(qw(a b)),         'a or b',              'get_list_or() 2 args' );
is( $t->get_list_or(qw(a b c)),       'a, b, or c',          'get_list_or() 3 args' );
is( $t->get_list_or(qw(a b c d)),     'a, b, c, or d',       'get_list_or() 3+ args 1' );
is( $t->get_list_or(qw(a b c d e)),   'a, b, c, d, or e',    'get_list_or() 3+ args 2' );
is( $t->get_list_or(qw(a b c d e f)), 'a, b, c, d, e, or f', 'get_list_or() 3+ args 3' );

my $es = Locales->new("es");
is( $es->get_list_and(),                undef,               'get_list_and() no args means nothing returned' );
is( $es->get_list_and('a'),             'a',                 'get_list_and() 1 arg' );
is( $es->get_list_and(qw(a b)),         'a y b',             'get_list_and() 2 args' );
is( $es->get_list_and(qw(a b c)),       'a, b y c',          'get_list_and() 3 args' );
is( $es->get_list_and(qw(a b c d)),     'a, b, c y d',       'get_list_and() 3+ args 1' );
is( $es->get_list_and(qw(a b c d e)),   'a, b, c, d y e',    'get_list_and() 3+ args 2' );
is( $es->get_list_and(qw(a b c d e f)), 'a, b, c, d, e y f', 'get_list_and() 3+ args 3' );

# only 'en' works pending pending http://unicode.org/cldr/trac/ticket/4051
is( $es->get_list_or(),                undef,               'get_list_or() no args means nothing returned' );
is( $es->get_list_or('a'),             'a',                 'get_list_or() 1 arg' );
is( $es->get_list_or(qw(a b)),         'a y b',             'get_list_or() 2 args' );
is( $es->get_list_or(qw(a b c)),       'a, b y c',          'get_list_or() 3 args' );
is( $es->get_list_or(qw(a b c d)),     'a, b, c y d',       'get_list_or() 3+ args 1' );
is( $es->get_list_or(qw(a b c d e)),   'a, b, c, d y e',    'get_list_or() 3+ args 2' );
is( $es->get_list_or(qw(a b c d e f)), 'a, b, c, d, e y f', 'get_list_or() 3+ args 3' );

# get_formatted_decimal()
is( $t->get_formatted_decimal(1234567890),          '1,234,567,890',        'basic int - num' );
is( $t->get_formatted_decimal('1234567890'),        '1,234,567,890',        'basic int - str' );
is( $t->get_formatted_decimal(-1234567890),         '-1,234,567,890',       'basic int negative - num' );
is( $t->get_formatted_decimal('-1234567890'),       '-1,234,567,890',       'basic int negative - str' );
is( $t->get_formatted_decimal(1234567890.12345),    '1,234,567,890.12345',  'basic dec - num' );
is( $t->get_formatted_decimal('1234567890.12345'),  '1,234,567,890.12345',  'basic dec - str' );
is( $t->get_formatted_decimal(-1234567890.12345),   '-1,234,567,890.12345', 'basic dec negative - num' );
is( $t->get_formatted_decimal('-1234567890.12345'), '-1,234,567,890.12345', 'basic dec negative - str' );

is( $t->get_formatted_decimal( 1234567890,          3 ), '1,234,567,890',       'max - basic int - num' );
is( $t->get_formatted_decimal( '1234567890',        3 ), '1,234,567,890',       'max - basic int - str' );
is( $t->get_formatted_decimal( -1234567890,         3 ), '-1,234,567,890',      'max - basic int negative - num' );
is( $t->get_formatted_decimal( '-1234567890',       3 ), '-1,234,567,890',      'max - basic int negative - str' );
is( $t->get_formatted_decimal( 1234567890.12345,    3 ), '1,234,567,890.123',   'max - no round - basic dec - num' );
is( $t->get_formatted_decimal( '1234567890.12345',  3 ), '1,234,567,890.123',   'max - no round - basic dec - str' );
is( $t->get_formatted_decimal( -1234567890.12345,   3 ), '-1,234,567,890.123',  'max - no round - basic dec negative - num' );
is( $t->get_formatted_decimal( '-1234567890.12345', 4 ), '-1,234,567,890.1235', 'max - no round - basic dec negative - str' );
is( $t->get_formatted_decimal( 1234567890.12345,    4 ), '1,234,567,890.1235',  'max - round - basic dec - num' );
is( $t->get_formatted_decimal( '1234567890.12345',  4 ), '1,234,567,890.1235',  'max - round - basic dec - str' );
is( $t->get_formatted_decimal( -1234567890.12345,   4 ), '-1,234,567,890.1235', 'max - round - basic dec negative - num' );
is( $t->get_formatted_decimal( '-1234567890.12345', 4 ), '-1,234,567,890.1235', 'max - round - basic dec negative - str' );

like( $t->get_formatted_decimal(99999999999999999983222787.1234), qr/e/i, 'exponential number is passed through' );
is( $t->get_formatted_decimal("99999999999999999983222787.1234"), '99,999,999,999,999,999,983,222,787.1234', 'exponential number as string is formatted' );
like( $t->get_formatted_decimal(99999999999999999983222787.1234), qr/e/i, 'exponential number is passed through' );
is( $t->get_formatted_decimal("99999999999999999983222787.1234"), '99,999,999,999,999,999,983,222,787.1234', 'exponential number as string is formatted' );

# small num, long dec
is( $t->get_formatted_decimal(12.99999999999999),   '13', 'small num, long dec - num' );
is( $t->get_formatted_decimal("12.99999999999999"), '13', 'small num, long dec - str' );
is( $t->get_formatted_decimal( 12.99999999999999,   13 ), '13',                'small num, long dec < max- num' );
is( $t->get_formatted_decimal( "12.99999999999999", 13 ), '13',                'small num, long dec < max - str' );
is( $t->get_formatted_decimal( 12.99999999999999,   14 ), '12.99999999999999', 'small num, long dec = max- num' );
is( $t->get_formatted_decimal( "12.99999999999999", 14 ), '12.99999999999999', 'small num, long dec = max - str' );
is( $t->get_formatted_decimal( 12.99999999999999,   15 ), '12.99999999999999', 'small num, long dec > max- num' );
is( $t->get_formatted_decimal( "12.99999999999999", 15 ), '12.99999999999999', 'small num, long dec > max - str' );

# bug num, long dec
is( $t->get_formatted_decimal(10000000001.99999999999999),   '10,000,000,002',   'big num, long dec - num' );
is( $t->get_formatted_decimal("10000000001.99999999999999"), '10,000,000,001.1', 'big num, long dec - str' );
is( $t->get_formatted_decimal( 10000000001.99999999999999,   13 ), '10,000,000,002',                'big num, long dec < max- num' );
is( $t->get_formatted_decimal( "10000000001.99999999999999", 13 ), '10,000,000,001.1',              'big num, long dec < max - str' );
is( $t->get_formatted_decimal( 10000000001.99999999999999,   14 ), '10,000,000,002',                'big num, long dec = max- num' );
is( $t->get_formatted_decimal( "10000000001.99999999999999", 14 ), '10,000,000,001.99999999999999', 'big num, long dec = max - str' );
is( $t->get_formatted_decimal( 10000000001.99999999999999,   15 ), '10,000,000,002',                'big num, long dec > max- num' );
is( $t->get_formatted_decimal( "10000000001.99999999999999", 15 ), '10,000,000,001.99999999999999', 'big num, long dec > max - str' );

{
    my $hi = Locales->new('hi');    # hi #,##,##0.###
    is( $hi->get_formatted_decimal(1234567890.12345), '1,23,45,67,890.12345', 'non standard format' );
    my $ar = Locales->new('ar');    # ar #,##0.###;#,##0.###-
    is( $ar->get_formatted_decimal(1234567890.12345),  '1٬234٬567٬890٫12345',  'non standard format w/ neg - pos' );
    is( $ar->get_formatted_decimal(-1234567890.12345), '1٬234٬567٬890٫12345-', 'non standard format w/ neg - neg' );
    my $hy = Locales->new('hy');    # hy #0.###
    is( $hy->get_formatted_decimal(1234567890.12345), '1234567890,12345', 'non standard format only one part' );
}

is( $t->get_formatted_decimal(100_000_001),                   '100,000,001', 'integer via underscore stringified by perl OK' );
is( $t->get_formatted_decimal(0575360401),                    '100,000,001', 'octal stringified by perl OK' );
is( $t->get_formatted_decimal(0b101111101011110000100000001), '100,000,001', 'binary stringified by perl OK' );
is( $t->get_formatted_decimal(0x5f5e101),                     '100,000,001', 'hexidecimal stringified by perl OK' );

is_deeply( [ Locales::get_cldr_plural_category_list() ],  [qw(one two few many other zero)],  'plural category list (arg order) is as expected (content and order)' );
is_deeply( [ Locales::get_cldr_plural_category_list(1) ], [qw(zero one two few many other )], 'plural category (proc order) list is as expected (content and order)' );
ok( Locales::normalize_tag("123456789_abc_1234567812345678123456789_12345678_12345678") eq '12345678_9_abc_12345678_12345678_12345678_9_12345678_12345678', '> 8 char sequence, less than 8, 8 followed by _ , multiple 8 run + extra, and 8 at the end' );

# # http://unicode.org/repos/cldr-tmp/trunk/diff/supplemental/language_plural_rules.html has fractional data in the table but it isn't immediately clear that the table is made based on the 'within' statement
# # this was the initial manual data struct based on that table, these tests should verify one or more (all?) are correctly handled
# # 0.x, 1.x, 2.x-127.x
# '_frac_cats' => [
#       ( grep { $tag eq $_ } (qw(fr ff kab lag)) ) ? ( 'one', 'one',   'other' )
#     : ( grep { $tag eq $_ } (qw(shi)) )           ? ( 'one', 'other', 'other' )
#     : ( 'other', 'other', 'other' )
# ],

my $one_one_other = Locales->new('fr');
is( $one_one_other->get_plural_form("0.1"), "one",   "special category 1 0.x" );
is( $one_one_other->get_plural_form("1.1"), "one",   "special category 1 1.x" );
is( $one_one_other->get_plural_form("2.1"), "other", "special category 1 2.x +" );
my $one_other_other = Locales->new('shi');
is( $one_other_other->get_plural_form("0.1"), "one",   "special category 2 0.x" );
is( $one_other_other->get_plural_form("1.1"), "other", "special category 2 1.x" );
is( $one_other_other->get_plural_form("2.1"), "other", "special category 2 2.x +" );
my $other_other_other = Locales->new('en');
is( $other_other_other->get_plural_form("0.1"), "other", "special category 0 0.x" );
is( $other_other_other->get_plural_form("1.1"), "other", "special category 0 1.x" );
is( $other_other_other->get_plural_form("2.1"), "other", "special category 0 2.x +" );

is( $other_other_other->get_plural_form(0), "other", "category name 0" );
is( $other_other_other->get_plural_form(1), "one",   "category name 1" );
is( $other_other_other->get_plural_form(2), "other", "category name 2" );
is_deeply( [ $other_other_other->get_plural_form(0) ], [ "other", 0 ], "category name 0" );
is_deeply( [ $other_other_other->get_plural_form(1) ], [ "one",   0 ], "category name 1" );
is_deeply( [ $other_other_other->get_plural_form(2) ], [ "other", 0 ], "category name 2" );

is( $other_other_other->get_plural_form( 1,  'box', 'boxes' ), 'box',   '1 w/ no zero extra' );
is( $other_other_other->get_plural_form( 42, 'box', 'boxes' ), 'boxes', '>1 w/ no zero extra' );
is( $other_other_other->get_plural_form( 0,  'box', 'boxes' ), 'boxes', '0 w/ no zero extra' );

is( $other_other_other->get_plural_form( 1,  'box', 'boxes', 'no boxes' ), 'box',      '1 w/ zero extra' );
is( $other_other_other->get_plural_form( 42, 'box', 'boxes', 'no boxes' ), 'boxes',    '>1 w/ zero extra' );
is( $other_other_other->get_plural_form( 0,  'box', 'boxes', 'no boxes' ), 'no boxes', '0 w/ no zero extra' );

is_deeply( [ $other_other_other->get_plural_form( 1,  'box', 'boxes' ) ], [ 'box',   0 ], '1 w/ no zero extra - array context' );
is_deeply( [ $other_other_other->get_plural_form( 42, 'box', 'boxes' ) ], [ 'boxes', 0 ], '>1 w/ no zero extra - array context' );
is_deeply( [ $other_other_other->get_plural_form( 0,  'box', 'boxes' ) ], [ 'boxes', 0 ], '0 w/ no zero extra - array context' );

is_deeply( [ $other_other_other->get_plural_form( 1,  'box', 'boxes', 'no boxes' ) ], [ 'box',      0 ], '1 w/ zero extra - array context' );
is_deeply( [ $other_other_other->get_plural_form( 42, 'box', 'boxes', 'no boxes' ) ], [ 'boxes',    0 ], '>1 w/ zero extra - array context' );
is_deeply( [ $other_other_other->get_plural_form( 0,  'box', 'boxes', 'no boxes' ) ], [ 'no boxes', 1 ], '0 w/ no zero extra - array context' );

ok( Locales::get_i_tag_for_string('i_win') eq 'i_win', "i_ tag not prepended when we have it already" );
ok( Locales::get_i_tag_for_string('win')   eq 'i_win', "i_ tag prepended when we don't have it already" );

is_deeply(
    [ $other_other_other->get_plural_form_categories() ],
    $other_other_other->{'language_data'}{'misc_info'}{'plural_forms'}{'category_list'},
    'get_plural_form_categories() returns correct data (1)'
);

is_deeply(
    [ $one_one_other->get_plural_form_categories() ],
    $one_one_other->{'language_data'}{'misc_info'}{'plural_forms'}{'category_list'},
    'get_plural_form_categories() returns correct data (2)'
);

# plural_rule_hashref_to_code()
my $ehr    = {};
my $def_cr = Locales::plural_rule_hashref_to_code($ehr);
is_deeply(
    $ehr,
    { 'category_rules_compiled' => { 'one' => q{sub { return 'one' if ( ( $n == 1 ) ); return;};} } },
    'no category_rules gets default category_rules_compiled'
);
is( $def_cr->(1), 'one', 'no category_rules gets default cr 1 res' );
ok( !defined $def_cr->(0), 'no category_rules gets default cr other res' );

# test each type of 'category_rules' via plural_rule_string_to_code()

is( Locales::plural_rule_string_to_code( 'n is 4',         "RETVAL" ), q{sub { return 'RETVAL' if ( (( $_[0] == 4))); return;};},         'plural rule: n is …' );
is( Locales::plural_rule_string_to_code( 'n mod 100 is 4', "RETVAL" ), q{sub { return 'RETVAL' if ( (( ($_[0] % 100) == 4))); return;};}, 'plural rule: n mod … is …' );

is( Locales::plural_rule_string_to_code( 'n is not 4',         "RETVAL" ), q{sub { return 'RETVAL' if ( (( $_[0] != 4))); return;};},         'plural rule: n is not …' );
is( Locales::plural_rule_string_to_code( 'n mod 100 is not 4', "RETVAL" ), q{sub { return 'RETVAL' if ( (( ($_[0] % 100) != 4))); return;};}, 'plural rule: n mod … is not …' );

is( Locales::plural_rule_string_to_code( 'n not in 1..3', "RETVAL" ), q{sub { return 'RETVAL' if ( (( int($_[0]) != $_[0] || $_[0] < 1 || $_[0] > 3 ))); return;};}, 'plural rule: n not in 1..3' );
is( Locales::plural_rule_string_to_code( 'n mod 100 not in 1..3', "RETVAL" ), q{sub { return 'RETVAL' if ( (( int($_[0]) != $_[0] || ($_[0] % 100) < 1 || ($_[0] % 100) > 3 ))); return;};}, 'plural rule: n mod … not in 1..3' );

is( Locales::plural_rule_string_to_code( 'n not within 2..6', "RETVAL" ), q{sub { return 'RETVAL' if ( (( ($_[0] < 2 || $_[0] > 6) ))); return;};}, 'plural rule: n not within 2..6' );
is( Locales::plural_rule_string_to_code( 'n mod 100 not within 4..6', "RETVAL" ), q{sub { return 'RETVAL' if ( (( (($_[0] % 100) < 4 || ($_[0] % 100) > 6) ))); return;};}, 'plural rule: n mod … not within 4..6' );

is( Locales::plural_rule_string_to_code( 'n in 3..4', "RETVAL" ), q{sub { return 'RETVAL' if ( (( int($_[0]) == $_[0] && $_[0] >= 3 && $_[0] <= 4 ))); return;};}, 'plural rule: n in 3..4' );
is( Locales::plural_rule_string_to_code( 'n mod 100 in 5..6', "RETVAL" ), q{sub { return 'RETVAL' if ( (( int($_[0]) == $_[0] && ($_[0] % 100) >= 5 && ($_[0] % 100) <= 6 ))); return;};}, 'plural rule: n mod … in 5..6' );

is( Locales::plural_rule_string_to_code( 'n within 4..7', "RETVAL" ), q{sub { return 'RETVAL' if ( (( $_[0] >= 4 && $_[0] <= 7 ))); return;};}, 'plural rule: n within 4..7' );
is( Locales::plural_rule_string_to_code( 'n mod 100 within 2..5', "RETVAL" ), q{sub { return 'RETVAL' if ( (( ($_[0] % 100) >= 2 && ($_[0] % 100) <= 5 ))); return;};}, 'plural rule: n mod … within 2..5' );

ok( Locales::plural_rule_string_to_code( 'n within 4..7', "RETVAL" ) =~ m/return \'RETVAL\'/, "retval given" );
ok( Locales::plural_rule_string_to_code('n within 4..7') =~ m/return \'1\'/, "retval not given" );
ok( Locales::plural_rule_string_to_code( 'n within 4..7', 0 )       =~ m/return \'0\'/, "retval given 0" );
ok( Locales::plural_rule_string_to_code( 'n within 4..7', undef() ) =~ m/return \'1\'/, "retval given undef()" );
ok( Locales::plural_rule_string_to_code( 'n within 4..7', '' )      =~ m/return \'\'/,  "retval given ''" );

# and/or
is( Locales::plural_rule_string_to_code('n is 4 and n is 4 and n is 4'),          q{sub { return '1' if ( (( $_[0] == 4) && ( $_[0] == 4) && ( $_[0] == 4))); return;};},                        'plural_rule: and' );
is( Locales::plural_rule_string_to_code('n is 4 or n is 4 or n is 4'),            q{sub { return '1' if ( (( $_[0] == 4)) ||  (( $_[0] == 4)) ||  (( $_[0] == 4))); return;};},                  'plural_rule: or' );
is( Locales::plural_rule_string_to_code('n is 4 or n is 5 and n is 6 or n is 7'), q{sub { return '1' if ( (( $_[0] == 4)) ||  (( $_[0] == 5) && ( $_[0] == 6)) ||  (( $_[0] == 7))); return;};}, 'plural_rule: and and or' );

# syntax errors
# ok(!defined Locales::plural_rule_string_to_code('number is 4'), 'simply rule, syntax error');
# ok(!defined Locales::plural_rule_string_to_code('n is 4 and 3 is in 1 or n is not 7'), 'complex rule, syntax error');
# does_carp_that_matches(\&Locales::plural_rule_string_to_code, 'number is 4', qr/Unknown plural rule syntax/);
# does_carp_that_matches(\&Locales::plural_rule_string_to_code, 'n is 4 and 3 is in 1 or n is not 7', qr/Unknown plural rule syntax/);
# the ok's will carp so:
does_carp_that_matches(
    sub {
        ok( !defined Locales::plural_rule_string_to_code('number is 4'), 'simply rule, syntax error' );
    },
    qr/Unknown plural rule syntax/
);
does_carp_that_matches(
    sub {
        ok( !defined Locales::plural_rule_string_to_code('n is 4 and 3 is in 1 or n is not 7'), 'simply rule, syntax error' );
    },
    qr/Unknown plural rule syntax/
);

# TODO: plural_rule_string_to_code() logic is sane?

my $nhr = {
    'category_list'  => [ 'one', 'other' ],
    'category_rules' => {
        'one' => 'n is not 1 and n is not 3 or n is not 4 and n is not 5 and n is not 6 or n is 7',
    },
};
my $ncr = Locales::plural_rule_hashref_to_code($nhr);
is_deeply(
    $nhr->{'category_rules_compiled'},
    { 'one' => 'sub { return \'one\' if ( (( $_[0] != 1) && ( $_[0] != 3)) ||  (( $_[0] != 4) && ( $_[0] != 5) && ( $_[0] != 6)) ||  (( $_[0] == 7))); return;};' },
    'category_rules_compiled built correctly, and/or as expected'
);

# use Data::Dumper;diag(Dumper($nhr));

## new && get_locale && singleton ##
my $no_arg = Locales->new();
my $en     = Locales->new('en');
my $fr     = Locales->new('fr');
my $ar     = Locales->new('ar');
my $it     = Locales->new('it');

ok( $en->get_native_language_from_code('en') eq $Locales::DB::Language::en::code_to_name{'en'}, 'get_native_language_from_code() 1 w/ en' );
ok( $en->get_native_language_from_code('fr') eq $Locales::DB::Language::fr::code_to_name{'fr'}, 'get_native_language_from_code() 2 w/ en' );
ok( $fr->get_native_language_from_code('en') eq $Locales::DB::Language::en::code_to_name{'en'}, 'get_native_language_from_code() 1 w/ non-en' );
ok( $fr->get_native_language_from_code('fr') eq $Locales::DB::Language::fr::code_to_name{'fr'}, 'get_native_language_from_code() 2 w/ non-en' );

ok( $en->get_native_language_from_code() eq $Locales::DB::Language::en::code_to_name{'en'}, 'get_native_language_from_code() no-arg w/ en' );
ok( $fr->get_native_language_from_code() eq $Locales::DB::Language::fr::code_to_name{'fr'}, 'get_native_language_from_code() no-arg w/ non-en' );

for my $m (qw(get_character_orientation_from_code get_character_orientation_from_code_fast)) {
    is( $en->$m('en'), $Locales::DB::Language::en::misc_info{'orientation'}{'characters'}, "$m() 1 w/ en" );
    is( $en->$m('ar'), $Locales::DB::Language::ar::misc_info{'orientation'}{'characters'}, "$m() 2 w/ en" );
    is( $ar->$m('en'), $Locales::DB::Language::en::misc_info{'orientation'}{'characters'}, "$m() 1 w/ non-en" );
    is( $ar->$m('ar'), $Locales::DB::Language::ar::misc_info{'orientation'}{'characters'}, "$m() 2 w/ non-en" );

    is( $en->$m(), $Locales::DB::Language::en::misc_info{'orientation'}{'characters'}, "$m() no-arg w/ en" );
    is( $ar->$m(), $Locales::DB::Language::ar::misc_info{'orientation'}{'characters'}, "$m() no-arg w/ non-en" );
}

for my $m (qw(get_locale_display_pattern_from_code get_locale_display_pattern_from_code_fast)) {
    is( $en->$m('en'), $Locales::DB::Language::en::misc_info{'cldr_formats'}{'locale'}, "$m() 1 w/ en" );
    is( $en->$m('ar'), $Locales::DB::Language::ar::misc_info{'cldr_formats'}{'locale'}, "$m() 2 w/ en" );
    is( $ar->$m('en'), $Locales::DB::Language::en::misc_info{'cldr_formats'}{'locale'}, "$m() 1 w/ non-en" );
    is( $ar->$m('ar'), $Locales::DB::Language::ar::misc_info{'cldr_formats'}{'locale'}, "$m() 2 w/ non-en" );

    is( $en->$m(), $Locales::DB::Language::en::misc_info{'cldr_formats'}{'locale'}, "$m() no-arg w/ en" );
    is( $ar->$m(), $Locales::DB::Language::ar::misc_info{'cldr_formats'}{'locale'}, "$m() no-arg w/ non-en" );
}

my $xx = Locales->new('adfvddsfvsdfv');
ok( $@,   '$@ is set after invalid arg' );
ok( !$xx, 'new() returns false on invalid arg' );
ok( $no_arg->get_locale eq 'en', 'no arg default to en' );
ok( $en->get_locale     eq 'en', 'en arg is en' );
ok( $no_arg             eq $en,  '>1 en\'s singleton' );
ok( $fr->get_locale     eq 'fr', 'known arg is correct locale' );
Locales->new("Locales;print 'injection attack;'");
ok( $@ =~ m{Locales\/DB\/Language\/locales_print_injectio_nattack\.pm}, 'injection attack via eval thwarted by normalization' );

##  get_territory() && get_language ##
ok( $en->get_language() eq 'en', 'get_language tag w/ no territory' );
ok( !$en->get_territory(), 'get_territory tag w/ no territory' );
my $en_au = Locales->new('en_au');
ok( $en_au->get_language()  eq 'en', 'get_language tag w/ territory' );
ok( $en_au->get_territory() eq 'au', 'get_territory tag w/ territory' );

## get_* territory ##
is_deeply( [ sort( keys %Locales::DB::Territory::en::code_to_name ) ],   [ sort( $en->get_territory_codes() ) ], 'get_territory_codes()' );
is_deeply( [ sort( values %Locales::DB::Territory::en::code_to_name ) ], [ sort( $en->get_territory_names() ) ], 'get_territory_names()' );
ok( $en->get_territory_from_code('us')      eq $Locales::DB::Territory::en::code_to_name{'us'}, 'get_territory_from_code() w/ known arg' );
ok( $en->get_territory_from_code('  en-GB') eq $Locales::DB::Territory::en::code_to_name{'gb'}, 'get_territory_from_code() normalized' );
ok( !$en->get_territory_from_code('ucscs'), 'get_territory_from_code() w/ unknown arg' );
ok( $en->get_territory_from_code( 'ucscs', 1 ) eq 'ucscs', 'get_territory_from_code() w/ unknown arg + always_return' );
ok( $en->get_code_from_territory( $Locales::DB::Territory::en::code_to_name{'us'} ) eq 'us', 'get_territory_from_code() w/ known arg' );
ok( !$en->get_code_from_territory('asdcasdcasdcdc'), 'get_code_from_territory() w/ unknown arg' );

ok( !$en->get_territory_from_code(), 'get_territory_from_code() no arg on locale w/ out a territory' );
ok( $en_au->get_territory_from_code() eq $Locales::DB::Territory::en_au::code_to_name{ $en_au->get_territory() }, 'get_territory_from_code() no arg on locale w/ a territory' );

ok( \&Locales::code2territory eq \&Locales::get_territory_from_code, 'code2territory aliases get_territory_from_code' );
ok( \&Locales::territory2code eq \&Locales::get_code_from_territory, 'territory2code aliases get_code_from_territory' );

## get* language ##
is_deeply( [ sort( keys %Locales::DB::Language::en::code_to_name ) ],   [ sort( $en->get_language_codes() ) ], 'get_language_codes()' );
is_deeply( [ sort( values %Locales::DB::Language::en::code_to_name ) ], [ sort( $en->get_language_names() ) ], 'get_language_names()' );
ok( $en->get_language_from_code('en')      eq $Locales::DB::Language::en::code_to_name{'en'},    'get_language_from_code() w/ known arg' );
ok( $en->get_language_from_code('  en-GB') eq $Locales::DB::Language::en::code_to_name{'en_gb'}, 'get_language_from_code() normalized' );
ok( !$en->get_language_from_code('ucscs'), 'get_language_from_code() w/ unknown arg' );
ok( $en->get_territory_from_code( 'ucscs', 1 ) eq 'ucscs', 'get_language_from_code() w/ unknown arg + always_return' );
ok( $en->get_code_from_language( $Locales::DB::Language::en::code_to_name{'en'} ) eq 'en', 'get_code_from_language() w/ known arg' );
ok( !$en->get_code_from_language('asdcasdcasdcdc'), 'get_code_from_language() w/ unknown arg' );

ok( $en->get_language_from_code()    eq $Locales::DB::Language::en_au::code_to_name{ $en->get_locale() },    'get_language_from_code() no arg on locale w/ out a territory' );
ok( $en_au->get_language_from_code() eq $Locales::DB::Language::en_au::code_to_name{ $en_au->get_locale() }, 'get_territory_from_code() no arg on locale w/ a territory' );

ok( $en->get_language_from_code( 'yyyy',       1 ) eq 'yyyy',                                                   'get_language_from_code() + unknown lang only + always_return' );
ok( $en->get_language_from_code( 'yyyy_zzzzz', 1 ) eq 'yyyy_zzzzz',                                             'get_language_from_code() + unknown lang & unknown territory + always_return' );
ok( $en->get_language_from_code( 'en_zzzzz',   1 ) eq "$Locales::DB::Language::en::code_to_name{'en'} (zzzzz)", 'get_language_from_code() + known lang & unknown territory + always_return' );
ok( $en->get_language_from_code( 'yyyy_us',    1 ) eq "yyyy ($Locales::DB::Territory::en::code_to_name{'us'})", 'get_language_from_code() + unknown lang & known territory + always_return' );

ok( $en->get_native_language_from_code( 'yyyy',       1 ) eq $en->get_language_from_code( 'yyyy',       1 ), 'get_language_from_code() + unknown lang only + always_return' );
ok( $en->get_native_language_from_code( 'yyyy_zzzzz', 1 ) eq $en->get_language_from_code( 'yyyy_zzzzz', 1 ), 'get_language_from_code() + unknown lang & unknown territory + always_return' );
ok( $en->get_native_language_from_code( 'en_zzzzz',   1 ) eq $en->get_language_from_code( 'en_zzzzz',   1 ), 'get_language_from_code() + known lang & unknown territory + always_return' );
ok( $en->get_native_language_from_code( 'yyyy_us',    1 ) eq $en->get_language_from_code( 'yyyy_us',    1 ), 'get_language_from_code() + unknown lang & known territory + always_return' );

ok( $fr->get_native_language_from_code( 'yyyy',       1 ) eq $fr->get_language_from_code( 'yyyy',       1 ), 'get_language_from_code() + unknown lang only + always_return' );
ok( $fr->get_native_language_from_code( 'yyyy_zzzzz', 1 ) eq $fr->get_language_from_code( 'yyyy_zzzzz', 1 ), 'get_language_from_code() + unknown lang & unknown territory + always_return' );
ok( $fr->get_native_language_from_code( 'fr_zzzzz',   1 ) eq $fr->get_language_from_code( 'fr_zzzzz',   1 ), 'get_language_from_code() + known lang & unknown territory + always_return' );
ok( $fr->get_native_language_from_code( 'yyyy_us',    1 ) eq $fr->get_language_from_code( 'yyyy_us',    1 ), 'get_language_from_code() + unknown lang & known territory + always_return' );

ok( \&Locales::code2language eq \&Locales::get_language_from_code, 'code2language aliases get_language_from_code' );
ok( \&Locales::language2code eq \&Locales::get_code_from_language, 'language2code aliases get_code_from_language' );

# misc_info
my $ja = Locales->new('ja');    # ja ='{0}({1})' not '{0} ({1})'
ok( $ja->get_language_from_code( 'en_zzzzz', 1 ) eq "$Locales::DB::Language::ja::code_to_name{'en'}(zzzzz)", 'get_language_from_code() unknown part pattern' );

ok( $en->numf() eq '1', 'numf() RC == numf_comma(0)' );
ok( $it->numf() eq '2', 'numf() RC == numf_comma(1)' );

ok( ref( $ar->numf() ) eq 'ARRAY', 'numf() RC == ARRAY format' );

# is($ar->numf(1), '2', 'soft value - format diff but data matches');

# relies on 'fr' remaining broken (i.e. missing '_decimal_format_group')
ok( ref( $fr->numf() ) eq 'ARRAY', 'numf() RC == ARRAY missing data' );

# is($fr->numf(1), '2', 'soft value - only one pattern string');
