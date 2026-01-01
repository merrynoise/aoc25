#! /usr/bin/perl -n
BEGIN{$t=50}
$u=$t;$t+=y/LR/-+/r;
$T=$t-/L/;$T-=$T%100;
$U=$u-/L/;$U-=$U%100;
$n+=abs($T-$U)/100;
END{print $n}
