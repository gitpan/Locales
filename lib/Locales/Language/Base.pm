package Locales::Language::Base;


BEGIN
{
	use strict;
	use vars qw( $VERSION );
	$VERSION = 0.01;
}


sub new
{
my ($pkg) = @_;

	my $self = {};
	$self->{CODES}     = \%{"${pkg}::CODES"};
	$self->{LANGUAGES} = \%{"${pkg}::LANGUAGES"};

	$pkg =~ /::(\w+)$/;
	$self->{_locale}   = $1;

	bless ( $self, $pkg );
}


sub code2language
{
my ($self, $code) = @_;

	$code = lc($code) || return;

	( $self->{CODES}->{$code} ) ?  $self->{CODES}->{$code} : undef ;
}


sub language2code
{
my ($self, $lang) = @_;


	$lang = lc($lang) || return;

	( $self->{LANGUAGES}->{$code} ) ?  $self->{LANGUAGES}->{$code} : undef ;
}


sub all_language_codes
{
	sort keys %{$_[0]->{CODES}};
}


sub all_language_names
{
	sort values %{$_[0]->{CODES}};
}


sub getLocale
{
	$_[0]->{_locale};
}


sub setData
{
my ($pkg, $CODES, $LANGUAGES, $dh) = @_;

    my ($code, $language);

    while (<$dh>) {
        next unless /\S/;
        chop;
        ($code, $language) = split ( /:/, $_, 2 );
        $CODES->{$code} = $language;
        $LANGUAGES->{"\L$language"} = $code;
    }

    close($dh);
}

1;
__END__
