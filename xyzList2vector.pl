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

#
#emit define-fun for vector 
#
sub emitVector{
my ($name,$vector,$rank)=@_;
$padding=100-length($vector);
print '(define-fun '.$name.'_'.$rank.' () (_ BitVec 100) #b'.$vector.'0' x $padding.")\n";
}
#
#emit mux function associated with vector
#
sub emitMuxFun{
my ($name,$len)=@_;
#if we moved to the next set of vector, emit the mux function
print ';Pick '.$name."\n";
print '(define-fun '.$name." ((x (_ BitVec 5))) (_ BitVec 100)\n";
foreach(0..$len)
	{printf("(ite (= x (_ bv%d 5)) %s_%d\n",$_,$name,$_);}
print 'empty';
foreach(0..$len)
	{print ')';}	#close the ite block
print ")\n";		#close the define-fun	
#emit the range of the mux function
print '(assert (bvule '.$name.'xyz (_ bv'.$len." 5 )))\n";
}
#
#main
#
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
		{emitMuxFun($prevName,$i);}
	$i=0;
	}
emitVector($name,$vector,$i);
$prevName=$name;
}
emitMuxFun($prevName,$i);


