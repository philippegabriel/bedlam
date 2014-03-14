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

#26 first lines are piece Id & shift
for (1..13)
{
chomp($line = <STDIN>);
($name,$value)=split(/,/,$line);
push @pieceName, $name;
push @shr, $value;
}
#print @pieceName."\n";
#print @shr."\n";

$PieceName=shift(@pieceName);
$value=shift(@shr);
while(<>)
{
chomp;
if($_ eq ''){next;}
#@tokens=();
@tokens=split(/,/, $_);
#extract name
$name = shift(@tokens);
#print 'pn:'.$PieceName."\tName:".$name."\tValue:".$value."\n";
if(!($name eq $PieceName))
	{next;}
#found a match
print $name.':'.$value;
#pad the start by the shift amount
#Note the shift also includes the guard bits
@shiftPadding=();
while($value)
	{
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'X'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'X'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'X'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'0'); --$value or last;
	push(@shiftPadding,'X'); --$value or last;
	push(@shiftPadding,'X'); --$value or last;
	push(@shiftPadding,'X'); --$value or last;
	push(@shiftPadding,'X'); --$value or last;
	push(@shiftPadding,'X'); --$value or last;
	push(@shiftPadding,'X'); --$value or last;
	}
#output values while removing encoding
@finalList=(@shiftPadding,@tokens);
#while(@finalList)
#{print ','.shift(@finalList);}
$cnt=64;
while(1)
	{
	$token= shift(@finalList);
	if($token eq 'X')
		{next;}
	print ','.$token;
	$cnt--;
	if($cnt ==0)
		{last;}
	}
print "\n";
$PieceName=shift(@pieceName);
$value=shift(@shr);
}

#(let (?Blu0RotX000 (bvbin0100011100001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000))
