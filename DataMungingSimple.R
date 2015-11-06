library("ggplot2")

cheapDiamonds <- subset(diamonds, diamonds$price < 1000)
length(cheapDiamonds)

#plot(cheapDiamonds$carat, cheapDiamonds$price)
#hist(cheapDiamonds$carat, breaks = 50, xlab = "price", ylab = "count")

dataPlot <- ggplot(diamonds, aes(x = price, fill = cut)) + geom_histogram()
print(dataPlot)

#Want to work on color selection for density
#smoothScatter(cheapDiamonds$carat, cheapDiamonds$price, nbin = 2000, colramp = colorRampPalette(c("blue", "red")))
