package Locales::Country::Base;


BEGIN
{
	use strict;
	use Carp;
	use Locale::Constants;
	use vars qw( %CodeSet $VERSION );

	$VERSION = "0.02";

	%CodeSet = (
		alpha2  => 0,
		alpha3  => 1,
		numeric => 2
	);
}


sub new
{
my ($pkg) = @_;

	my $self = {};
	$self->{CODES}     = \%{"${pkg}::CODES"};
	$self->{COUNTRIES} = \%{"${pkg}::COUNTRIES"};

	$pkg =~ /::(\w+)$/;
	$self->{_locale}   = $1;

	bless ( $self, $pkg );
}


sub code2country
{
my ($self, $code) = @_;

	return unless ( $code );
	
	if ( $code =~ /^\d+$/ ) {
		$code = sprintf ( "%.3d", $code );
	} else {
		$code = lc ( $code );
	}

	( $self->{CODES}->{$code} )
	  ? ( ref($self->{CODES}->{$code}) eq "SCALAR" )
	    ? ${$self->{CODES}->{$code}}
	    : $self->{CODES}->{$code}
	  : undef
	;
}


sub country2code
{
my ($self, $country, $codeset) = @_;

	$country = lc ( $country ) || return;

	$codeset ||= "alpha2";
	$codeset = $CodeSet{ lc ($codeset) };

	( $self->{COUNTRIES}->{$country}->[$codeset] ) ? $self->{COUNTRIES}->{$country}->[$codeset] : undef ;
}


sub country_code2code
{
my $self = shift;

	(@_ == 2) or croak "country_code2code() takes 2 arguments!";

	my ( $code, $outset ) = @_;

	my $country = $self->code2country ( $code );

	( $country ) ? $self->country2code ( $country, $outset ) : undef ;
}


sub all_country_codes
{
my ( $self, $filter ) = @_;

	if ( $filter ) {
		$filter = qr/\w{2}/ if ( $filter eq "alpha2"  );
		$filter = qr/\w{3}/ if ( $filter eq "alpha3"  );
		$filter = qr/\d+/   if ( $filter eq "numeric" );
	}

	( $filter )
	  ?  sort grep ( /$filter/, keys %{ $self->{CODES} } )
	  :  sort keys %{ $self->{CODES} }
	;
}


sub all_country_names
{
	sort values %{ $_[0]->{CODES} };
}


sub alias_code
{
my ( $self, $alias, $real, $codeset ) = @_;

	$codeset ||= "alpha2";


	unless ( $CODES->{$real} ) {
		carp "attempt to alias \"$alias\" to unknown country code \"$real\"\n";
		return;
	}

	my $country = $CODES->{$real};

	$self->{CODES}->{$alias} = $country;

	if ( $alias =~ /\w{2}/ ) {
		$self->{COUNTRIES}->{"\L$country"}->[$CodeSet{alpha2}]  = $alias;
	} elsif ( $alias =~ /\w{3}/ ) {
		$self->{COUNTRIES}->{"\L$country"}->[$CodeSet{alpha3}]  = $alias;
	} elsif ( $alias =~ /\d+/ ) {
		$self->{COUNTRIES}->{"\L$country"}->[$CodeSet{numeric}] = $alias;
	} else {
		$self->{COUNTRIES}->{"\L$country"} = $alias;
	}

	$alias;
}


sub rename_country
{
my ( $self, $code, $new_name ) = @_;

	unless ( $self->{CODES}->{$code} ) {
		carp "rename_country(): unknown country code \"$code\"\n";
		return;
	}

	my $country = $self->{CODES}->{$code};

	$self->{CODES}->{$code} = $new_name;
	$self->{COUNTRIES}->{"\L$new_name"} = \$self->{COUNTRIES}->{$country};

	1;
}


sub getLocale
{
	$_[0]->{_locale};
}


sub setData
{
my ($pkg, $CODES, $COUNTRIES, $dh) = @_;

    my ($alpha2, $alpha3, $numeric);
    my ($country, @countries);

    while (<$dh>) {
        next unless /\S/;
        chop;
        ($alpha2, $alpha3, $numeric, @countries) = split ( /:/, $_ );

        $CODES->{$alpha2}  = $countries[0];
        $CODES->{$alpha3}  = $CODES->{$numeric} = \$CODES->{$alpha2};

	foreach $country (@countries) {
	    $COUNTRIES->{"\L$country"} = [ $alpha2, $alpha2, $numeric ];
	}
    }

    close(DATA);
}

1;

__END__
