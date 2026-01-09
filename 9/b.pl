#! /usr/bin/perl
push @p,$_ while <>;
@p=sort{$a<=>$b} @p;
for (@p) {
  /(\d+),(\d+)/;
  push @x, $1;
  push @y, $2;
}
$N=@p;
$M=0;

for $i (0..$N-2) {
J: for $j ($i+1..$N-1) {
$x1=$x[$i]; $x2=$x[$j];
$y1=$y[$i]; $y2=$y[$j];
($x2,$x1)=($x1,$x2) if $x1>$x2;
($y2,$y1)=($y1,$y2) if $y1>$y2;
$A=$x2-$x1+1;
$A*=$y2-$y1+1;
next if $A<=$M;

%r=();
$F=1;
K: for ($k=0;$k<@p;$k+=2) {
$x=$x[$k]; $u=$y[$k]; $v=$y[$k+1];
($v,$u)=($u,$v) if $u>$v;
$a=$b=$f=0;
for (keys %r) {
  $a=$_ if $_<=$u && $u<=$r{$_};
  $b=$_ if $_<=$v && $v<=$r{$_};
}
if (!$a && !$b) { $r{$u}=$v; }
elsif ($a && !$b) { $r{$a}=$v; }
elsif (!$a && $b) { $r{$u}=$r{$b}; delete $r{$b}; }
elsif ($a != $b) { $r{$a}=$r{$b}; delete $r{$b}; }
if ($x>=$x1 && $x<=$x2) {
  $_<=$y1 && $y2<=$r{$_} && $f++ for keys %r;
  next J if !$f;
}
last K if $x>=$x2;
next K if (!$a || !$b || $a != $b);
if ($u == $a && $v == $r{$a}) { delete $r{$a}; }
elsif ($u == $a) { $r{$v}=$r{$a}; delete $r{$a}; }
elsif ($v == $r{$a}) { $r{$a}=$u; }
else { $r{$v}=$r{$a}; $r{$a}=$u; }
}
$M=$A,print "$M\n" if $F;
}}
