package T;

use strict;
use warnings;

use Carp;

my $env = 't';

my $pkg_me  = 'T';
my $pkg_env = $env . '::T';
eval "require $pkg_env" or croak "require $pkg_env: $!";
{
    no strict 'refs';
    warn "import from $pkg_env to $pkg_me";
    *{"$pkg_me\::"} = *{"$pkg_env\::"};
}

1;

__END__
