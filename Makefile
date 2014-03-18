targets=list.txt xyz.txt xyzRotated.txt xyzTranslated.txt  
targets+=xyzlist.txt xyzMatrix.txt xyzlist.sort.txt xyzlist.sort.uniq.txt xyzListEncoded.txt
targets+=xyzvector.uniq.txt xyzvectors.stp grid.stp 
testtargets=xyzRotated.sort.txt xyzRotated.sort.uniq.txt
all: $(targets) $(testtargets)

%.sort.txt: %.txt
	sort $< > $@
%.uniq.txt: %.txt
	cat $< | uniq > $@
list.txt: matrix.def
	perl matrix2list.pl < $< > $@
xyz.txt: list.txt
	perl list2xyz.pl < $< > $@
xyzRotated.txt: xyz.txt
	perl xyzRotate.pl < $< > $@
xyzTranslated.txt: xyzRotated.txt
	perl xyzTranslate.pl < $< > $@
xyzlist.txt: xyzTranslated.txt
	perl xyz2xyzList.pl < $< > $@
xyzvector.uniq.txt: xyzlist.sort.uniq.txt
	perl xyzList2vector.pl  < $< > $@
xyzListEncoded.txt: xyzlist.sort.uniq.txt
	perl xyzList2xyzListEncoded.pl  < $< > $@
#List of vectors to include in the stp files
xyzvectors.stp: xyzvector.uniq.txt
	perl convert2STP.pl  < $< > $@
grid.stp: grid.def
	perl convert2STP.pl  < $< > $@
#test targets
xyzMatrix.txt: xyzlist.txt
	perl xyzList2matrix.pl < $< > $@
	
clean:
	rm -f $(targets) $(testtargets) /tmp/*.ok
test.txt: vectors.txt
	perl list2matrix.pl  < $< > $@
	diff matrix.txt test.txt
solutionList.stp.csv: xyzListEncoded_solution.stp
	perl xyzListEncoded2solution.pl  < $< > $@
/tmp/%.txt.ok: %.txt
	diff -q $< ref2/$<
	touch $@

/tmp/%.stp.ok: %.stp
	diff -q $< ref2/$<
	touch $@

check: $(addprefix /tmp/, $(addsuffix .ok, $(targets) $(testtargets)))
bak:
	diff list.txt  ref/list.txt
	diff xyz.txt ref/xyz3D.txt 
	diff xyzTranslated.txt  ref/xyz3Dtranslated.txt
	diff xyzlist.txt ref/xyzlist.txt
	diff xyzvectors.stp ref/xyzvectors.stp.txt
	diff gridDef.stp ref/gridDef.stp.txt 
	@echo "###ALL CHECK####"
	diff xyzRotated.sort.uniq.txt ref/xyz3Drotated.sort.uniq.txt
	diff xyzMatrix.txt ref/xyzMatrix.txt
	diff xyzlist.uniq.txt ref/xyzlist.uniq.txt
	diff xyzListEncoded.txt ref/xyzListEncoded.txt
	diff xyzvector.uniq.txt ref/xyzvector.uniq.txt
 






