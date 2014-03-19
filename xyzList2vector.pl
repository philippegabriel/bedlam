#!/usr/bin/perl
#
# PhilippeG 08/05/09
#
#
# Note: Following Perl code optimised for readability vs conciseness and performance :)
#		Keep as such.
# input on stdin, output on stdout
#
#Convert from a List to an smt2 fun
$prevName='';
while(<>)
{
chomp;
if($_ eq ''){next;}
($name,$vector)=split(/,/, $_);
if($prevName eq $name)
	{$i++;}
else
	{if($prevName ne '')
#if we moved to the next set of vector, emit the mux function
		{print ';Pick '.$prevName."\n";
		print '(define-fun '.$prevName." ((x (_ BitVec 5))) (_ BitVec 100)\n";
		foreach(0..$i)
			{printf("(ite (= x (_ bv%d 5)) %s_%d\n",$_,$prevName,$_);}
		foreach(0..$i)
			{print ')';}
		print ")\n";
#emit the range of the mux function
		print '(assert (bvule '.$prevName.'xyz (_ bv'.$i." 5 )))\n";
		}
	$i=0;
	}

#emit the bin vector
print '(define-fun '.$name.'_'.$i.' () (_ BitVec 100) #b'.$vector.")\n";
$prevName=$name;
}

