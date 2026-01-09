#! /usr/bin/perl
while (<>) {
/(\d+),(\d+)/;
push @x,$1;
push @y,$2;
}
$N=@x;
for $i (0..$N-2) {
for $j ($i+1..$N-1) {
$a=abs($x[$i]-$x[$j])+1;
$a*=abs($y[$i]-$y[$j])+1;
$h{$a}++;
}}
@m=sort{$b<=>$a} keys %h;
print $m[0];
