#! /usr/bin/perl -n
$a=0;map{$a=$_ if $_>$a} split //, substr($_,0,-2);
$b=0;map{$b=$_ if $_>$b} split //, substr($_,index($_,$a)+1);
$n+=$a.$b;
END{print $n}
