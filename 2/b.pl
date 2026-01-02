#! /usr/bin/perl -n
while(/(\d+)-(\d+)/g) { for($1..$2) { $n+=$_ if /^(\d+)\1+$/ }}
END{print $n}
