package Locales::DB::CharacterOrientation::Tiny;

# Auto generated from CLDR

$Locales::DB::CharacterOrientation::Tiny::VERSION = '0.07';

$Locales::DB::CharacterOrientation::Tiny::cldr_version = '2.0';

my %rtl = (
    'ur' => '',
    'ku' => '',
    'he' => '',
    'fa' => '',
    'ps' => '',
    'ar' => '',
);

sub get_orientation {
    if ( exists $rtl{ $_[0] } ) {
        return 'right-to-left';
    }
    else {
        return 'left-to-right';
    }
}

1;
