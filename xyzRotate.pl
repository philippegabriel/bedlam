#!/usr/bin/perl

#Generate the pieces in all possible rotations
#Note, because of symmetry many rotations are duplicated
#
#q=90, sin(90)=1, cos(90)=0	q=180 cos(180)=-1 sin(180)=0	q=270 cos(270)=0 sin(270)=-1
#xrot: 	x'= x; y'=-z; z'= y	xrot:	x'= x;y'=-y;z'=-z	xrot:	x'= x;y'= z;z'=-y
#yrot:	x'= z; y'= y; z'=-x	yrot:	x'=-x;y'= y;z'=-z	yrot:	x'=-z;y'= y;z'= x
#zrot:	x'=-y; y'= x; z'= z	zrot:	x'=-x;y'=-y;z'= z	zrot:	x'= y;y'=-x;z'= z

sub RotateX90
{my $tx=shift;my $ty=shift;my $tz=shift;
return ($tx,-$tz,$ty);}
sub RotateX180
{my $tx=shift;my $ty=shift;my $tz=shift;
return ($tx,-$ty,-$tz);}
sub RotateX270
{my $tx=shift;my $ty=shift;my $tz=shift;
return ($tx,$tz,-$ty);}
sub RotateY90
{my $tx=shift;my $ty=shift;my $tz=shift;
return ($tz,$ty,-$tx);}
sub RotateY180
{my $tx=shift;my $ty=shift;my $tz=shift;
return (-$tx,$ty,-$tz);}
sub RotateY270
{my $tx=shift;my $ty=shift;my $tz=shift;
return (-$tz,$ty,$tx);}
sub RotateZ90
{my $tx=shift;my $ty=shift;my $tz=shift;
return (-$ty,$tx,$tz);}
sub RotateZ180
{my $tx=shift;my $ty=shift;my $tz=shift;
return (-$tx,-$ty,$tz);}
sub RotateZ270
{my $tx=shift;my $ty=shift;my $tz=shift;
return ($ty,-$tx,$tz);}


while(<>)
{
chomp;
@input=split(/,/, $_);
$name=shift(@input);
@tokens = map { ord($_)-ord('0') } @input;
@tokens = @input;
@tokensTmp=@tokens;

print      $name;#000Y000Z000';
while(@tokens)
	{printf(",%d,%d,%d", shift(@tokens),shift(@tokens),shift(@tokens));}
@tokens=@tokensTmp;
print "\n".$name;#000Y000Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(shift(@tokens),shift(@tokens),shift(@tokens)));}
@tokens=@tokensTmp;
print "\n".$name;#000Y000Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(shift(@tokens),shift(@tokens),shift(@tokens)));}
@tokens=@tokensTmp;
print "\n".$name;#000Y000Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(shift(@tokens),shift(@tokens),shift(@tokens)));}
@tokens=@tokensTmp;
print "\n".$name;#000Y090Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY90(shift(@tokens),shift(@tokens),shift(@tokens)));}
@tokens=@tokensTmp;
print "\n".$name;#000Y090Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY90(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#000Y090Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY90(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#000Y090Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY90(shift(@tokens),shift(@tokens),shift(@tokens))));}

@tokens=@tokensTmp;
print "\n".$name;#000Y180Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY180(shift(@tokens),shift(@tokens),shift(@tokens)));}
@tokens=@tokensTmp;
print "\n".$name;#000Y180Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY180(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#000Y180Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY180(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#000Y180Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY180(shift(@tokens),shift(@tokens),shift(@tokens))));}

@tokens=@tokensTmp;
print "\n".$name;#000Y270Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY270(shift(@tokens),shift(@tokens),shift(@tokens)));}
@tokens=@tokensTmp;
print "\n".$name;#000Y270Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY270(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#000Y270Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY270(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#000Y270Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY270(shift(@tokens),shift(@tokens),shift(@tokens))));}
###############
@tokens=@tokensTmp;
print "\n".$name;#090Y000Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateX90(shift(@tokens),shift(@tokens),shift(@tokens)));}
@tokens=@tokensTmp;
print "\n".$name;#090Y000Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y000Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y000Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y090Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY90(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y090Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY90(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y090Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY90(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y090Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY90(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y180Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY180(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y180Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY180(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y180Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY180(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y180Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY180(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y270Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY270(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y270Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY270(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y270Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY270(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#090Y270Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY270(RotateX90(shift(@tokens),shift(@tokens),shift(@tokens)))));}
###############
@tokens=@tokensTmp;
print "\n".$name;#180Y000Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateX180(shift(@tokens),shift(@tokens),shift(@tokens)));}
@tokens=@tokensTmp;
print "\n".$name;#180Y000Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y000Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y000Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y090Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY90(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y090Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY90(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y090Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY90(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y090Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY90(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y180Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY180(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y180Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY180(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y180Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY180(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y180Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY180(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y270Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY270(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y270Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY270(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y270Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY270(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#180Y270Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY270(RotateX180(shift(@tokens),shift(@tokens),shift(@tokens)))));}
###############
@tokens=@tokensTmp;
print "\n".$name;#270Y000Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateX270(shift(@tokens),shift(@tokens),shift(@tokens)));}
@tokens=@tokensTmp;
print "\n".$name;#2700Y000Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#2700Y000Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y000Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y090Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY90(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y090Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY90(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y090Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY90(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y090Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY90(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y180Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY180(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y180Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY180(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y180Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY180(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y180Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY180(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y270Z000';
while(@tokens)
	{printf(",%d,%d,%d", RotateY270(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y270Z090';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ90(RotateY270(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y270Z0180';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ180(RotateY270(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens)))));}
@tokens=@tokensTmp;
print "\n".$name;#270Y270Z0270';
while(@tokens)
	{printf(",%d,%d,%d", RotateZ270(RotateY270(RotateX270(shift(@tokens),shift(@tokens),shift(@tokens)))));}


print "\n";
}




