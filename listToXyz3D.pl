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
$x=0;$y=0;$z=0;
while(@tokens)
	{
	if(shift(@tokens) eq '1')
		{push @x,$x;push @y,$y;push @z,$z;}
	$x++;
	if($x==4)
		{$x=0;$y++;
		if($y==4)
			{$y=0;$z++}
		}
	}
print $name;
while(@x)
	{print ','.shift(@x).','.shift(@y).','.shift(@z);}
print "\n";
}

