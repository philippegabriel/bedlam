(benchmark test
:status sat
:category { crafted }
:logic QF_BV
:formula
;(let (?vec0  (bvbin1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
;(let (?vec1  (bvbin1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110))
;(let (?vec2  (bvbin1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110))
(let (?vec0  (bv1267650600228229401496703205375[100]))
(let (?vec1  (bv1267650600228229401496703205374[100]))
(let (?vec2  (bv1267650600228229401496703205374[100]))
(= ?vec0 (bvor ?vec1 ?vec2))
)))
);benchmark