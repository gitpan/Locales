package Locales::Base;

BEGIN
{
	use strict;
	use vars qw( $FALLBACK_LOCALE %LOADS $VERSION );

	$VERSION = 0.02;

	$FALLBACK_LOCALE = "en";
}


sub _getSelf
{
	return ( $_[0]->{_locale}, $_[1] ) if ( ref($_[0]) );

	my $caller = caller;

	( ${"${caller}::Locales"}{${"${caller}::Locales"}{_locale}}, $_[0] );
}


sub _getImportLocale
{
my ($caller) = @_;

	${"${caller}::Locales"}{_import_locale};
}


sub _getDefaultLocale
{
	my $locale = $ENV{LC_ALL};
	$locale ||= $ENV{LANG};
	$locale ||= $ENV{LANGUAGE};
	return unless ( $locale );

	$locale =~ s/_.*//;

	$locale;
}


sub _loadFallBackLocale
{
my ($caller) = @_;

	my $module = "$caller::$FALLBACK_LOCALE";

	eval "require $module;" 
	|| die "Unable to load $module : $@";

	eval "require $self->{_module}::Base" unless ( $LOADS{$caller} );
	$LOADS{$caller} = 1;
	#
	# inheritance wonk, most reference 'new' from base class
	#
	# $object = &{"${module}::new"}($module);
	&{"${caller}::Base::new"}( $module );
}


sub new
{
my ($class) = shift;

	my $self = {};
	my $blessing = bless ( $self, $class );

	if ( $class =~ /::Language/ ) {
		$self->{_module} = "Locales::Language";
	}
	elsif ( $class =~ /::Country/ ) {
		$self->{_module} = "Locales::Country";
	}
	$self->setLocale ( @_ );

	$blessing;
}


sub getLocale
{
	return $_[0]->{_locale}->{_locale} if ( ref($_[0]) );

	$caller = caller;

	${"${caller}::Locales"}{_locale};
}


sub setLocale
{
my ($self, $locale) = @_;

	my $caller = ($self->{_module}) ? $self->{_module} : caller ;
	$locale ||= _getImportLocale ( $caller );
	$locale ||= _getDefaultLocale;

	#
	# check cache:
	#
	my $object;
	if ( ($object = ${"${caller}::Locales"}{$locale}) ) {
		if ( $self->{_module} ) {
			$self->{_locale} = $object;
		}
		else {
			${"${caller}::Locales"}{_locale} = $locale;
		}
		return;
	}

	my $module = $caller."::$locale";

	# print "C/M:  $caller/$module\n";
	unless ( eval "require $module;" ) {
		my $defaultLocale = _getDefaultLocale;
		if ( $locale eq $defaultLocale ) {
			warn ( "$defaultLocale is unsupported, trying $FALLBACK_LOCALE" );
			$object = _loadFallBackLocale;
		}
		else {
			warn ( "$locale is unsupported, trying $defaultLocale" );
			$module = "$caller::$defaultLocale";
			unless ( eval "require $module;" ) {
				warn ( "$defaultLocale is unsupported, trying $FALLBACK_LOCALE" );
				$object = _loadFallBackLocale ( $caller );
			}
			else {
				eval "require $caller::Base" unless ( $LOADS{$caller} );
				$LOADS{$caller} = 1;
				$object = &{"${caller}::Base::new"}( $module );
			}
		}
	}
	else {
		eval "require $caller::Base" unless ( $LOADS{$caller} );
		$LOADS{$caller} = 1;
		#
		# inheritance wonk, most reference 'new' from base class
		#
		# $object = &{"${module}::new"}($module);
		$object = &{"${caller}::Base::new"}( $module );
	}

	#
	# set cache:
	#
	${"${caller}::Locales"}{$locale} = $object;


	if ( $self->{_module} ) {
		$self->{_locale} = $object;
	}
	else {
		${"${caller}::Locales"}{_locale} = $locale;
	}

}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################


__END__
