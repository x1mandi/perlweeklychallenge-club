#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use utf8;
use 5.28.0;
use Data::Dumper;

#Solution for Taks 1 - Peak Element by x1mandi
# Given is $N > 1. Generate array of size $N,
# filled up with random unique integers between 1 and 50.
# Return the peak elements from the array.
# Example 1
# Array: [ 18, 45, 38, 25, 10, 7, 21, 6, 28, 48 ]
# Peak: [ 48, 45, 21 ]
# Example 2
# Array: [ 47, 11, 32, 8, 1, 9, 39, 14, 36, 23 ]
# Peak: [ 47, 32, 39, 36 ]

my $N = $ARGV[0];

die "ERROR: input not defined!" unless defined $N;
die "ERROR: $N is not greater than 1" unless ($N > 1);

peak_elements();

sub peak_elements {
    #Filling up the array with random numbers
    my @a;
    $a[0] = get_random_num();
    for (0..$N) {
       my $num = get_random_num();
       if ( $a[$_-1] != $num ) {
        push @a, $num;
       }    
}
}


 sub get_random_num {
   my $n = 1 + int rand(50);
   return $n;
 }

