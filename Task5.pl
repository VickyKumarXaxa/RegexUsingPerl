#!/usr/local/bin/perl

open ( $fh, "<", "micro.txt" );
$count = 0;

while ( $line = <$fh> ){

	@words = split(/[^A-Za-z]/, $line);		#Getting all words in a line

	foreach my $word (@words) {
		if($word =~ /^(a|A)([A-Za-z])([A-Za-z])/){
			if((uc $2) eq (uc $3)){
				print "$word\n";
				$count = $count + 1;
			}
		}
	}
}
print "\nThere are $count words that start with a and have the same 2nd and 3rd character.\n";
close($fh);