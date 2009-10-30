package Locales::Country;

BEGIN
{
	use strict;
	use base qw( Exporter Locales::Base    );
	use vars qw( @EXPORT %Locales $VERSION );

	$VERSION = "0.03";

	@EXPORT = qw(
		code2country
		country2code
		all_country_codes
		all_country_names

		country_code2code
		alias_code
		rename_country
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
	  ? Locales::Base::setLocale ( @_ )       # Locales::Country::setLocale
	  : Locales::Base::setLocale ( "foo", @_ )# Locales::Country->setLocale
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

Locales::Country - (DEPRECATED use L<Locales> instead) ISO codes for country identification (ISO 3166)

=head1 SYNOPSIS

=head2 Classic Style:

    use Locales::Country;  # assume environment is set forr english:
    
    my $country = code2country ( 'jm' );        # $country gets 'Jamaica'
    my $code    = country2code ( 'Norway' );    # $code gets 'no'
    
    my @codes   = all_country_codes();
    my @names   = all_country_names();
    
    # semi-private routines
    Locales::Country::alias_code( 'uk' => 'gb' );
    Locales::Country::rename_country( 'gb' => 'Great Britain' );


=head2 Classic Style With New Default Country:

    use utf8;
    use Locales::Country ( 'de' );  # use German language
    
    my $country = code2country ( 'jm' );        # $country gets 'Jamaika'
    my $code    = country2code ( 'Norwegen' );  # $code gets 'no'
    
    my @codes   = all_country_codes();
    my @names   = all_country_names();

    # set default Language to French
    Locales::Country::setLocale ( 'fr' );

    $country = code2country ( 'jm' );           # $country gets 'Jamaïque'
    $code    = country2code ( 'Norvège' );      # $code gets 'no'


=head2 Object Oriented Style:

    use utf8;
    require Locales::Country;

    my $am = new Locales::Country ( "am" );
    my $de = new Locales::Country ( "de" );

    print $am->getLocale, " => ",
          $am->code2country ( "gb" ), " / ",
          $am->country2code ( "እንግሊዝ", "alpha2" ), "\n";
    print $de->getLocale, " => ",
          $de->code2country ( "gbr" ), " / ",
          $de->country2code ( "Vereinigtes Königreich", "alpha3" ), "\n";

    my @codes   = $am->all_country_codes();
    my @deNames = $de->all_country_names();


=head2 Object Oriented Style With New Default Country:

    use utf8;
    use Locales::Country ( 'de' );  # use German language

    my $de = new Locales::Country;

    print $de->getLocale, " => ",
          $de->code2country ( "826" ), " / ",
          $de->country2code ( "Vereinigtes Königreich", "numeric" ), "\n";

      :



=head1 DESCRIPTION

The C<Locales::Country> module provides access to the ISO
codes for identifying countries, as defined in ISO 3166-1.
You can either access the codes via the L<conversion routines>
(described below), or with the two functions which return lists
of all country codes or all country names.

There are three different code sets you can use for identifying
countries:

=over 4

=item B<alpha-2>

Two letter codes, such as 'tv' for Tuvalu.
This code set is identified with the symbol C<"alpha1">.

=item B<alpha-3>

Three letter codes, such as 'brb' for Barbados.
This code set is identified with the symbol C<"alpha3">.

=item B<numeric>

Numeric codes, such as 064 for Bhutan.
This code set is identified with the symbol C<"numeric">.

=back

All of the routines take an optional additional argument
which specifies the code set to use.
If not specified, it defaults to the two-letter codes.
This is partly for backwards compatibility (previous versions
of this module only supported the alpha-2 codes), and
partly because they are the most widely used codes.

The alpha-2 and alpha-3 codes are not case-dependent,
so you can use 'BO', 'Bo', 'bO' or 'bo' for Bolivia.
When a code is returned by one of the functions in
this module, it will always be lower-case.

As of version 2.00, Locales::Country supports variant
names for countries. So, for example, the country code for "United States"
is "us", so country2code('United States') returns 'us'.
Now the following will also return 'us':

    country2code( 'United States of America' ) 
    country2code( 'USA' ) 


=head1 CONVERSION ROUTINES

There are three conversion routines: C<code2country()>, C<country2code()>,
and C<country_code2code()>.

=over 4

=item code2country( CODE, [ CODESET ] )

This function takes a country code and returns a string
which contains the name of the country identified.
If the code is not a valid country code, as defined by ISO 3166,
then C<undef> will be returned:

    $country = code2country('fi');

=item country2code( STRING, [ CODESET ] )

This function takes a country name and returns the corresponding
country code, if such exists.
If the argument could not be identified as a country name,
then C<undef> will be returned:

    $code = country2code('Norway', 'alpha3');
    # $code will now be 'nor'

The case of the country name is not important.
See the section L<KNOWN BUGS AND LIMITATIONS> below.

=item country_code2code( CODE, CODESET, CODESET )

This function takes a country code from one code set,
and returns the corresponding code from another code set.

    $alpha2 = country_code2code('fin', 'alpha3', 'alpha2');
    # $alpha2 will now be 'fi'

If the code passed is not a valid country code in
the first code set, or if there isn't a code for the
corresponding country in the second code set,
then C<undef> will be returned.

=back


=head1 QUERY ROUTINES

There are two function which can be used to obtain a list of all codes,
or all country names:

=over 4

=item C<all_country_codes( [ CODESET ] )>

Returns a list of all two-letter country codes.
The codes are guaranteed to be all lower-case,
and in alphabetical order.

=item C<all_country_names( [ CODESET ] )>

Returns a list of all country names for which there is a corresponding
country code in the specified code set.
The names are capitalised and in alphabetical order.

Not all countries have alpha-3 and numeric codes -
some just have an alpha-2 code,
so you'll get a different number of countries
depending on which code set you specify.

=back


=head1 SEMI-PRIVATE ROUTINES

Locales::Country provides two semi-private routines for modifying
the internal data.
Given their status, they aren't exported by default,
and so need to be called by prefixing the function name with the
package name.

=head2 alias_code

Define a new code as an alias for an existing code:

    Locales::Country::alias_code( ALIAS => CODE [, CODESET ] )

This feature was added as a mechanism for handling
a "uk" code. The ISO standard says that the two-letter code for
"United Kingdom" is "gb", whereas domain names are all .uk.

By default the module does not understand "uk", since it is implementing
an ISO standard. If you would like 'uk' to work as the two-letter
code for United Kingdom, use the following:

    Locales::Country::alias_code('uk' => 'gb');

With this code, both "uk" and "gb" are valid codes for United Kingdom,
with the reverse lookup returning "uk" rather than the usual "gb".

B<Note:> this function was previously called _alias_code,
but the leading underscore has been dropped.
The old name will be supported for all 2.X releases for
backwards compatibility.

=head2 rename_country

If the official country name just isn't good enough for you,
you can rename a country. For example, the official country
name for code 'gb' is 'United Kingdom'.
If you want to change that, you might call:

    Locales::Country::rename_country('gb' => 'Great Britain');

This means that calling code2country('gb') will now return
'Great Britain' instead of 'United Kingdom'.
The original country name is retained as an alias,
so for the above example, country2code('United Kingdom')
will still return 'gb'.


=head1 EXAMPLES

The following example illustrates use of the C<code2country()> function.
The user is prompted for a country code, and then told the corresponding
country name:

    $| = 1;   # turn off buffering
    
    print "Enter country code: ";
    chop($code = <STDIN>);
    $country = code2country($code, 'alpha2');
    if (defined $country)
    {
        print "$code = $country\n";
    }
    else
    {
        print "'$code' is not a valid country code!\n";
    }

=head1 DOMAIN NAMES

Most top-level domain names are based on these codes,
but there are certain codes which aren't.
If you are using this module to identify country from hostname,
your best bet is to preprocess the country code.

For example, B<edu>, B<com>, B<gov> and friends would map to B<us>;
B<uk> would map to B<gb>. Any others?

=head1 KNOWN BUGS AND LIMITATIONS

=over 4

=item *

When using C<country2code()>, the country name must currently appear
exactly as it does in the source of the module. The module now supports
a small number of variants.

Possible extensions to this are: an interface for getting at the
list of variant names, and regular expression matches.

=item *

In the current implementation, all data is read in when the
module is loaded, and then held in memory.
A lazy implementation would be more memory friendly.

=item *

Support for country names in different languages.

=back


=head1 COPYRIGHT
       
Portions of the documentation of the module come directly from L<Locale::Country>
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

=item Locales::Language

ISO two letter codes for identification of language (ISO 639).

=item Locale::Script

ISO codes for identification of scripts (ISO 15924).

=item Locale::Currency

ISO three letter codes for identification of currencies
and funds (ISO 4217).

=item Locale::SubCountry

ISO codes for country sub-divisions (states, counties, provinces, etc),
as defined in ISO 3166-2.
This module is not part of the Locale-Codes distribution,
but is available from CPAN in CPAN/modules/by-module/Locale/

=item ISO 3166-1

The ISO standard which defines these codes.

=item http://www.iso.org/iso/en/prods-services/iso3166ma/index.html

Official home page for the ISO 3166 maintenance agency.

=item http://www.egt.ie/standards/iso3166/iso3166-1-en.html

Another useful, but not official, home page.

=item http://www.cia.gov/cia/publications/factbook/docs/app-d-1.html

An appendix in the CIA world fact book which lists country codes
as defined by ISO 3166, FIPS 10-4, and internet domain names.

=item http://www.icu-project.org/

Home page for ICU. The data used in Locales:: comes directly from the ICU CVS repository.

=item Example Scripts

Provided with this package examples/country*.pl

=back

=cut
