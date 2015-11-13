library("ggplot2")

cheapDiamonds <- subset(diamonds, diamonds$price < 1000)
length(cheapDiamonds)

#plot(cheapDiamonds$carat, cheapDiamonds$price)
#hist(cheapDiamonds$carat, breaks = 50, xlab = "price", ylab = "count")

#dataPlot <- ggplot(diamonds, aes(x = price, fill = cut)) + geom_histogram(binwidth = 100)
#print(dataPlot)

#Want to work on color selection for density
smoothScatter(cheapDiamonds$carat, cheapDiamonds$price, nbin = 1000, nrpoints = 0, transformation = function(x) x^.5, colramp = colorRampPalette(c("black", "lightblue", "palegreen", "yellow", "orange", "red")))
#types <- factor(cheapDiamonds$cut)
#plot(cheapDiamonds$carat, cheapDiamonds$price, pch=as.integer(types), xlab = "carat", ylab ="price")