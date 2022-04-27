# load the mtcars data set and renamed it data
data <- mtcars
head(data)
#simple regression
data$am <- as.factor(data$am)
levels(data$am) <- c("AT", "MT")
relation <- lm(mpg~am,data)
summary(relation)
#multiple regression
multiple_regression <- lm(mpg ~ hp + am + wt, data)
summary(multiple_regression)
#correlation
d<-mtcars[c(-11,-10, -9, -8)]
cr<-cor(d)
library(corrplot)
corrplot(cr,method="pie")
