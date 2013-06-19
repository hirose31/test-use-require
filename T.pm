package T;

use strict;
use warnings;

use Carp;
use Package::Rename;

my $env = 't';

my $pkg_me  = 'T';
my $pkg_env = $env . '::T';
eval "require $pkg_env" or croak "require $pkg_env: $!";

Package::Rename::rename_package($pkg_env, $pkg_me);

1;

__END__
