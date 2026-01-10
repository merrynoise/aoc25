#! /usr/bin/perl -n
y/.#/01/;
/\[([01]+)\]/;
$n=0; @b=(); $m=999;
$n+=$n+$_ for reverse split //, $1;
while (/\(([0-9,]+)\)/g) {
$k=0; $k+=1<<$_ for split /,/, $1;
push @b, $k;
}
for $s (1..1<<@b) {
$t=$w=0;
($s>>$_)&1 && ($w++,$t^=$b[$_]) for (0..$#b);
$m=$w if $t==$n && $w<$m;
}
$N+=$m;
END{print $N}
