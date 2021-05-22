#!/usr/local/bin/perl

open ( $fh, "<", "micro.txt" );
$count = 0;

while ( $line = <$fh> ){

	@words = split(/( (?="))|((?<=") )/, $line);		#Splitting strings into "" and non "" parts

	foreach my $word (@words) {
		if($word =~ /("[A-Za-z ]*")/){
			if($word =~ /\n$/){
				chomp $word;		#removing extra \n for uniform display in terminal
			}
			print "$word\n";
		}
	}
}

close($fh);