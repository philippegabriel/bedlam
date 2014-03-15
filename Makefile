targets=list.txt xyz3D.txt xyz3Drotated.txt xyz3Dtranslated.txt  
targets+=xyzlist.txt xyzMatrix.txt xyzlist.uniq.txt xyzListEncoded.txt
targets+=xyzvector.uniq.txt xyzvectors.stp grid.stp 
testtargets=xyz3Drotated.sort.txt xyz3Drotated.sort.uniq.txt
all: $(targets) $(testtargets)

%.sort.txt: %.txt
	sort $< > $@
%.uniq.txt: %.txt
	cat $< | uniq > $@
list.txt: matrix.def
	perl matrixToList.pl < matrix.def > list.txt
xyz3D.txt: list.txt
	perl listToXyz3D.pl < list.txt > xyz3D.txt
xyz3Drotated.txt: xyz3D.txt
	perl xyz3DRotate.pl < xyz3D.txt > xyz3Drotated.txt
xyz3Dtranslated.txt: xyz3Drotated.txt
	perl xyz3DTranslate.pl < xyz3Drotated.txt > xyz3Dtranslated.txt
xyzlist.txt: xyz3Dtranslated.txt
	perl xyz3DToxyzList.pl < xyz3Dtranslated.txt > xyzlist.txt
xyzlist.uniq.txt: xyzlist.txt
	cat xyzlist.txt | sort | uniq > xyzlist.uniq.txt
xyzMatrix.txt: xyzlist.txt
	perl xyzListToMatrix.pl < xyzlist.txt > xyzMatrix.txt

xyzvector.uniq.txt: xyzlist.uniq.txt
	perl xyzListToVector.pl < xyzlist.uniq.txt > xyzvector.uniq.txt
xyzListEncoded.txt: xyzlist.uniq.txt
	perl xyzListToxyzListEncoded.pl < xyzlist.uniq.txt > xyzListEncoded.txt
#test targets
xyz3Drotated.sort.txt: xyz3Drotated.txt
	sort xyz3Drotated.txt > xyz3Drotated.sort.txt
xyz3Drotated.sort.uniq.txt: xyz3Drotated.sort.txt
	cat xyz3Drotated.sort.txt | uniq > xyz3Drotated.sort.uniq.txt

grid.stp: grid.def
	perl convertToSTP.pl < grid.def >grid.stp
xyzvectors.stp: xyzvector.uniq.txt
	perl convertToSTP.pl < xyzvector.uniq.txt >xyzvectors.stp
	
clean:
	rm -f $(targets) $(testtargets)
test.txt: vectors.txt
	perl listToMatrix.pl < vectors.txt > test.txt
	diff matrix.txt test.txt
solutionList.stp.csv: xyzListEncoded_solution.stp
	perl xyzListEncodedToSolution.pl < xyzListEncoded_solution.stp > solutionList.stp.csv
check:
	diff list.txt  ref/list.txt
	diff xyz3D.txt ref/xyz3D.txt 
	diff xyz3Dtranslated.txt  ref/xyz3Dtranslated.txt
	diff xyzlist.txt ref/xyzlist.txt
	diff xyzvectors.stp ref/xyzvectors.stp.txt
	diff gridDef.stp ref/gridDef.stp.txt 
	@echo "###ALL CHECK####"
test:
	diff xyz3Drotated.sort.uniq.txt ref/xyz3Drotated.sort.uniq.txt
	diff xyzMatrix.txt ref/xyzMatrix.txt
	diff xyzlist.uniq.txt ref/xyzlist.uniq.txt
	diff xyzListEncoded.txt ref/xyzListEncoded.txt
	diff xyzvector.uniq.txt ref/xyzvector.uniq.txt






