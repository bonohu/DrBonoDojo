#!/usr/bin/env perl

my $chr = shift(@ARGV);
my $file = "HIF1A_hg38_lo.bed";
my $range = 5000;
my %peak ;

open(FILE, $file) or die "$file:$!\n";
while(<FILE>) {
	chomp;
	my ($chrchr, $start,$stop) = split(/\t/);
	if($start > $stop) {
		print STDERR "invalid entry $_\n";
		exit 1;
	}
	if($chr eq $chrchr) {
		for my $i ($start-$range..$stop+$range) {
			$peak{$i} = $i;
		}
	}
}
close FILE;

while(<STDIN>) {
	chomp;
	my ($chrchr, $start,$stop) = split(/\t/);
	next unless($chr eq $chrchr);
	if(defined($peak{$start}) or defined($peak{$stop})) {
		print "$chrchr\t$start\t$stop\n";
	}
}
