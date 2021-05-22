#!/usr/local/bin/perl

open ( $fh, "<", "micro.txt" );
$count = 0;

while ( $line = <$fh> ){

	@words = split(/[^A-Za-z]/, $line);		#Getting all words in a line

	foreach my $word (@words) {
		if($word =~ /[A-Za-z][A-Z][A-Za-z]/){
			print "$word\n";
			$count = $count + 1;
		}
	}
}
print "\nThere are $count words with a capital letters in the middle\n";
close($fh);