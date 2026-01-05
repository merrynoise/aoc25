#! /usr/bin/perl
while (<>) {
  $f{$1}=$2+1 if /(\d+)-(\d+)/ && $2>=$f{$1};
}
$e{$_}++ for %f;
for $v (sort{$a<=>$b} keys %e) {
  $n+=$v-$u if $c;
  $c++ if $f{$v};
  $c-=($v==$_) for values %f;
  $u=$v;
}
print $n;
