#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
sub p(@) {
    my $d =  Dumper(\@_);
    $d    =~ s/\\x{([0-9a-z]+)}/chr(hex($1))/ge;
    print $d;
}

require T or die $!;

p \%T::;
p \%T::V;

__END__

