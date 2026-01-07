#! /usr/bin/perl -n
$h{$-[0]} && $n++,delete $h{$-[0]},$h{$-[0]-1}=1,$h{$-[0]+1}=1 while /\^/g;
$w=$_;substr($w,$_,1)='|' for keys %h;
$h{$-[0]}=1 while /S/g;
print $w;
END{print $n}
