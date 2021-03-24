* make a nice forest plot in Stata

use "metadata.dta", clear // use the data

destring(id), generate(id_NUMERIC) // numeric version of id

generate placeholder = -2 // placeholder for labels

generate year_STRING = string(year) // string version of year

generate authoryear = author + " " + year_STRING // concatenate author and year 

* make the forest plot 
* adding the horizontal option TO EACH GRAPH seems to work well

twoway /// twoway graph
(bar d id_NUMERIC, horizontal) /// bars with Cohen's d by id
(rcap LCI UCI id_NUMERIC, lcolor("red") horizontal) /// error bars
(scatter id_NUMERIC placeholder, /// scatter doesn't need horizontal option
msymbol(none) mlabel(authoryear)), /// no symbol; label with authoryear
scheme(lean1) /// nice graph scheme
title("Meta-Analytic Results") ///
xtitle("Cohen's d") ///
ytitle("") // blank ytitle

graph export "forest-plot.png", replace


