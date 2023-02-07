* Multiple Identities

* setup

clear all

cd "/Users/agrogan/Desktop/GitHub/teaching/multiple-identities"

set seed 1234 // random seed

* simulate data

set obs 100 // sample size

generate id = _n // id

generate A = rbinomial(1, .5) // random identity

generate B = rbinomial(1, .5) // random identity

generate C = rbinomial(1, .5) // random identity

generate D = rbinomial(1, .5) // random identity

generate E = rbinomial(1, .5) // random identity

save "multiple-identities.dta", replace

* graphs

graph bar A B C D E 

graph export "mybar1.png", replace

graph bar A B C D E, ///
title("Percentage With Each Identity") ///
legend(order(1 "A" 2 "B" 3 "C" 4 "D" 5 "E")) ///
scheme(s1color)

graph export "mybar2.png", replace

* groups

egen pattern = group(A B C D E), label

tabulate pattern




