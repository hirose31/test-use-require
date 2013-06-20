package t::T;

use strict;
use warnings;

use Carp;

our %V = (foo=>'FOO',bar=>'BAR');

sub v { print "blah blah blah\n" }

use Readonly;
Readonly our $S => "scalar";
Readonly our @A => ('foo','bar');
Readonly our %H => ('foo' => 'bar');
Readonly our @S => ('same','name');

use constant PI => 4 * atan2(1, 1);

sub vv() { print "blah blah blah2\n" }


1;

__END__
