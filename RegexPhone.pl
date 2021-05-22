#!/usr/local/bin/perl

#Phone Numbers starting with 0 are not being considered as Phone No. ex 0333333333 -> FALSE

print "Enter Phone Number : ";
$phoneNo = <STDIN>;
chomp $phoneNo;
if($phoneNo =~ /^[1-9]{1}[0-9]{9}$|^[1-9]{1}[0-9]{2} [0-9]{3} [0-9]{4}$|^[1-9]{1}[0-9]{2}-[0-9]{3}-[0-9]{4}$/){
	print "TRUE\n";
}
else{
	print "FALSE\n";
}
