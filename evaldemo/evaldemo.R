# demo of eval reporting in R

# make up data

Q1 <- c("research", "support center", "normal",
        "normal", "normal")

evaldata <- data.frame(Q1)

save(evaldata, file = "./evaldemo/evaldata.RData")

# clean


# graph

library(ggplot2)

ggplot(evaldata, # data I'm using
       aes(x = Q1,
           fill = Q1)) + # stuff I'm graphing
  geom_bar() # how I'm graphing it





