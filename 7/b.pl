#! /usr/bin/perl -n
$h{$-[0]} && ($t=$h{$-[0]},delete $h{$-[0]},$h{$-[0]-1}+=$t,$h{$-[0]+1}+=$t) while /\^/g;
$w=$_;substr($w,$_,1)=$h{$_}>9?'I':$h{$_} for keys %h;
$h{$-[0]}=1 while /S/g;
print $w;
END{$n+=$_ for values %h;print $n}
