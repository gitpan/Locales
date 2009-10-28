package Locales::Language;

BEGIN
{
	use strict;
	use base qw( Exporter Locales::Base    );
	use vars qw( @EXPORT %Locales $VERSION );

	$VERSION = "0.03";

	@EXPORT = qw(
		code2language
		language2code
		all_language_codes
		all_language_names
	);

	%Locales = (
		_locale => $Locales::Base::FALLBACK_LOCALE,
		_import_locale => undef
	);

}


sub import
{
my ($self, $locale) = @_;

	__PACKAGE__->setLocale ( $locale );

	__PACKAGE__->export_to_level ( 1 );	

	$Locales{_import_locale} = $locale if ( $locale );
}


sub getLocale
{
	Locales::Base::getLocale ( @_ );
}


sub setLocale
{
	( @_ && $_[0] =~ /^Locales::/ )
	  ? Locales::Base::setLocale ( @_ )       # Locales::Language::setLocale
	  : Locales::Base::setLocale ( "foo", @_ )# Locales::Language->setLocale
	;
}


sub AUTOLOAD
{
my ($self, $arg) = Locales::Base::_getSelf ( @_ );


	my ($method) = ( $AUTOLOAD =~ /::([^:]+)$/ );
	return unless ( $method );

	$self->$method ( $arg );
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################


__END__

=head1 THIS MODULE IS DEPRECATED

This POD documents the deprecated legacy system (pre v0.06)

New code should use the more modern, efficient, and CLDR based L<Locales> object system.

=head1 NAME

Locales::Language - ISO two letter codes for language identification (ISO 639)

=head1 SYNOPSIS

=head2 Classic Style:

    use Locale::Language;  # use environment language
    
    my $lang  = code2language ( 'en' );      # $lang gets 'English'
    my $code  = language2code ( 'French' );  # $code gets 'fr'
    
    my @codes = all_language_codes();
    my @names = all_language_names();


=head2 Classic Style With New Default Language:

    use utf8;
    use Locale::Language ( 'de' );  # use German language
    
    my $lang  = code2language ( 'en' );           # $lang gets 'Englisch'
    my $code  = language2code ( 'Französisch' );  # $code gets 'fr'
    
    my @codes = all_language_codes();
    my @names = all_language_names();  # gets list of names in German

    # set default Language to French
    Locales::Language::setLocale ( 'fr' );
    
    $lang  = code2language ( 'en' );              # $lang gets 'Anglais'
    $code  = language2code ( 'Français' );        # $code gets 'fr'


=head2 Object Oriented Style:

    use utf8;
    require Locales::Language;

    my $am = new Locales::Language ( "am" );
    my $de = new Locales::Language ( "de" );

    print $am->getLocale, " => ",
          $am->code2language ( "en" ), " / ",
          $am->language2code ( "እንግሊዝኛ" ), "\n";
    print $de->getLocale, " => ",
          $de->code2language ( "en" ), " / ",
          $de->language2code ( "Englisch" ), "\n";

    my @codes   = $am->all_language_codes();
    my @deNames = $de->all_language_names();


=head2 Object Oriented Style With New Default Language:

    use utf8;
    use Locale::Language ( 'de' );  # use German language

    my $de = new Locales::Language;

    print $de->getLocale, " => ",
          $de->code2language ( "en" ), " / ",
          $de->language2code ( "Englisch" ), "\n";

      :

=head1 DESCRIPTION

The C<Locale::Language> module provides access to the ISO two-letter
codes for identifying languages, as defined in ISO 639. You can either
access the codes via the L<conversion routines> (described below),
or via the two functions which return lists of all language codes or
all language names.


=head1 CONVERSION ROUTINES

There are two conversion routines: C<code2language()> and C<language2code()>.

=over 4

=item code2language()

This function takes a two letter language code and returns a string
which contains the name of the language identified. If the code is
not a valid language code, as defined by ISO 639, then C<undef>
will be returned.

    $lang = code2language($code);

=item language2code()

This function takes a language name and returns the corresponding
two letter language code, if such exists.
If the argument could not be identified as a language name,
then C<undef> will be returned.

    $code = language2code('French');

The case of the language name is not important.
See the section L<KNOWN BUGS AND LIMITATIONS> below.

=back


=head1 QUERY ROUTINES

There are two functions which can be used to obtain a list of all
language codes, or all language names:

=over 4

=item C<all_language_codes()>

Returns a list of all two-letter language codes.
The codes are guaranteed to be all lower-case,
and not in any particular order.

=item C<all_language_names()>

Returns a list of all language names for which there is a corresponding
two-letter language code. The names are capitalised, and not returned
in any particular order.

=back

=head1 BUGS AND LIMITATIONS

=over 4

=item *

Currently just supports the two letter language codes -
there are also three-letter codes, and numbers.
Would these be of any use to anyone?

=back


=head1 COPYRIGHT
       
Portions of the documentation of the module come directly from L<Locale::Language>
which was composed by Neil Bowers and contains the following copyright:

Copyright (C) 2002, Neil Bowers <neil@bowers.com>
 
Copyright (C) 1997-2001 Canon Research Centre Europe (CRE).
 
This module is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

Neil Bowers L<neil@bowers.com|mailto:neil@bowers.com> (Documentation)

=head1 SEE ALSO

=over 4

=item Locales::Country

ISO codes for identification of country (ISO 3166).
Supports 2-letter, 3-letter, and numeric country codes.

=item ISO 639:1988 (E/F)

Code for the representation of names of languages.

=item http://lcweb.loc.gov/standards/iso639-2/langhome.html

Home page for ISO 639-2.

=item http://www.icu-project.org/

Home page for ICU. The data used in Locales:: comes directly from the ICU CVS repository.

=item Example Scripts

Provided with this package examples/language*.pl

=back

=cut
