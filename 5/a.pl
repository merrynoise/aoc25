#! /usr/bin/perl -n
$f{$1}=$2+1 if /(\d+)-(\d+)/ && $2>=$f{$1};
if (/^(\d+)$/) {
  for (keys %f) { $n++,last if $1>=$_ && $1<$f{$_} }
}
END{print $n}
