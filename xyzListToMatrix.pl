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
$string0='';
$string1='';
$string2='';
$string3='';
@tokens=split(/,/, $_);
#extract name
$name=shift(@tokens);
while(@tokens)
	{
	for(1..4){$string0.=shift(@tokens);}
	for(1..4){$string1.=shift(@tokens);}
	for(1..4){$string2.=shift(@tokens);}
	for(1..4){$string3.=shift(@tokens);}
	if(@tokens)
		{
		$string0.="\t";
		$string1.="\t";
		$string2.="\t";
		$string3.="\t";
		}
	}
print $name."\n".$string0."\n".$string1."\n".$string2."\n".$string3."\n"."\n";
}

