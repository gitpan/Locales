package Locales;

$Locales::VERSION      = '0.12';  # change in POD
$Locales::cldr_version = '1.7.1'; # change in POD

#### class methods ####

my %singleton_stash;
sub new {
    my ($class, $tag) = @_;
    $tag = normalize_tag($tag) || 'en';

    if (!exists $singleton_stash{$tag}) {
        my $locale = {
            'locale' => $tag,
        };

        eval "require $class\::DB::Language::$tag" || return;
        eval "require $class\::DB::Territory::$tag" || return;
        my ($language, $territory) = split_tag($tag);
        
        no strict 'refs';
         
        $locale->{'language'} = $language;
        $locale->{'language_data'} = {
            'VERSION'      => \${"$class\::DB::Language::$tag\::VERSION"},
            'cldr_version' => \${"$class\::DB::Language::$tag\::cldr_version"},
            'misc_info'    => \%{"$class\::DB::Language::$tag\::misc_info"},
            'code_to_name' => \%{"$class\::DB::Language::$tag\::code_to_name"},
            'name_to_code' => \%{"$class\::DB::Language::$tag\::name_to_code"},
        };
    
        $locale->{'territory'} = $territory;
        $locale->{'territory_data'} = {
            'VERSION'      => \${"$class\::DB::Territory::$tag\::VERSION"},
            'cldr_version' => \${"$class\::DB::Territory::$tag\::cldr_version"},
            'code_to_name' => \%{"$class\::DB::Territory::$tag\::code_to_name"},
            'name_to_code' => \%{"$class\::DB::Territory::$tag\::name_to_code"},
        };
    
        $singleton_stash{$tag} = bless $locale, $class;
    }
    
    return $singleton_stash{$tag};
}

#### object methods ####

sub get_locale { shift->{'locale'} }

sub get_territory { shift->{'territory'} }

sub get_language { shift->{'language'} }

sub get_native_language_from_code {
    my ($self, $code, $always_return) = @_;
    
    my $class = ref($self) ? ref($self) : $self;
    if (!exists $locale->{'native_data'}) {
        eval "require $class\::DB::Native;" || return;
        no strict 'refs';
        $self->{'native_data'} = {
            'VERSION'      => \${"$class\::DB::Native::VERSION"},
            'cldr_version' => \${"$class\::DB::Native::cldr_version"},
            'code_to_name' => \%{"$class\::DB::Native::code_to_name"},
        };
    }

    $always_return ||= 0;
    $code ||= $self->{'locale'};
    $code = normalize_tag($code);
    return if !defined $code;
    
    if (exists $self->{'native_data'}{'code_to_name'}{$code}) {
        return $self->{'native_data'}{'code_to_name'}{$code};
    }
    elsif($always_return) {
        my ($l,$t) = split_tag($code);
        my $ln = $self->{'native_data'}{'code_to_name'}{$l};
        my $tn = defined $t ? $self->{'territory_data'}{'code_to_name'}{$t} : '';

        return $code if !$ln && !$tn;
        
        if (defined $t) {
            my $tmp = Locales->new($l); # if we even get to this point: this is a singleton so it is cheap
            if ($tmp) {
                if ($tmp->get_territory_from_code($t)) {
                    $tn = $tmp->get_territory_from_code($t);
                }
            }
        }
        
        $ln ||= $l;
        $tn ||= $t;
        
        my $string = $self->{'language_data'}{'misc_info'}{'cldr_formats'}{'locale'} || '{0} ({1})';
        $string =~ s/\{0\}/$ln/g;
        $string =~ s/\{1\}/$tn/g;
        
        return $string;
    }
    return;
}

sub get_character_orientation_from_code {
    my ($self, $code, $always_return) = @_;
    
    my $class = ref($self) ? ref($self) : $self;
    if (!exists $locale->{'character_orientation_data'}) {
        eval "require $class\::DB::CharacterOrientation;" || return;
        no strict 'refs';
        $self->{'character_orientation_data'} = {
            'VERSION'      => \${"$class\::DB::CharacterOrientation::VERSION"},
            'cldr_version' => \${"$class\::DB::CharacterOrientation::cldr_version"},
            'code_to_name' => \%{"$class\::DB::CharacterOrientation::code_to_name"},
        };
    }

    $always_return ||= 0;
    $code ||= $self->{'locale'};
    $code = normalize_tag($code);
    return if !defined $code;
    
    if (exists $self->{'character_orientation_data'}{'code_to_name'}{$code}) {
        return $self->{'character_orientation_data'}{'code_to_name'}{$code};
    }
    elsif($always_return) {
        my ($l,$t) = split_tag($code);
        if ( exists $self->{'character_orientation_data'}{'code_to_name'}{$l} ) {
            return  $self->{'character_orientation_data'}{'code_to_name'}{$l};
        }
        return 'left-to-right';
    }
    return;
}

#### territory ####

sub get_territory_codes {
    return keys %{ shift->{'territory_data'}{'code_to_name'} };
}

sub get_territory_names {
    return values %{ shift->{'territory_data'}{'code_to_name'} };
}

sub get_territory_from_code {
    my ($self, $code, $always_return) = @_;
    $code ||= $self->{'territory'};
    $code = normalize_tag($code);
    return if !defined $code;
    
    if (exists $self->{'territory_data'}{'code_to_name'}{$code}) {
        return $self->{'territory_data'}{'code_to_name'}{$code};
    }
    elsif(!defined $self->{'territory'} || $code ne $self->{'territory'}) {
        my ($l,$t) = split_tag($code);
        if ($t && exists $self->{'territory_data'}{'code_to_name'}{$t}) {
            return $self->{'territory_data'}{'code_to_name'}{$t};
        }
    }
    return $code if $always_return;
    return;    
}

sub get_code_from_territory {
    my ($self, $name) = @_;
    return if !$name;
    my $key = normalize_for_key_lookup($name);
    if (exists $self->{'territory_data'}{'name_to_code'}{$key}) {
        return $self->{'territory_data'}{'name_to_code'}{$key};
    }
    return;    
}

*code2territory = *get_territory_from_code;
*territory2code = *get_code_from_territory;

#### language ####

sub get_language_codes {
    return keys %{ shift->{'language_data'}{'code_to_name'} };
}

sub get_language_names {
    return values %{ shift->{'language_data'}{'code_to_name'} };
}

sub get_language_from_code {
    my ($self, $code, $always_return) = @_;
    $always_return ||= 0;
    $code ||= $self->{'locale'};
    $code = normalize_tag($code);
    return if !defined $code;
    
    if (exists $self->{'language_data'}{'code_to_name'}{$code}) {
        return $self->{'language_data'}{'code_to_name'}{$code};
    }
    elsif($always_return) {
        my ($l,$t) = split_tag($code);
        my $ln = $self->{'language_data'}{'code_to_name'}{$l};
        my $tn = defined $t ? $self->{'territory_data'}{'code_to_name'}{$t} : '';
        
        return $code if !$ln && !$tn;
        $ln ||= $l;
        $tn ||= $t;
        
        my $string = $self->{'language_data'}{'misc_info'}{'cldr_formats'}{'locale'} || '{0} ({1})';
        $string =~ s/\{0\}/$ln/g;
        $string =~ s/\{1\}/$tn/g;
        
        return $string;
    }
    return;
}

sub get_code_from_language {
    my ($self, $name) = @_;
    return if !$name;
    my $key = normalize_for_key_lookup($name);
    if (exists $self->{'language_data'}{'name_to_code'}{$key}) {
        return $self->{'language_data'}{'name_to_code'}{$key};
    }
    return;
}

*code2language = *get_language_from_code;
*language2code = *get_code_from_language;

#### utility functions ####

sub split_tag {
    return split(/_/, normalize_tag($_[0]), 2); # we only do language[_territory]
}

sub get_i_tag_for_string {
    return 'i_' . normalize_tag($_[0]);
}
sub normalize_tag {
    my $tag = $_[0];
    return if !defined $tag;
    $tag =~ tr/A-Z/a-z/;
    $tag =~ s{\s+}{}g;
    $tag =~ s{[^a-z0-9]+}{_}g;
    return $tag;
}

sub normalize_for_key_lookup {
    my $key = $_[0];
    return if !defined $key;
    $key =~ tr/A-Z/a-z/; # lowercase
    # $key =~ s{^\s+}{};   # trim WS from begining
    # $key =~ s{\s+$}{};   # trim WS from end
    # $key =~ s{\s+}{ }g;   # collapse multi WS to one space
    $key =~ s{\s+}{}g; 
    $key =~ s{[\'\"\-\(\)\[\]\_]+}{}g; 
    return $key;
}

1;

__END__

=head1 NAME

Locales - Methods for getting localized CLDR language/territory names (and a subset of other data)

=head1 VERSION

This document describes Locales version 0.12

=head1 SYNOPSIS

    use Locales;

    my $locale = Locales->new('en_gb');
    
    print $locale->get_locale(); # 'en_gb'
    print $locale->get_language(); # 'en'
    print $locale->get_territory(); # 'gb'
    
    print $locale->get_language_from_code('fr'); # 'French'
    print $locale->get_code_from_language('French'); # 'fr'
    
    print $locale->get_territory_from_code('us'); # 'United States'
    print $locale->get_code_from_territory('Australia'); # 'au'

=head1 DESCRIPTION

Locales lets you create an object for a certain locale that lets you access certain data harvested directly from CLDR.

L<http://cldr.unicode.org/index/downloads>

Currently the data/methods include translated locale names and territory names.

For simplicity Locales does not work with or know about Variants or Scripts. It only knows about languages and territories.

Also it does not conatin all the data contained in CLDR. For example, L<DateTime>'s localization already has all the calender/date/time info from CLDR. Other information has not had any demand yet.

For consistency all data is written in utf-8. No conversion should be necessary if you are (wisely) using utf-8 as your character set everywhere (See L<http://drmuey.com\/?do=page&id=57> for more info on that.).

Note: You probably [don't need to/should not] use L<utf8> in regards to the data contained herein.

=head1 Based on CLDR 1.7.1

You can learn about the Unicode Common Locale Data Repository at L<http://cldr.unicode.org/>

=head1 INTERFACE 

=head2 new()

Takes one argument, the locale tag whose CLDR data you want to use.

No argument defaults to 'en'.

It is an argument based singleton so you can call it more than once with out it having to rebuild the object everytime.

It returns false if a locale given is not vailable. $@ should have been set at that point by eval.

    my $en = Locales->new('en') or die $@;

=head2 Object methods

=head3 Misc methods

=over 4

=item get_locale()

Takes no arguments.

Returns the normalized locale of the object, this is the same as the argument to new()

=item get_language()

Takes no arguments.

Returns the language portion of the object's locale.

=item get_territory()

Takes no arguments.

Returns the territory portion of the object's locale if any (e.g. 'en_au'), undef if there is none (e.g. 'it').

=back

=head3 Territory methods

=over 4

=item get_territory_codes()

Take no arguments. 

Returns an unsorted list of known territory codes.

=item get_territory_names()

Take no arguments. 

Returns an unsorted list of the display names for each known territory code.

=item get_territory_from_code()

Takes one argument, the locale code whose territory name you want to find. Defaults to the territory of the of object's locale, if any.

Returns the name of the given tag's territory or, if not found, the territory portion (if any), returns false otherwise.

An optional second argument, when true, will force it to return the normalized tag if nothing else can be figured out.

=item get_code_from_territory()

Takes one argument, the territory name whose locale you want to find.

Returns the locale tag if found, false otherwise.

=item code2territory()

Alias for get_territory_from_code()

=item territory2code()

Alias for get_code_from_territory()

=back

=head3 Language Methods

=over 4

=item get_language_codes()

Take no arguments. 

Returns an unsorted list of known language codes.

=item get_language_names()

Take no arguments. 

Returns an unsorted list of the display names for each known language code.

=item get_language_from_code()

Takes one argument, the locale code whose language name you want to find. Defaults to the object's locale.

Returns the name of the given tag's language, returns false otherwise.

An optional second argument, when true, will force it to return a properly formatted CLDR format display based on if we know the langauge and/or territory if nothing else can be figured out.

=item get_code_from_language()

Takes one argument, the language name whose locale you want to find.

Returns the locale tag if found, false otherwise.

=item get_native_language_from_code()

Like get_language_from_code() except it returns the name in the given locale's native language.

=item get_character_orientation_from_code()

Like get_language_from_code() except it returns the character orientation identifier for the given locale.

Typically it will be the string 'left-to-right' or 'right-to-left'.

See L<http://unicode.org/repos/cldr-tmp/trunk/diff/by_type/misc.layout.html> for more information.

=item code2language()

Alias for get_language_from_code()

=item language2code()

Alias for get_code_from_language()

=back

=head2 Utility functions

These are some functions used internally that you might find useful.

=over 4

=item Locales::normalize_tag()

Takes a single argument, the locale tag to normalize.

Returns the normalized tag.

   print Locales::normalize_tag("  en-GB\n "); # 'en_gb'    

=item Locales::split_tag()

Takes a single argument, the locale tag to split into language and territory parts.

Returns the resulting array of 1 or 2 normalized (but not validated) items.

   my ($language, $territory) = Locales::split_tag("  en-GB\n "); # ('en','gb')
   
   my ($language, $territory) = Locales::split_tag('fr'); # ('fr');
   
   my ($language, $territory) = Locales::split_tag('sr_Cyrl_YU'); # ('sr','cyrl_yu'), yes 'cyrl_yu' is invalid here since Locales doesn't work with the Script variants, good catch

=item Locales::get_i_tag_for_string()

Takes a single argument, the locale tag string to tranform into "i" notation.

Returns the resulting normailzed locale tag.

The standard tag for strings/tags without a standard is an "i" notation tag.

For example, the language "Yoda Speak" does not have an ISO code. You'd have to use i_yoda_speak.

    # assuming $string = "Yoda Speak"; you;d get into the if(), assuming it was 'Spanish' or 'es'
    if (!$en->get_language_from_code($string) && !$en->get_code_from_language($string) ) {
        # it is not a code or a language (at least in the language of $en) so lets create a tag for it:
        _create_locale_files( Locales::get_i_tag_for_string($string) ); # i_yoda_speak
    }
    else {
        # if it is a language name then we fetch the code otherwise, at this point, we know it is a code, so return a normailized version
        _create_locale_files( $en->get_code_from_language($yoda) || Locales::normalize_tag($yoda) );
    }

=item Locales::normalize_for_key_lookup()

Takes a single argument, the phrase string normalize in the same way the names are stored in each locale's lookup hash.

Returns the resulting normailzed string.

This is used internally to normalize a given name in the same manner the name-to-code hash keys are normalized.

If said normalization is ever improved then using this function will ensure everything is normalized consistently.

That allows $en->get_code_from_language($name) to map to 'afa' if given these various variations of $arg:

  "Afro-Asiatic Language"
  "afroasiatic\tLanguage"
  "AFRO-Asiatic Language"
  "  Afro_Asiatic    Language"
  "afro.Asiatic Language\n"

=back

=head1 DIAGNOSTICS

Throws no warning or errors of it's own. If any function or method returns false then the arguments given (or not given) were invalid/not found.

=head1 CONFIGURATION AND ENVIRONMENT

Locales requires no configuration files or environment variables.

=head1 DEPENDENCIES

None.

=head1 INCOMPATIBILITIES

None reported.

=head1 TODO

  - CLDR builder TODOs
  - more CLDR version/misc-info fetchers
  - generally improve get_code_from_* lookups

=head1 DEPRECATED MODULES/INTERFACE

The original, non CLDR based,  '::Base' based modules/interface in this distribution were deprecated in version 0.06.

These modules will be removed on or shortly after January 1st, 2010.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests regarding the Locales modules to
C<bug-locales@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.

Please report any bugs or feature requests regarding CLDR data as per 
L<http://cldr.unicode.org/index/bug-reports>.

=head2 BEFORE YOU SUBMIT A BUG REPORT

Please read TODO, DESCRIPTION, and the information below thouroughly to see if your thought is already addressed.

=over 4

=item * A non-English object returns English names.

Data that is not defined in a locale's CLDR data falls back to English.

Please report the missing data to the CLDR as per L<http://cldr.unicode.org/index/bug-reports>.

=item * I am using a locale code that I know exists in the CLDR but I can't use it anywhere in Locales

Only locales and territory codes that 'en' knows about are used. Only locales that have their own data set in CLDR are able to be objectified.

Additions or updates can be request as per L<http://cldr.unicode.org/index/bug-reports>.

=item * A name is misformatted, incorrect, etc.


The data is automatically harvested from CLDR. So if there is really a problem you'll have to report the problem to them. (as per L<http://cldr.unicode.org/index/bug-reports>)

Here are some things to check before submitting a report:

=over 4

=item * Corrupt text

=over 4

=item * Is your charset correct?

For example, viewing UTF-8 characters on a latin1 web page will result in garbled characters.

=item * It still looks corrupt!

Some locale's require special fonts to be installed on your system to view them properly.

For example Bengali (bn) is like this. As per L<http://www.unicode.org/help/display_problems.html> if you install the proper font it renders correctly.

=back

=item * Incorrect data or formatting

=over 4

=item * Is it really inaccurate?

It could simply be an incomplete understanding of the context of the data, for example:

In English we capitalize proper names (e.g. French).

In other languages it may be perfectly acceptable for a language or territory name to not start with upper case letters.

In that case a report about names not being capitalized like we do in English would be unwarranted.

=item * Is it really mis-formatted?

Sometimes soemthing might look strange to us and we'd be tempted to report the problem. Keep in mind though that sometimes locale nuances can cause things to render in a way that non-native speakers may not understand. 

For example Arabic's (ar) right-to-left text direction can seem strange when mixed with latin text. It's simply not wrong. You may be able to improve it by using the direction data to render it better (e.g. CSS or HTML attributes if the output is HTML).

Also, CLDR pattern formats can differ per locale.

In cases like this a report would be unwarranted.

=back

=back

=back

=head1 AUTHOR

Daniel Muey  C<< <http://drmuey.com/cpan_contact.pl> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2009, Daniel Muey C<< <http://drmuey.com/cpan_contact.pl> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
