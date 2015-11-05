library("ggplot2")

cheapDiamonds <- subset(diamonds, diamonds$price < 1000)
length(cheapDiamonds)

#plot(cheapDiamonds$carat, cheapDiamonds$price)
hist(cheapDiamonds$carat, breaks = 50, xlab = "price", ylab = "count")

#can't get this to work correctly will fix this on the future
#cheapPlot <- ggplot(diamonds, aes(price, fill = cut)) + geom_freqpoly(alpha = 0.2)
