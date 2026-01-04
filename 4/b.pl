#! /usr/bin/perl
push @g,[];
while(<>) {
  chomp;
  y/@./10/;
  s/^/0/;
  push @g,[split //];
}
$L=$#g;
do {
  $M=$N;
  for $i (1..$L) {
  for $j (1..$L) {
      next if !$g[$i][$j];
      $n=-1;
      for $r (-1..1) {
      for $c (-1..1) {
          $n+=$g[$i+$r][$j+$c];
      }}
      $N++,$g[$i][$j]=0 if $n<4;
  }}
} while $N>$M;
print $N;
