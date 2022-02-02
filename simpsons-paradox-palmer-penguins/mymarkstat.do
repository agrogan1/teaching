* render with markstat

clear all

cd "/Users/agrogan/Desktop/GitHub/teaching/simpsons-paradox-palmer-penguins"

doedit "simpsons-paradox-palmer-penguins.stmd"

markstat using "simpsons-paradox-palmer-penguins.stmd", mathjax // HTML

graph close _all

markstat using "simpsons-paradox-palmer-penguins.stmd", pdf // PDF

graph close _all




