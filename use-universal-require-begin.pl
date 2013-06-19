#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
sub p(@) {
    my $d =  Dumper(\@_);
    $d    =~ s/\\x{([0-9a-z]+)}/chr(hex($1))/ge;
    print $d;
}

use UNIVERSAL::require;
BEGIN {
    T->use;
}

p \%T::;
p \%T::V;

__END__

