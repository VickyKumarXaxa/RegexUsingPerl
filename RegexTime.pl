#!/usr/local/bin/perl

#Clock uses the time format specified in the assignment sheet

print "Input the Time : ";
$time = <STDIN>;
chomp $time;		#Removing the \n entered along with the string Input

if($time =~ /^((1[0-2]{1})|(0?[1-9]{1}))\.[0-5]{1}[0-9]{1} (am|pm)$/){
	print "TRUE\n";
}
else{
	print "FALSE\n";
}