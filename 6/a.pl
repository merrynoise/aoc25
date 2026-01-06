#! /usr/bin/perl
while (<>) {
@a=split;
push @{$b[$_]}, $a[$_] for (0..$#a);
}
for (@b) { @a=@{$_}; $o=pop @a; $n+=eval join($o,@a)}
print $n;
