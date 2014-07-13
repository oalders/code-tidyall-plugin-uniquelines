use strict;
use warnings;

package Code::TidyAll::Plugin::UniqueLines;

use Moo;
extends 'Code::TidyAll::Plugin';

use List::Uniq qw( uniq );

sub transform_source {
    my ( $self, $source ) = @_;

    return join( "\n", uniq( grep {/\S/} split( /\n/, $source ) ) ) . "\n";
}

1;
__END__

=pod

=head1 NAME

Code::TidyAll::Plugin::UniqueLines - remove duplicate lines from a file

=head1 SYNOPSIS

   # In configuration:

   [UniqueLines]
   select = .ispell* **/.gitignore

=head1 DESCRIPTION

Discards duplicate lines from a file.  Useful for files containing one entry
per line, such as C<.svnignore>, C<.gitignore>, and C<.ispell*>.

=head1 ACKNOWLEDGEMENTS

This code was essentially pilfered from L<Code::TidyAll::Plugin::SortLines>
