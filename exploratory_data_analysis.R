# load the iris data set and renamed it data
data <- iris 

# structure of dataset
str(data) 

# first 6 observations
head(data) 

#minimum & maximum of Sepal.Length col of dataset
min(data$Sepal.Length)
max(data$Sepal.Length)

#range function gives you the minimum and maximum directly
range_data <- range(data$Sepal.Length)
range_data[1] #min of Sepal.Length col of dataset
range_data[2] #max of Sepal.Length col of dataset

#mean of Sepal.Length col of dataset
mean(data$Sepal.Length)

#median of Sepal.Length col of dataset
median(data$Sepal.Length)

#Quartiles of Sepal.Length col of dataset
quantile(data$Sepal.Length,0.25) # first quartile
quantile(data$Sepal.Length,0.75) # third quartile
quantile(data$Sepal.Length,0.4)  # 4th decile
quantile(data$Sepal.Length,0.98) # 98th percentile

#Interquartile range of Sepal.Length col of dataset
IQR(data$Sepal.Length)

#standard deviation & variance of Sepal.Length col of dataset
sd(data$Sepal.Length)
var(data$Sepal.Length)

#Coefficient of variation
sd(data$Sepal.Length)/mean(data$Sepal.Length)

#Summary : Min, Max, Mean. Median, 1st & 3rd Quartile
summary(data)

#descriptive statistics by group
by(data,data$Species,summary)

#mode : no function thereby using table() & sort()
mode <- table(data$Sepal.Length)
sort(mode,decreasing = TRUE)