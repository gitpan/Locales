package Locales::DB::LocaleDisplayPattern::Tiny;

# Auto generated from CLDR

$Locales::DB::LocaleDisplayPattern::Tiny::VERSION = '0.07';

$Locales::DB::LocaleDisplayPattern::Tiny::cldr_version = '2.0';

my %locale_display_lookup = (
    'ksh' => '{0} en {1}',
    'ja'  => '{0}({1})',
    'zh'  => '{0}（{1}）',
    'ko'  => '{0}({1})',
);

sub get_locale_display_pattern {
    if ( exists $locale_display_lookup{ $_[0] } ) {
        return $locale_display_lookup{ $_[0] };
    }
    else {
        return "\{0\}\ \(\{1\}\)";
    }
}

1;
