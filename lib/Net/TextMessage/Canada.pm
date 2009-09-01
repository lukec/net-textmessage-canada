package Net::TextMessage::Canada;
use Moose;

our $VERSION = '0.01';

has 'provider_map' => (is => 'ro', isa => 'HashRef', lazy_build => 1);

sub providers {
    my $self = shift;
    my $map = $self->provider_map;
    return [ map { {$_ => $map->{$_}{name}} } 
             sort { $map->{$a}{name} cmp $map->{$b}{name} } keys %$map ];
}

sub to_email {
    my $self = shift;
    my $provider = shift;
    my $number = shift;
    
    my $map = $self->provider_map;
    my $p = $map->{$provider};
    die "$provider is not a valid provider!" unless defined $p;

    return join '@', $number, $p->{domain};
}


sub _build_provider_map {
    my $self = shift;
    return {
        bell => {
            name => 'Bell Canada',
            domain => 'txt.bell.ca',
        },
        rogers => {
            name => 'Rogers Wireless',
            domain => 'pcs.rogers.com',
        },
        fido => {
            name => 'Fido',
            domain => 'fido.ca',
        },
        telus => {
            name => 'Telus',
            domain => 'msg.telus.com',
        },
        virgin => {
            name => 'Virgin Mobile',
            domain => 'vmobile.ca',
        },
        pcmobile => {
            name => 'PC Mobile',
            domain => 'mobiletxt.ca',
        },
        koodo => {
            name => 'Koodo Mobile',
            domain => 'msg.koodomobile.com',
        },
        sasktel => {
            name => 'SaskTel',
            domain => 'sms.sasktel.com',
        },
    };
}

__PACKAGE__->meta->make_immutable;
1;
