package Locales::Language::el;
use utf8;

BEGIN
{
	use base qw( Locales::Language::Base    );
	use vars qw( %CODES %LANGUAGES $VERSION );

	$VERSION = "0.02";
}

__PACKAGE__->setData ( \%CODES, \%LANGUAGES, \*DATA );



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

=head1 THIS MODULE IS DEPRECATED

This POD documents the deprecated legacy system (pre v0.06)

New code should use the more modern, efficient, and CLDR based L<Locales> object system.

=head1 NAME

Locales::Language::el - (DEPRECATED use L<Locales> instead) ISO 639 Language Codes in Greek.

=head1 SYNOPSIS

  require Locales::Language::el;

  my $el = new Locales::Language::el;

  print "  ", $el->getLocale, " => ", $el->code2language ( "el" ), "\n";
  print "  ", $el->getLocale, " => ", $el->language2code ( "Ελληνικά" ), "\n";


=head1 DESCRIPTION

This module provides an OO interface to Greek language ISO 639
language codes.  All of the functions available in the Locale::Language
module are available here as class methods.

This module may be used indirectly through the L<Locales::Language> module
which also exports functions in the style of L<Locale::Language>.

Documentation remains under development.


=head1 COPYRIGHT

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=head1 BUGS

None presently known.

=head1 AUTHOR

Daniel Yacob,  L<dyacob@cpan.org|mailto:dyacob@cpan.org>

=head1 SEE ALSO

L<Locales::Language>

Included with this package:

  examples/lang*.pl

=cut


__DATA__
ar:Αραβικά
bg:Βουλγαρικά
ca:Καταλανικά
cs:Τσέχικα
da:Δανέζικα
de:Γερμανικά
el:Ελληνικά
en:Αγγλικά
es:Ισπανικά
fi:Φινλανδικά
fr:Γαλλικά
he:Εβραϊκά
hr:Κροατικά
hu:Ουγγρικά
it:Ιταλικά
mk:Σλαβομακεδονικά
nl:Ολλανδικά
no:Νορβηγικά
pl:Πολωνικά
pt:Πορτογαλικά
ro:Ρουμανικά
ru:Ρωσικά
sk:Σλοβακικά
sl:Σλοβενικά
sq:Αλβανικά
sr:Σερβικά
sv:Σουηδικά
