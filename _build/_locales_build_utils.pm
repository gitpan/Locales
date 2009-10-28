package _locales_build_utils;

use Cwd;
use XML::Simple;
use File::Path::Tiny;
use lib Cwd::realpath('lib');
use Locales;
use File::Slurp;

my $mod_version  = $Locales::VERSION - 0.05;
my $cldr_version = $Locales::cldr_version;
my $cldr_db_path;
my $locales_db;
my $manifest;

use Data::Dumper;
$Data::Dumper::Terse    = 1;
$Data::Dumper::Sortkeys = 1;
$Data::Dumper::Useqq = 1;
{ 
    no warnings 'redefine';
    sub Data::Dumper::qquote {
        my $s = shift;
        my $q = quotemeta($s);
        return $s ne $q ? qq{"$q"} : qq{'$s'};
    }
}

sub init_paths_from_argv {
    die "no CLDR path given" if !-d "$ARGV[0]/common/main";
    $cldr_db_path = Cwd::realpath($ARGV[0]) || die "need path to CLDR";
    $locales_db   = Cwd::realpath($SARGV[1] || 'lib/Locales/DB');
    $manifest     = Cwd::realpath($SARGV[2] || 'MANIFEST.build');
    return ($cldr_db_path, $locales_db, $manifest);
}

sub get_xml_file_for {
    my ($tag,$quiet) = @_;
    my $xml_file = "$cldr_db_path/common/main/$tag.xml";
    if (!-e $xml_file) {
        warn "\t1) No $xml_file ...\n" if !$quiet;
        my $tag_copy = $tag;
        $tag_copy =~ s{_(\w+)$}{_\U$1\E};
        $xml_file = "$cldr_db_path/common/main/$tag_copy.xml";
        if (!-e $xml_file) {
            warn "\t2) No $xml_file ...\n" if !$quiet;
            $tag_copy =~ tr/a-z/A-Z/;
            $xml_file = "$cldr_db_path/common/main/$tag_copy.xml";
            if (!-e $xml_file) {
                warn "\t3) No $xml_file ...\n" if !$quiet;
                return;
            }
        }
    }
    return $xml_file;
    
}

sub get_target_structs_from_cldr_for_tag  {
    my ($tag, $fallback_lang_code_to_name, $fallback_terr_code_to_name, $fallback_lang_misc_info) = @_;
    
    my $xml_file = get_xml_file_for($tag);
    return if !-e $xml_file;
    my $raw_struct = XMLin($xml_file, 'KeyAttr' => 'type');

    my ($lang_code_to_name, $lang_name_to_code, $lang_misc_info, $terr_code_to_name, $terr_name_to_code) = ({},{},{},{},{});

    #### Territories ####
    for my $trr ( keys %{ $raw_struct->{'localeDisplayNames'}{'territories'}{'territory'} }) {
        next if $trr =~ m/^\d+$/;
        
        my $short = $trr;
        $short =~ tr/A-Z/a-z/;

        $terr_code_to_name->{$short} = $raw_struct->{'localeDisplayNames'}{'territories'}{'territory'}{$trr}{'content'};
        $terr_name_to_code->{Locales::normalize_for_key_lookup($raw_struct->{'localeDisplayNames'}{'territories'}{'territory'}{$trr}{'content'})} = $short;
    }
    
    if ($fallback_terr_code_to_name) {
        for my $fb_trr (keys %{$fallback_terr_code_to_name}) {
            if (!exists $terr_code_to_name->{$fb_trr}) {
                $terr_code_to_name->{$fb_trr} = $fallback_terr_code_to_name->{$fb_trr};
                $terr_name_to_code->{Locales::normalize_for_key_lookup($fallback_terr_code_to_name->{$fb_trr})} = $fb_trr;
            }
        }
    }
    #### /Territories ####
    
    #### Languages ####
    my $fallback = undef; # or [] ?
    if (exists $raw_struct->{'fallback'}) {
        $fallback = [];
        if (my $type = ref($raw_struct->{'fallback'})) {
            if ($type eq 'ARRAY') {
                for my $fb (@{$raw_struct->{'fallback'}}) {
                    my $thing = ref($fb) ? $fb->{'content'} : $fb;
                    next if !defined $thing;
                    push @{$fallback}, $thing;
                }
            }
            elsif ($type eq 'HASH') {
                if ($raw_struct->{'fallback'}{'content'}) {
                    push @{$fallback}, $raw_struct->{'fallback'}{'content'};
                }
            }
        }
        else {
            if ($raw_struct->{'fallback'}) {
                push @{$fallback}, $raw_struct->{'fallback'};
            }
        }
    }
    elsif (exists $fallback_lang_misc_info->{'fallback'}) {
        $fallback = [];
        if (my $type = ref($fallback_lang_misc_info->{'fallback'})) {
            if ($type eq 'ARRAY') {
                for my $fb (@{$fallback_lang_misc_info->{'fallback'}}) {
                    my $thing = ref($fb) ? $fb->{'content'} : $fb;
                    next if !defined $thing;
                    push @{$fallback}, $thing;
                }
            }
            elsif ($type eq 'HASH') {
                if ($fallback_lang_misc_info->{'fallback'}{'content'}) {
                    push @{$fallback}, $fallback_lang_misc_info->{'fallback'}{'content'};
                }
            }
        }
        else {
            if ($fallback_lang_misc_info->{'fallback'}) {
                push @{$fallback}, $fallback_lang_misc_info->{'fallback'};
            }
        }
    }
    
    $lang_misc_info = {
        'fallback' => $fallback,
        'cldr_formats' => {
            'decimal' => $raw_struct->{'numbers'}{'decimalFormats'}{'decimalFormatLength'}{'decimalFormat'}{'pattern'} || $fallback_lang_misc_info->{'cldr_formats'}{'decimal'},
            'percent' => $raw_struct->{'numbers'}{'percentFormats'}{'percentFormatLength'}{'percentFormat'}{'pattern'} || $fallback_lang_misc_info->{'cldr_formats'}{'percent'},
            'territory' => $raw_struct->{'localeDisplayNames'}{'codePatterns'}{'codePattern'}{'territory'}{'content'} || $fallback_lang_misc_info->{'cldr_formats'}{'territory'},
            'language' => $raw_struct->{'localeDisplayNames'}{'codePatterns'}{'codePattern'}{'language'}{'content'} || $fallback_lang_misc_info->{'cldr_formats'}{'language'},
            'locale' => $raw_struct->{'localeDisplayNames'}{'localeDisplayPattern'}{'localePattern'} || $fallback_lang_misc_info->{'cldr_formats'}{'locale'}, # wx_yz has no name but wx does and xy may
            # {'localeDisplayNames'}{'localeDisplayPattern'}{'localePattern'}{'localeSeparator'} => ', ' (not needed since we only use territory subtag)
        },
        'orientation' => {
            'characters' => $raw_struct->{'layout'}{'orientation'}{'characters'} || $fallback_lang_misc_info->{'orientation'}{'characters'} || 'left-to-right',
            'lines' => $raw_struct->{'layout'}{'orientation'}{'lines'} || $fallback_lang_misc_info->{'orientation'}{'lines'}  || 'top-to-bottom',
        },
        'posix' => {
            'yesstr' => $raw_struct->{'posix'}{'messages'}{'yesstr'} || $fallback_lang_misc_info->{'posix'}{'yesstr'},  
            'nostr' => $raw_struct->{'posix'}{'messages'}{'nostr'} || $fallback_lang_misc_info->{'posix'}{'nostr'}, 
            # TODO: yesexp/noexp
        },
    };
    
    for my $lng (sort keys %{ $raw_struct->{'localeDisplayNames'}{'languages'}{'language'} }) {
        next if $lng eq 'root';
        
        # if ($tag eq 'en') {
        #     next if !get_xml_file_for($lng,1);
        # }
        
        my $short = $lng;
        $short =~ tr/A-Z/a-z/;
        
        my ($l,$t,@x) = split(/_/,$short);
        next if @x;
        next if $t && !exists $terr_code_to_name->{$t};
        
        $lang_code_to_name->{$short} = $raw_struct->{'localeDisplayNames'}{'languages'}{'language'}{$lng}{'content'};
        $lang_name_to_code->{Locales::normalize_for_key_lookup($raw_struct->{'localeDisplayNames'}{'languages'}{'language'}{$lng}{'content'})} = $short;
    }
    
    if ($fallback_lang_code_to_name) {
        for my $fb_lng (keys %{$fallback_lang_code_to_name}) {
            if (!exists $lang_code_to_name->{$fb_lng}) {
                $lang_code_to_name->{$fb_lng} = $fallback_lang_code_to_name->{$fb_lng};
                $lang_name_to_code->{Locales::normalize_for_key_lookup($fallback_lang_code_to_name->{$fb_lng})} = $fb_lng;
            }
        }
    }
    #### /Languages ####
    
    # TOOD: ? merge in ant $raw_struct->{'fallback'} (sans language part of $tag or 'en' since those happen alreay) locale's ?
        
    return ($lang_code_to_name, $lang_name_to_code, $lang_misc_info, $terr_code_to_name, $terr_name_to_code);
}

sub write_language_module {
    my ($tag, $code_to_name, $name_to_code, $misc_info) = @_;

    my $code_to_name_str = _stringify_hash($code_to_name);
    my $name_to_code_str = _stringify_hash($name_to_code);
    my $misc_info_str    = _stringify_hash($misc_info);
    
    _write_utf8_perl("Language/$tag.pm", qq{package Locales::DB::Language::$tag;

# Auto generated from CLDR

\$Locales::DB::Language::$tag\::VERSION = '$mod_version';

\$Locales::DB::Language::$tag\::cldr_version = '$cldr_version';

\%Locales::DB::Language::$tag\::misc_info = (
$misc_info_str,
);

\%Locales::DB::Language::$tag\::code_to_name = ( 
$code_to_name_str,
);

\%Locales::DB::Language::$tag\::name_to_code = (
$name_to_code_str,
);

1;    
}, 
    );  
}


sub write_territory_module {
    my ($tag, $code_to_name, $name_to_code) = @_;
    
    my $code_to_name_str = _stringify_hash($code_to_name);
    my $name_to_code_str = _stringify_hash($name_to_code);
    
    my $mod_version = $Locales::VERSION - 0.05;
    _write_utf8_perl("Territory/$tag.pm", qq{package Locales::DB::Territory::$tag;

# Auto generated from CLDR

\$Locales::DB::Territory::$tag\::VERSION = '$mod_version';

\$Locales::DB::Territory::$tag\::cldr_version = '$cldr_version';

\%Locales::DB::Territory::$tag\::code_to_name = (
$code_to_name_str,
);

\%Locales::DB::Territory::$tag\::name_to_code = (
$name_to_code_str,
);

1;

},
    );
  
}

sub write_locale_test {
    my ($tag) = @_;
     _write_utf8_perl("../../../t/042.$tag.t",  qq{
# Auto generated during CLDR build

use Test::More tests => 6;

use lib 'lib', '../lib';

BEGIN {
use_ok( 'Locales::DB::Language::$tag' );
use_ok( 'Locales::DB::Territory::$tag' );
}

diag( "Sanity checking Locales::DB::Language::$tag \$Locales::DB::Language::$tag\::VERSION DB" );

use Locales;
use Locales::DB::Language::en;
use Locales::DB::Territory::en;

my \@en_lang_codes = sort(keys \%Locales::DB::Language::en::code_to_name);
my \@en_terr_codes = sort(keys \%Locales::DB::Territory::en::code_to_name);

my \@my_lang_codes = sort(keys \%Locales::DB::Language::$tag\::code_to_name);
my \@my_terr_codes = sort(keys \%Locales::DB::Territory::$tag\::code_to_name);
my \%lang_lu;
my \%terr_lu;
\@lang_lu{ \@my_lang_codes } = ();
\@terr_lu{ \@my_terr_codes } = ();
ok(\$Locales::DB::Language::$tag\::cldr_version eq \$Locales::cldr_version, 'CLDR version is correct');
ok(\$Locales::DB::Language::$tag\::VERSION eq (\$Locales::VERSION - 0.05), 'VERSION is correct');

ok(!(grep {!exists \$lang_lu{\$_} } \@en_lang_codes), '$tag languages contains en');
ok(!(grep {!exists \$terr_lu{\$_} } \@en_terr_codes), '$tag territories contains en');
        },
        "t/042.$tag.t", 
    );
}

sub build_manifest {
    my $base = $manifest;
    $base =~ s{\.build$}{};
    my @in = read_file("$base.in");
    my @bl = read_file("$base.build");
    write_file($base, @in, @bl);
}

sub do_changelog {
    my $changelog = $manifest;
    $changelog =~ s{MANIFEST\.build$}{Changes};
    my @cl = read_file($changelog);
    return if grep /^$Locales::VERSION\s+/, @cl;
    
    my $time = localtime();
    my $new_ent = <<"END_CL";
$Locales::VERSION  $time
     - Updated data to CLDR $Locales::cldr_version

END_CL
    write_file($changelog, $new_ent, @cl);
}

sub _write_utf8_perl {
    my ($file, $guts, $mani) = @_;
    
    open( my $fh, '>:utf8', $file ) or die "Could not open '$file': $!";
    print {$fh} $guts;
    close $fh;
    
    system (qw(perltidy -b), $file) == 0 || die "perltidy failed, '$file' probably has syntax errors";
    
    unlink "$file.bak";
    
    append_file($manifest, $mani ? "$mani\n" : "lib/Locales/DB/$file\n");
}

sub _stringify_hash {
    my $string = Dumper($_[0]);
    $string =~ s/^\s*\{\s*//;
    $string =~ s/\s*\}\s*$//;
    return $string;
}

1;
