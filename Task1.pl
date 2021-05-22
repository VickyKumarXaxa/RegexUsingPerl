#!/usr/local/bin/perl

open ( $fh, "<", "micro.txt" );
$count = 0;

while ( $line = <$fh> ){
	if($line =~ /.v|V./){
		print "$line";
		$count = $count + 1;
	}
}
print "\nThe count is $count\n";
close($fh);