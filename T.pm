package T;

use strict;
use warnings;

use Carp;

my $env = 't';

my $pkg_me  = 'T';
my $pkg_env = $env . '::T';
eval "require $pkg_env" or croak "require $pkg_env: $!";
{
#    no strict 'refs';
    warn "import from $pkg_env to $pkg_me";
    my $from = do { no strict 'refs'; \%{"$pkg_env\::"}};
    my $to   = do { no strict 'refs'; \%{"$pkg_me\::"}};

    foreach my $name (keys %{$from}) {
        if (ref $to->{$name} ne 'GLOB') {
            $to->{$name} = $from->{$name};
        } else {
            *{$to->{$name}} = *{$from->{$name}};
        }
    }

}

1;

__END__
