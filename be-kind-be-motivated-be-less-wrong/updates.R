# sort bibliography

library(RefManageR)

mybib <- ReadBib("be-kind-be-motivated-be-less-wrong/be-kind-be-motivated-be-less-wrong.bib")

mybib <- sort(mybib, sorting = "nyt") # sort by name - year - title

WriteBib(mybib, file = "be-kind-be-motivated-be-less-wrong/be-kind-be-motivated-be-less-wrong.bib")

