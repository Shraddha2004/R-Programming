# Load ggplot2
library(ggplot2)

# load the iris data set and renamed it data
data <- iris

#Piechart
#Barplot
#Boxplot
box <- ggplot(data=iris, aes(x=Species, y=Sepal.Length))
box + geom_boxplot(aes(fill=Species)) + 
  ylab("Sepal Length") + ggtitle("Iris Boxplot") +
  stat_summary(fun.y=mean, geom="point", shape=5, size=4) 

#Histogram
#Linechart
#Scatterplot
#Frequency Polygon