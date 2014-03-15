#!/usr/bin/perl

#Generate the pieces in all possible rotations
#Note, because of symmetry many rotations are duplicated
#
#q=90, sin(90)=1, cos(90)=0	q=180 cos(180)=-1 sin(180)=0	q=270 cos(270)=0 sin(270)=-1
#xrot: 	x'= x; y'=-z; z'= y	xrot:	x'= x;y'=-y;z'=-z	xrot:	x'= x;y'= z;z'=-y
#yrot:	x'= z; y'= y; z'=-x	yrot:	x'=-x;y'= y;z'=-z	yrot:	x'=-z;y'= y;z'= x
#zrot:	x'=-y; y'= x; z'= z	zrot:	x'=-x;y'=-y;z'= z	zrot:	x'= y;y'=-x;z'= z
use Switch;
use strict;
sub Rotate
{my $p=shift;my $rot=shift;my $tx=shift;my $ty=shift;my $tz=shift;
switch ($p) {
	case "x" {switch ($rot) {
			case 0	 {return ($tx,$tz,$ty);}
			case 90	 {return ($tx,-$tz,$ty);}
			case 180 {return ($tx,-$ty,-$tz);}
			case 270 {return ($tx,$tz,-$ty);}
			}}
	case "y" {switch ($rot) {
			case 0	 {return ($tz,$ty,$tx);}
			case 90	 {return ($tz,$ty,-$tx);}
			case 180 {return (-$tx,$ty,-$tz);}
			case 270 {return (-$tz,$ty,$tx);}
			}}
	case "z" {switch ($rot) {
			case 0	 {return ($tz,$ty,$tx);}
			case 90	 {return (-$ty,$tx,$tz);}
			case 180 {return (-$tx,-$ty,$tz);}
			case 270 {return ($ty,-$tx,$tz);}
			}}
	}
}
while(<>)
{
chomp;
my @input=split(/,/, $_);
my $name=shift(@input);
my @tokens = map { ord($_)-ord('0') } @input;
@tokens = @input;
my @tokensTmp=@tokens;

foreach my $i (0,90,180,270){
	foreach my $j (0,90,180,270){
		foreach my $k (0,90,180,270){
			@tokens=@tokensTmp;
			print "\n".$name;
			while(@tokens)
				{printf(",%d,%d,%d", Rotate('x',$i,(Rotate('y',$j,(Rotate('z',$k,shift(@tokens),shift(@tokens),shift(@tokens)))))));}
		}
	}
}
print "\n";
}




