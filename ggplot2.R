# Load ggplot2
library(ggplot2)

# load the iris data set and renamed it data
data <- iris

#Pie chart
df <- as.data.frame(table(iris$Species))
colnames(df) <- c("Species", "freq")
pie <- ggplot(df, aes(x = "", y=freq, fill =
                        factor(Species)))+geom_bar(width = 1, stat =
                                                   "identity")+theme(axis.line = element_blank(), plot.title =
                                                                       element_text(hjust=0.5)) +labs(fill="Species", x=NULL, y=NULL,
                                                                                                      title="Pie Chart of Species")
pie + coord_polar(theta = "y")

#Barplot
ggplot(data) +aes(x = Species) +geom_bar(aes(fill=Species))+ggtitle("Species Barplot")
#cutomization in barplot
library(reshape2)
iris2 <- melt(iris, id.vars="Species")
iris2[1:3,]
bar2 <- ggplot(iris2, aes(x=Species, y=value, fill=variable))
bar2 + geom_bar(stat="identity", position="dodge") + ggtitle("Species Barplot with Customization") +
  scale_fill_manual(values=c("orange", "blue", "darkgreen", "purple"),
                    name="Iris\nMeasurements",
                    breaks=c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"),
                    labels=c("Sepal Length", "Sepal Width", "Petal Length", "Petal Width"))

#Boxplot
box <- ggplot(data, aes(x=Species, y=Sepal.Length))
box + geom_boxplot(aes(fill=Species)) + 
  ylab("Sepal Length") + ggtitle("Iris Boxplot") +
  stat_summary(fun.y=mean, geom="point", shape=5, size=4) 

#Histogram
histogram <- ggplot(data, aes(x=Sepal.Width))
histogram + geom_histogram(binwidth=0.2, color="black", aes(fill=Species)) + 
  xlab("Sepal Width") +  ylab("Frequency") + ggtitle("Histogram of Sepal Width")
#Width of each bin is = (max value of data – min value of data) / total number of bins

#Linechart
ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_line(linetype=2,color="orange")+geom_point(color="red") + ggtitle("Iris Line Chart")

#Scatterplot
scatter <- ggplot(data, aes(x = Sepal.Length, y = Sepal.Width)) 
scatter + geom_point(aes(color=Species, shape=Species)) +
  xlab("Sepal Length") +  ylab("Sepal Width") +
  ggtitle("Scatterplot : Sepal Length-Width")

#Frequency Polygon
ggplot(data, aes(x = Sepal.Length)) + geom_freqpoly(bins=15,color = "blue",size=1)+ggtitle("Frequency Polygon of Sepal Width")
