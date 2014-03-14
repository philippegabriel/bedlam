#!/usr/bin/perl
#
# PhilippeG 08/05/09
#
#
# Note: Following Perl code optimised for readability vs conciseness and performance :)
#		Keep as such.
# input on stdin, output on stdout
#
use Bit::Vector;
while(<>)
	{
#extract the bvbin
#
	if($_ !~ m/bvbin([01]+)/)
		{print $_;next;}
#Convert to decimal value
#
	$binVecLen=length $1;
	$binVec='0'.$1; # to ensure all value are positive
    $vec = Bit::Vector->new_Bin($binVecLen+1,$binVec);
    $dec = $vec->to_Dec();
	$bv='bv'.$dec.'['.$binVecLen.']';
	s/bvbin([01]+)/$bv/;
	print;
	}

