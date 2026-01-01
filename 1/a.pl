#! /usr/bin/perl -n
$t+=y/LR/-+/r;$n+=$t=~/50$/;
END{print $n}
