* the difference between nonsignificant and nonsignificant can be significant


cd "/Users/agrogan/Desktop/GitHub/teaching/the-difference-between-ns-and-ns-can-be-significant/"

clear all // clear the workspace

set obs 1000 // 1000 observations

set seed 2779 // set random seed

generate x1 = rnormal(1, 30) // x1 has mean of 1; sd of 30

generate x2 = rnormal(1.5, 30) // x2 has mean of 1.5; sd of 30

summarize // descriptive statistics

ttest x1 == 0 // x1 is not significantly different from 0

ttest x2 == 0 // x2 is not significantly different from 0

ttest x1 == x2 // however, x1 is significantly different from x2

set scheme s1color // better graph scheme

twoway ///
(histogram x1, fcolor(blue%50) lcolor(black)) ///
(histogram x2, fcolor(gold%50) lcolor(black)), ///
title("The Difference Between Nonsignificant and Nonsignificant") ///
subtitle("Can Be Significant") ///
text(.014 1 "←️ The blue and gold lines represent" /// 
"the mean of each group.", ///
place(e) size(small)) ///
xline(1, lcolor(blue)) ///
xline(1.5, lcolor(gold)) ///
note("Neither x1 nor x2 is statistically different from 0." ///
"However, their difference is statistically different from 0.")

graph export "Graph.png", as(png) name("Graph") width(1000) replace
