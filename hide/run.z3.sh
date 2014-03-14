clear
echo ">>>>BEGIN>>>>>"
date
echo ">>>>>>>>>>>>>>>"
/home/phil/projects/z3/bin/z3 -st -m -smt bedlam.stp.smt > solution.z3.txt
echo ">>>>>>>>>>>>>>>"
date
echo ">>>>>END>>>>>>>"

