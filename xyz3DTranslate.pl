#!/usr/bin/perl

while(<>)
{
chomp;
@minima=split(/,/, $_);
#extract title
$title=shift(@minima);
#print $title;print "\n";
@points=@minima;

#Init translated array
@translated=$title;
$tx=0;$ty=0;$tz=0;

#find minima
	while(@minima)
	{
	$x=shift(@minima);$y=shift(@minima);$z=shift(@minima);
	$tx= ($tx >= $x) ? $x : $tx;
	$ty= ($ty >= $y) ? $y : $ty;
	$tz= ($tz >= $z) ? $z : $tz;
	}
#translate points
print $title;
	while(@points)
	{
	$x=shift(@points);$y=shift(@points);$z=shift(@points);
	print ',',$x-$tx;
	print ',',$y-$ty;
	print ',',$z-$tz;
	}
print "\n";
}
