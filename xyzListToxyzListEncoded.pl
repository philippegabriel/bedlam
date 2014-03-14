#!/usr/bin/perl
#
# PhilippeG 08/05/09
#
#
# Note: Following Perl code optimised for readability vs conciseness and performance :)
#		Keep as such.
# input on stdin, output on stdout
#
#Convert from a List to a vector
# adds "cube border" encoding
while(<>)
{
chomp;
if($_ eq ''){next;}
@tokens=split(/,/, $_);
#extract name
$prevName=$name;
$name=shift(@tokens);
if($prevName eq $name)
	{$cnt++;}
else
	{$cnt=0;}
print $name.'_'.$cnt;
while(@tokens)
	{
	for(1..4)
		{
		for(1..4)
			{print ','.shift(@tokens);}
		print ',X';
		}
	{print ',X,X,X,X,X';}
	}
print "\n";
}

#(let (?Blu0RotX000 (bvbin0100011100001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000))
