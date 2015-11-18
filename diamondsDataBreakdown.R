library("ggplot2")
diamondsSample <- diamonds[sample(nrow(diamonds), 2000),]
#dim(diamondsSample)
#names(diamondsSample)
#str(diamonds)
#diamonds[1:5,]
#summary(diamondsSample)
for (i in 1:length(diamonds))
{
if(is.numeric(diamondsSample[,i])){
   png(paste(colnames(diamondsSample[i]), "density.png", sep="-"))
   plot(density(diamondsSample[,i]), main=paste("Density plot of ", colnames(diamondsSample[i])) , xlab=colnames(diamondsSample[i]))
   graphics.off()
}
}
png("pie.png")
pie(table(diamondsSample$cut))
graphics.off()
png("boxPlot.png")
boxplot(diamondsSample$price~cut, data=diamondsSample)
graphics.off()
png("diamondsDataScatter.png")
with(diamondsSample, plot(diamondsSample$carat, diamondsSample$price, col=diamondsSample$cut))
graphics.off()
png("diamondsDataPairs.png")
pairs(diamondsSample)
graphics.off()
