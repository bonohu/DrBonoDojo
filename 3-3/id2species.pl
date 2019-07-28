#!/usr/bin/env perl

my($file) = shift(@ARGV);

open(FILE, $file) or die "$file:$!\n";
while(<FILE>) {
	chomp;
	my($id,$species) = split(/\t/);
	$species =~ s/ /_/g;
	$speciesof{$id} = $species;
}
close FILE;

while(<STDIN>) {
	chomp;
	foreach $id (keys %speciesof) {
		s/$id/$speciesof{$id}/;
	}
	print "$_\n";
}

