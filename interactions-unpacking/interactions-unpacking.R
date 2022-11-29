#' ---
#' title: "A Quick Attempt To Illustrate The Idea of 'Unpacking' Interactions"
#' output: 
#'   html_document:
#'     highlight: haddock
#' author: Andy Grogan-Kaylor
#' ---

set.seed(1234) # random seed

N <- 1000 # sample size

x <- round(rnorm(N, 100, 10), 2) # random x

y <- round(rnorm(N, 100, 10), 2) # random x

plot(x, y, 
     col = "white",
     main = "We cannot just consider the interaction. \nWe also need to consider the intercept and slopes.",
     xlim = c(0, 100),
     ylim = c(0, 100))

abline(25, .5, col = "red")

text(70, 50, "reference line", col = "red")

abline(25, .25, col = "blue")

text(60, 30, 
     "flatter slope; similar intercept",
     col = "blue")

abline(50, .25, col = "forestgreen")

text(30, 70, 
     "flatter slope; higher intercept",
     col = "forestgreen")


