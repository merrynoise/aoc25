#! /usr/bin/perl -n
$i=$j=0;
for $d (-12..-1) {
$a=0;map{$a=$_ if $_>$a} split //, substr($_,$i,$d);
$i=index($_,$a,$i)+1;
$j.=$a;
}
$n+=$j;
END{print $n}
