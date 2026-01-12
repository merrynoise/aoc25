#! /usr/bin/perl

$N=6;
for (0..$N-1) {
$t=''; $t.=<> for (1..5);
push @p, $t=~y/#/#/;
}

while (<>) {
  @a=split;
  $a[0] =~ /(\d+)x(\d+)/;
  $x=$1; $y=$2;
  shift @a;
  $t=0; $p=0;
  $t += $a[$_] * $p[$_] for (0..$N-1);
  $p += $a[$_] for (0..$N-1);
  if ($t>$x*$y) {
    print "FAIL\t$_";
  } elsif ($p <= int($x/3)*int($y/3)) {
    print "PASS\t$_";
    $min++; $max++;
  } else {
    print "    \t$_";
    $max++;
  }
}
print "$min-$max\n";
