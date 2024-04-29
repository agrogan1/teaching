clear all

set seed 3846 // set random seed

set obs 1000

matrix input C = ///
(1, .25 \ ///
 .25, 1)

corr2data x m, corr(C)

summarize

correlate

generate e = rnormal(0, 5) // random error term

generate y = m + x + e

regress y x m 

mediate (y) (m) (x, continuous(0 1))
