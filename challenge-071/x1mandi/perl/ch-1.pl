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
4
peak_elements();

sub peak_elements {
    #Filling up the array with random numbers
    my @a;
    my @peak;
    #Add initial value to the first index of the array.
    $a[0] = get_random_num();
    for ( 1..( $N -1 )) {
      my $num = get_random_num();
      #in each iteration compare the generated number with the previous element. 
      if ( $a[$_-1] != $num ) {
        push @a, $num;
       }
    }
#     if ( $a[0] < $a[1] ) {
#         push @peak, $a[0]; 
#       }
    
    say Dumper \@a;
    say Dumper \@peak;
}


 sub get_random_num {
   my $n = 1 + int rand(50);
   return $n;
 }

