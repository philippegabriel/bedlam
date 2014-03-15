#!/usr/bin/perl
#
# PhilippeG 08/05/09
#
#
# Note: Following Perl code optimised for readability vs conciseness and performance :)
#		Keep as such.
# input on stdin, output on stdout

while(<>)
{
	chomp;
	if($_ eq '')
		{next;} #skip blank lines
	if($_ =~ m/^#/)
		{next;} #skip comments
	if($_ =~ m/^\D/)
		{#output previous vector
		print $name.$vector0.$vector1."\n";
		#initialise next vector
		$vector0='';$vector1='';
		$name=$_;
		next;}	
	if($_ =~ m/^\d/)
		{
		s/0/,0/g;
		s/1/,1/g;
		#Process rows in 2 planes
		($row0,$row1)=split(/\t/, $_);
		chomp($row0);chomp($row1);
		$vector0.=$row0;
		$vector1.=$row1;
		next;
		}
	print 'nothing parsed';
}
#output last vector
print $name.$vector0.$vector1."\n";

