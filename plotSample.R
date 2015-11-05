#setwd("C:/Users/Galifrey/Documents/GitHub/regressionModelsInR")
library("ggplot2")
sample <- diamonds[sample(nrow(diamonds), 2000),]
sample = sample[order(sample[,1]),]
types <- factor(sample$cut)
plot(sample$carat, sample$price, pch=as.integer(types), xlab = "carat", ylab ="price")
legend("bottomright", levels(types), pch=1:length(levels(types)))

model <- lm(sample$price ~ sample$carat + I(sample$carat^2))

y <- predict(model, newData = sample)

lines(sample$carat, y, col = "blue" )