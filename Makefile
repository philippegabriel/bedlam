targets=list.tmp.txt xyz3D.tmp.txt xyz3Drotated.tmp.txt xyz3Dtranslated.tmp.txt test.tmp.txt xyzlist.tmp.txt xyzMatrix.tmp.txt xyzlistuniq.tmp.txt xyzListEncoded.tmp.txt
targets+=xyzvectoruniq.tmp.txt xyzvectors.stp gridDef.stp solutionList.stp.csv

all: xyzMatrix.tmp.txt xyzlistuniq.tmp.txt xyzvectoruniq.tmp.txt gridDef.stp xyzvectors.stp xyzListEncoded.tmp.txt

list.tmp.txt: matrix.txt
	perl matrixToList.pl < matrix.txt > list.tmp.txt
xyz3D.tmp.txt: list.tmp.txt
	perl listToXyz3D.pl < list.tmp.txt > xyz3D.tmp.txt
xyz3Drotated.tmp.txt: xyz3D.tmp.txt
	perl xyz3DRotate.pl < xyz3D.tmp.txt > xyz3Drotated.tmp.txt
xyz3Dtranslated.tmp.txt: xyz3Drotated.tmp.txt
	perl xyz3DTranslate.pl < xyz3Drotated.tmp.txt > xyz3Dtranslated.tmp.txt
xyzlist.tmp.txt: xyz3Dtranslated.tmp.txt
	perl xyz3DToxyzList.pl < xyz3Dtranslated.tmp.txt > xyzlist.tmp.txt
xyzlistuniq.tmp.txt: xyzlist.tmp.txt
	cat xyzlist.tmp.txt | sort | uniq > xyzlistuniq.tmp.txt
xyzMatrix.tmp.txt: xyzlist.tmp.txt
	perl xyzListToMatrix.pl < xyzlist.tmp.txt > xyzMatrix.tmp.txt

xyzvectoruniq.tmp.txt: xyzlistuniq.tmp.txt
	perl xyzListToVector.pl < xyzlistuniq.tmp.txt > xyzvectoruniq.tmp.txt
xyzListEncoded.tmp.txt: xyzlistuniq.tmp.txt
	perl xyzListToxyzListEncoded.pl < xyzlistuniq.tmp.txt > xyzListEncoded.tmp.txt

gridDef.stp: gridDef.txt
	perl convertToSTP.pl < gridDef.txt >gridDef.stp
xyzvectors.stp: xyzvectoruniq.tmp.txt
	perl convertToSTP.pl < xyzvectoruniq.tmp.txt >xyzvectors.stp
	
clean:
	rm -f $(targets)
testvector:
	perl listToMatrix.pl < vectors.txt > test.tmp.txt
	diff matrix.txt test.tmp.txt
testsolution:
	perl xyzListEncodedToSolution.pl < xyzListEncoded_solution.stp > solutionList.stp.csv


