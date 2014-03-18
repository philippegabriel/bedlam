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
if($_ eq ''){next;}
@tokens=split(/,/, $_);
#extract name
$name=shift(@tokens);
@vector=(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,);
while(@tokens)
	{
	($x,$y,$z)=(shift(@tokens),shift(@tokens),shift(@tokens));
	$index=$x+4*$y+16*$z;
	@vector[$index]=1;
	}
print $name;
foreach $item(@vector)
	{print ',',$item;}
print "\n";
}

