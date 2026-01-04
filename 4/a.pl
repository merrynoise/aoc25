#! /usr/bin/perl
push @g,[];
while(<>) {
chomp;
y/@./10/;
s/^/0/;
push @g,[split //];
}
$L=$#g;
for $i (1..$L) {
for $j (1..$L) {
next if !$g[$i][$j];
$n=-1;
for $r (-1..1) {
for $c (-1..1) {
$n+=$g[$i+$r][$j+$c];
}}
$N+=$n<4;
}}
print $N;
