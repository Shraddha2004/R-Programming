df <- read.csv("C:/Users/Shradha/Desktop/SEM-8/R Lab/Programs/bike_buyers.csv")
#QUESTION-1 : EXPLORATORY DATA ANALYSIS

#column names of the dataset
colnames(df)

# first 6 observations
head(df)

# structure of dataset
str(df)

#minimum & maximum of Income
min(df$Income)
max(df$Income)


#range function gives you the minimum and maximum directly
range_data <- range(df$Income)
range_data[1] #min of Income col of dataset
range_data[2] #max of Income col of dataset

#mean of Income col of dataset
mean(df$Income)

#median of Income col of dataset
median(df$Income)

#Summary : Min, Max, Mean. Median, 1st & 3rd Quartile
summary(df)

#Quartiles of Age col of dataset
quantile(df$Age,0.25) # first quartile
quantile(df$Age,0.75) # third quartile
quantile(df$Age,0.4)  # 4th decile
quantile(df$Age,0.98) # 98th percentile

#Interquartile range of Age col of dataset
IQR(df$Age)

#standard deviation & variance of Income col of dataset
sd(df$Income)
var(df$Income)

#Coefficient of variation
sd(df$Income)/mean(df$Income)

#mode : no function thereby using table() & sort()
mode <- table(df$Age)
sort(mode,decreasing = TRUE)

#QUESTION-2 : PLOTS
#Histogram
hist(df$Income,xlab="Income",col="darkmagenta",main="Histogram of Bike Buyers Income")
#LineChart
linep<- ggplot(df, aes(x = Age, y = Occupation))
linep + geom_line(aes(color = Age))+ggtitle("Line Chart Of Bike Buyers Occupation vs Age")

#boxplot
boxplot(df$Income, main = 'Income Boxplot',col='pink')

#Scatterplot
plot(df$Income,main = "ScatterPlot of Bikers Income",ylab="Income",col="orange",pch=19)

#BarPlot
counts <- table(df$Cars, df$Gender)
barplot(counts, main = 'Bar Plot',
        xlab="Number of Gears",
        legend = rownames(counts))


#QUESTION-3 : Program to find the sum of natural numbers upto n using recursion
recur_sum <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(n + recur_sum(n-1))
  }
}
n <- as.integer(readline(prompt= "Enter a number upto you want sum : "))
sum <- recur_sum(5)
print(paste("The sum is : ", sum))


#QUESTION-4 : Aggregate function
#using iris data set to demonstrate aggregate() function

# Aggregate function in R with mean summary statistics
agg_mean = aggregate(iris[,1:4],by=list(iris$Species),FUN=mean, na.rm=TRUE)
print(agg_mean)

# Aggregate function in R with count
agg_count = aggregate(iris[,1:4],by=list(iris$Species),FUN=length)
print(agg_count)

# Aggregate function in R with sum summary statistics
agg_sum = aggregate(iris[,1:4],by=list(iris$Species),FUN=sum, na.rm=TRUE)
print(agg_sum)

# Aggregate function in R with maximum
agg_max = aggregate(iris[,1:4],by=list(iris$Species),FUN=max, na.rm=TRUE)
print(agg_max)

# Aggregate function in R with minimum
agg_min = aggregate(iris[,1:4],by=list(iris$Species),FUN=min, na.rm=TRUE)
print(agg_min)