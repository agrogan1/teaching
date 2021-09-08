* Demo Stata Script

clear all // clear workspace

cd "/Users/agrogan/Desktop/GitHub/teaching/quantitative-data-analysis/" // change directory

use "mydata.dta" // open the data

drop somethingelse // drop extraneous variable(s)

label variable age "Respondent's Age'" // variable label for age

label variable happy "Happiness Score" // variable label for happy

describe // describe the data

label define happy /// create value label for happy
5 "Very Unhappy" ///
4 "Somewhat Unhappy" ///
3 "Neutral" ///
2 "Somewhat Happy" ///
1 "Very Happy"

label values happy happy // assign value label happy to variable happy 

list in 1/10 // list first 10 lines of data

recode age (100 / max = .) // recode ages > 100

recode happy (-99 = .) // recode -99 to missing

list in 1/10 // list first 10 lines of data
