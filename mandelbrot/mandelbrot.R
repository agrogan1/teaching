library(mandelbrot)

library(viridis)

library(ggplot2)

library(scales)

mb <- mandelbrot(xlim = c(-2, 2), 
                 ylim = c(-2, 2), 
                 resolution = 2000, 
                 iterations = 500)

cols <- mandelbrot_palette(RColorBrewer::brewer.pal(11, 
                                                    "Spectral"), 
                           fold = FALSE)

cols2 <- mandelbrot_palette(gray.colors(11)) # greyscale

cols3 <- mandelbrot_palette(pal_viridis(begin = 0.2, 
                                        end = 0.8,
                                        direction = 1,
                                        option = "plasma")(11))

# mypalette <- RColorBrewer::brewer.pal(9, "PRGn")
# 
# cols <- mandelbrot_palette(mypalette, 
#                            # in_set = "white",
#                            fold = TRUE, 
#                            reps = 2)

# RColorBrewer

png("./mandelbrot/mandelbrot.png")

plot(mb,
     xlim = c(-1, .1),
     ylim = c(-1, 1),
     # transform = "inverse",
     col = cols)

dev.off()

# greyscale

png("./mandelbrot/mandelbrot2.png")

plot(mb,
     xlim = c(-1, .1),
     ylim = c(-1, 1),
     # transform = "inverse",
     col = cols2)

dev.off()

# viridis

png("./mandelbrot/mandelbrot3.png")

plot(mb,
     xlim = c(-1, .1),
     ylim = c(-1, 1),
     # transform = "inverse",
     col = cols3)

dev.off()

# Citation

citation(package = "mandelbrot")

# mydata <- as.data.frame(mb)

# plot(mydata$x,
#      mydata$y,
#      col = mydata$value)

# ggplot(mydata,
#        aes(x = x,
#            y = y)) +
#   scale_color_viridis_c() +
#   # geom_point(aes(color = value)) +
#   geom_raster(aes(fill = value), interpolate = TRUE) +
#   # geom_contour(aes(z = value)) +
#   theme_void()
# 
# ggsave("mandelbrot.png",
#        height = 7,
#        width = 7)
# 

