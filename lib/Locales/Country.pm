package Locales::Country;

BEGIN
{
use strict;
use base qw( Exporter Locales::Base );
use vars qw( @EXPORT $FALLBACK_LOCALE %Locales );

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


1;
__END__
