#! /usr/bin/perl -w
while (<>) {
  /^(...): (.*)$/;
  $h{$1}=$2;
}
sub path {
($in,$out)=@_;
%p=($in,1);
$N=0;
do {
  for $x (keys %p) {
    next if !$h{$x};
    $q{$_}+=$p{$x} for split / /, $h{$x};
  }
  %p=%q; undef %q;
  $N+=$p{$out} //0;
} while %p;
return $N;
}
print path('you','out');
