targets=list.txt xyz.txt xyzRotated.txt xyzTranslated.txt  
targets+=xyzlist.txt xyzMatrix.txt xyzlist.sort.txt xyzlist.sort.uniq.txt xyzListEncoded.txt
targets+=xyzvector.uniq.txt xyzvectors.smt2 grid.smt2 
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
xyzvectors.smt2: xyzvector.uniq.txt
	perl convert2SMT2.pl  < $< > $@
grid.smt2: grid.def
	perl convert2SMT2.pl  < $< > $@


xyzListEncoded.txt: xyzlist.sort.uniq.txt
	perl xyzList2xyzListEncoded.pl  < $< > $@

#test targets
xyzMatrix.txt: xyzlist.txt
	perl xyzList2matrix.pl < $< > $@
	
clean:
	rm -f $(targets) $(testtargets) /tmp/*.ok
test.txt: vectors.txt
	perl list2matrix.pl  < $< > $@
	diff matrix.txt test.txt
/tmp/%.txt.ok: %.txt
	diff -q $< ref2/$<
	touch $@


check: $(addprefix /tmp/, $(addsuffix .ok, $(targets) $(testtargets)))
bak:
	diff list.txt  ref/list.txt
	diff xyz.txt ref/xyz3D.txt 
	diff xyzTranslated.txt  ref/xyz3Dtranslated.txt
	diff xyzlist.txt ref/xyzlist.txt
	@echo "###ALL CHECK####"
	diff xyzRotated.sort.uniq.txt ref/xyz3Drotated.sort.uniq.txt
	diff xyzMatrix.txt ref/xyzMatrix.txt
	diff xyzlist.uniq.txt ref/xyzlist.uniq.txt
	diff xyzListEncoded.txt ref/xyzListEncoded.txt
	diff xyzvector.uniq.txt ref/xyzvector.uniq.txt

 






