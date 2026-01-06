#! /usr/bin/perl
while (<>) {
  push @b, $_;
  $L=length() if $L<length();
}
$z=pop @b;
for $c (0..$L-1) {
  $o //= substr($z,$c,1);
  $_=join '', map{substr($_,$c,1)} @b;
  if (/\d/) {
    push @a, $_;
  } else {
    $n+=eval join $o, @a;
    @a=();
    undef $o;
  }
}
print $n;
