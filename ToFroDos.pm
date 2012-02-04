################
### ToFroDos ###
################

package ToFroDos ;

require Exporter ;
@ISA = Exporter ;

@EXPORT = ( "unix2dos" , "dos2unix" ) ;

sub unix2dos
  {

  local ( $^I , @ARGV ) = ( defined , @_ ) ;

  s/\n/\r\n/ && print while <>

  }

sub dos2unix
  {

  local ( $^I , @ARGV ) = ( defined , @_ ) ;

  s/\r\n/\n/ && print while <>

  }

1 ;

=head1 NAME

ToFroDos

=head2 Version

1.00

=head1 SYNOPSIS

  use ToFroDos ;
  unix2dos filename[s] ;
  dos2unix filename[s] ;

=head1 DESCRIPTION

This Module provides unix2dos and dos2unix in pure perl

=head1 METHODS

=over 4

=item * unix2dos filename[s]

=item * dos2unix filename[s]

=back

=head1 COPYRIGHT

02/04/2011 by michael.fuersich@arcor.de under GPL

=cut

