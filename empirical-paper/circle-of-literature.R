plot.new()

plot(5, 5,
     pch = 19,
     col = "white",
     xlim = c(0,10),
     ylim = c(0,10),
     main = "The 'Circle' of a Literature Review",
     xlab = "",
     ylab = "",
     xaxt = 'n',
     yaxt = 'n')

symbols(5, 5,
        circles = 2,
        inches = FALSE,
        bg = "grey",
        add = TRUE)

text(5, 4, "All the literature on a topic",
     adj = 0,
     col = "black")

symbols(5, 5, 
        circles =.5,
        inches = FALSE,
        bg = "gold",
        add = TRUE)

text(5,5, "The literature you review",
     adj = 0,
     col = "blue")

