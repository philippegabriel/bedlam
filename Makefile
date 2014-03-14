all: xyzMatrix.txt xyzlistuniq.txt xyzvectoruniq.txt gridDef.stp.txt xyzvectors.stp.txt xyzListEncoded.txt

list.txt: matrix.txt
	perl matrixToList.pl < matrix.txt > list.txt
xyz3D.txt: list.txt
	perl listToXyz3D.pl < list.txt > xyz3D.txt
xyz3Drotated.txt: xyz3D.txt
	perl xyz3DRotate.pl < xyz3D.txt > xyz3Drotated.txt
xyz3Dtranslated.txt: xyz3Drotated.txt
	perl xyz3DTranslate.pl < xyz3Drotated.txt > xyz3Dtranslated.txt
xyzlist.txt: xyz3Dtranslated.txt
	perl xyz3DToxyzList.pl < xyz3Dtranslated.txt > xyzlist.txt
xyzlistuniq.txt: xyzlist.txt
	cat xyzlist.txt | sort | uniq > xyzlistuniq.txt
xyzMatrix.txt: xyzlist.txt
	perl xyzListToMatrix.pl < xyzlist.txt > xyzMatrix.txt

xyzvectoruniq.txt: xyzlistuniq.txt
	perl xyzListToVector.pl < xyzlistuniq.txt > xyzvectoruniq.txt
xyzListEncoded.txt: xyzlistuniq.txt
	perl xyzListToxyzListEncoded.pl < xyzlistuniq.txt > xyzListEncoded.txt

gridDef.stp.txt: gridDef.txt
	perl convertToSTP.pl < gridDef.txt >gridDef.stp.txt
xyzvectors.stp.txt: xyzvectoruniq.txt
	perl convertToSTP.pl < xyzvectoruniq.txt >xyzvectors.stp.txt
	
clean:
	rm -f list.txt
	rm -f xyz3D.txt
	rm -f xyz3Drotated.txt  
	rm -f xyz3Dtranslated.txt
	rm -f test.txt
	rm -f xyzlist.txt
	rm -f xyzMatrix.txt
	rm -f xyzlistuniq.txt
	rm -f xyzListEncoded.txt
	rm -f xyzvectoruniq.txt
	rm -f xyzvectors.stp.txt
	rm -f gridDef.stp.txt
	rm -f solutionList.stp.csv

testvector:
	perl listToMatrix.pl < vectors.txt > test.txt
	diff matrix.txt test.txt
testsolution:
	perl xyzListEncodedToSolution.pl < xyzListEncoded_solution.stp.txt > solutionList.stp.csv


