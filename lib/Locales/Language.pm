package Locales::Language;

BEGIN
{
	use strict;
	use base qw( Exporter Locales::Base    );
	use vars qw( @EXPORT %Locales $VERSION );

	$VERSION = "0.02";

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
