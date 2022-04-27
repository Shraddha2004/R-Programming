student_names <- c('Shraddha','Amol','Shreya','Siya','Rudra','Swara','Sai','Sakshi','Prachi','Shruti')
student_percentage <- c(98,54,85,96,67,70,88,53,46,80)

#PieChart
pie(student_percentage,labels = student_percentage, main="Pie Chart : Student Percentage", col=rainbow(length(student_percentage)))
legend("right", student_names,cex = 1, fill = rainbow(length(student_names)))

#BarPlot
colors = c("green","black" ,"orange", "brown","yellow","red","blue","pink","violet","purple")
barplot(student_percentage,main="Barplot : Student %",horiz=TRUE,col=colors,xlab = "Percentage")
legend("topright", student_names, cex = 0.45, fill = colors)

#BoxPlot
data <- data.frame(student_names,student_percentage)
boxplot(data$student_percentage~data$student_names,xlab = "Student Name", ylab ="Student Percentage", main = "BoxPlot")
boxplot(student_percentage, main = "BoxPlot of Student Percentage",ylab="Percentage(%)",col='pink')
#legend("topright", c(student_names,student_percentage),horiz = TRUE, cex = 0.5)

#Histogram
hist(student_percentage,col="darkmagenta",main="Histogram of Student Percentage")

#Linechart
plot(student_percentage,type = "o",main="Line Chart",xlab="student_names",col='blue')

#ScatterPlot
plot(student_percentage,xlab="No of students",ylab="Percentages",main = "ScatterPlot of Student Percentage",col="orange",pch=19)

#3Dpiechart
'''
library(plotrix)
pie3D(student_percentage,labels = "", main="Student Percentage", col=rainbow(length(student_percentage)))
#text(locator(10), student_, , cex = 0.8)
legend("right", student_names,cex = 0.4,fill = rainbow(length(student_names)))
'''