package T;

use strict;
use warnings;

use Carp;
use Module::Path qw(module_path);

my $env = 't';

my $pkg_me  = 'T';
my $pkg_env = $env . '::T';

my $path = module_path($pkg_env);
open my $modfh, '<', $path or die $!;
my $code = do { local $/; <$modfh> };
close $modfh;

$code =~ s/^package\s${pkg_env};$/package ${pkg_me};/m;
eval $code;

1;

__END__
