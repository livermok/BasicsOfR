library("ggplot2")
cheapDiamonds <- subset(diamonds, diamonds$price < 1000)
length(cheapDiamonds)
types <- factor(cheapDiamonds$cut)
fairDiamonds <- subset(diamonds, diamonds$cut == levels(types)[1])
goodDiamonds <- subset(diamonds, diamonds$cut == levels(types)[2])
veryGoodDiamonds <- subset(diamonds, diamonds$cut == levels(types)[3])
premiumDiamonds <- subset(diamonds, diamonds$cut == levels(types)[4])
idealDiamonds <- subset(diamonds, diamonds$cut == levels(types)[5])
#plot(cheapDiamonds$carat, cheapDiamonds$price)
#hist(cheapDiamonds$carat, breaks = 50, xlab = "price", ylab = "count")

#dataPlot <- ggplot(diamonds, aes(x = price, fill = cut)) + geom_histogram(binwidth = 100)
#print(dataPlot)

#Want to work on color selection for density
#smoothScatter(cheapDiamonds$carat, cheapDiamonds$price, nbin = 1000, nrpoints = 0, transformation = function(x) x^0.75, colramp = colorRampPalette(c("white", "lightblue", "palegreen", "yellow", "orange", "red")))
#types <- factor(cheapDiamonds$cut)
#plot(Diamonds$carat, Diamonds$price, pch=as.integer(types), xlab = "carat", ylab ="price")

#plot(diamonds$carat, diamonds$price, pch=as.integer(types), xlab = "carat", ylab ="price")

fairModel <- lm(fairDiamonds$price ~ fairDiamonds$carat)
goodModel <- lm(goodDiamonds$price ~ goodDiamonds$carat)
veryGoodModel <- lm(veryGoodDiamonds$price ~ veryGoodDiamonds$carat)
premiumModel <- lm(premiumDiamonds$price ~ premiumDiamonds$carat)
idealModel <- lm(idealDiamonds$price ~ idealDiamonds$carat)

abline(fairModel, col = "red")
abline(goodModel)
abline(veryGoodModel)
abline(premiumModel)
abline(idealModel)

smallDiamonds <- subset(diamonds, diamonds$carat > 0.25)
smallDiamonds <- subset(smallDiamonds, smallDiamonds$carat < 0.35)
smallDiamonds <- subset(smallDiamonds, smallDiamonds$price < 1100)

smoothScatter(smallDiamonds$carat, smallDiamonds$price, nbin = 1000, nrpoints = 0, transformation = function(x) x^0.75, colramp = colorRampPalette(c("white", "lightblue", "palegreen", "yellow", "orange", "red")))
