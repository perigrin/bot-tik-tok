package TikTok;
use Moses;
our $VERSION = '0.0.1';

use Capture::Tiny qw/capture_merged/;

nickname 'tik-tok';
server 'irc.perl.org';
channels '#tamarou';

event irc_bot_addressed => sub {
    my ( $self, $nickstr, $channel, $msg ) = @_[ OBJECT, ARG0, ARG1, ARG2 ];
    my ($nick) = split /!/, $nickstr;
    return unless $nick eq 'perigrin';
    my @response = split /\n/, capture_merged { system('task', $msg)  };
    $self->privmsg( $channel => $_ ) for @response;
};

no Moses;
1;
__END__
