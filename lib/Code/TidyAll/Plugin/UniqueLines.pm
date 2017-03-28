use strict;
use warnings;

use 5.006;

package Code::TidyAll::Plugin::UniqueLines;

use Moo;
extends 'Code::TidyAll::Plugin';

use List::Util 1.45 qw( uniq );

sub transform_source {
    my ( $self, $source ) = @_;

    return join( "\n", uniq( grep { /\S/ } split( /\n/, $source ) ) ) . "\n";
}

1;
__END__

# ABSTRACT: Remove duplicate lines from a file

=pod

=head1 SYNOPSIS

   # In configuration:

   [UniqueLines]
   select = .ispell* **/.gitignore

=head1 DESCRIPTION

Discards duplicate lines from a file.  Useful for files containing one entry
per line, such as C<.svnignore>, C<.gitignore>, and C<.ispell*>.

=head1 ACKNOWLEDGEMENTS

This code was essentially pilfered from L<Code::TidyAll::Plugin::SortLines>
