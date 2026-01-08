#! /usr/bin/perl
while (<>) {
/(\d+),(\d+),(\d+)/;
push @x,$1;
push @y,$2;
push @z,$3;
}
$N=@x;
for $i (0..$N-2) {
for $j ($i+1..$N-1) {
$d=($x[$i]-$x[$j])**2
  +($y[$i]-$y[$j])**2
  +($z[$i]-$z[$j])**2;
$h{$j+$i*$N}=$d;
}}
@m=sort{$h{$a}<=>$h{$b}} keys %h;

$g{$_}=$_ for (0..$N-1);
for (0..999) {
$x=$m[$_]%$N;
$y=int($m[$_]/$N);
$X=$g{$x}; $Y=$g{$y};
$g{$_}==$X && ($g{$_}=$Y) for (0..$N-1);
}
$c{$_}++ for values %g;
@c=sort{$b<=>$a} values %c;
print $c[0]*$c[1]*$c[2];
