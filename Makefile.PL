use ExtUtils::MakeMaker;



# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
	NAME		=> 'Locales',
	DISTNAME	=> 'Locales',
	VERSION		=> '0.04', # finds $VERSION
	AUTHOR  	=> "Daniel Yacob <Yacob\@EthiopiaOnline.Net>",
	ABSTRACT	=> "A Multilingual, Object Oriented Locales:: Package.",

	dist			=>	{
		COMPRESS        =>	"gzip -9f",
		SUFFIX          =>	"gz",
		POSTOP          =>	'mv $(DISTNAME)-$(VERSION).tar.gz ../'
	}
);
