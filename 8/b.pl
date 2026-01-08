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
F:for (@m) {
$x=$_%$N;
$y=int($_/$N);
$X=$g{$x}; $Y=$g{$y};
next F if $X==$Y;
$g{$_}==$X && ($g{$_}=$Y) for (0..$N-1);
$_!=$Y && next F for values %g;
last F;
}
print $x[$x]*$x[$y];
