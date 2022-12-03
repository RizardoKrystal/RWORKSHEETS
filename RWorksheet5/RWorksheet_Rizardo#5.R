#Krystal Rose M. Rizardo

# CS 101 WORKSHEET 5

#1 A. Plot the data using a bar graph. Write the codes and copy the result.
ggplot()
library(ggplot2)
data_ff <- data.frame("course"=c("1st", "2nd", "3rd", "4th"), "school_year"= c(80, 75, 70, 60))
ggplot(data_ff) + geom_col(aes(course, school_year))

school_year <- c(80, 75, 70, 60)
course <- c("1st", "2nd", "3rd", "4th")

#1 B.Using the same table, label the barchart with
#Title = ” Enrollment of BS Computer Science
#horizontal axis = “Curriculum Year” and
#vertical axis = “number of students”

br <- barplot(school_year, main= "Enrollment of BS Computer Science",
              xlab = "Curriculum Year", ylab = "number of
              students")

#2 The monthly income of De Jesus family was spent on the following:
#60% on Food, 10% on electricity, 5% for savings, and
#25% for other miscellaneous expenses.

#2 A. Create a table for the above scenario.
#Write the codes and its result.

f <- 60
electric <- 10
savings <- 5
miscllaneous <- 25

dejesus_expenses <- data.frame(f, electric, savings,miscllaneous)
dejesus_expenses

#Result 
#   f electric savings miscllaneous
#  60       10       5           25

#2 B. Plot the data using a pie chart. Add labels, colors and legend.
#Write the codes and its result.
dejesus_exp <- c(60, 10, 5, 25)
pie(dejesus_exp, main = "Expenses", col = rainbow(length(dejesus_exp)),
    labels = c("f", "electric", "savings", "miscllaneous"))

expense_label <- round(dejesus_exp/sum(dejesus_exp) * 100, 1)
expense_label <- paste(expense_label, "%", sep = "")

pie(dejesus_exp, main = "Expenses", col = rainbow(length(dejesus_exp)),
    labels = expense_label, cex=0.8)
legend(1, c("food", "electricity", "savings", "misc"),
       cex = 0.8, fill = rainbow(length(dejesus_exp)))


#3 Open the mtcars dataset.

data("mtcars")

#3 A. Create a simple histogram specifically for mpg (miles per gallon) variable.
#Use $ to select the mpg only. Write the codes and its result.

mt  <- mtcars$mpg

hist(mt, main = "Histogram for mpg")


#B. Colored histogram with different number of bins.
hist(mt, breaks=12, col="green")

#C. Add a Normal Curve

h<-hist(mt, breaks=10, col="green", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(mt),max(mt),length=40)
yfit<-dnorm(xfit,mean=mean(mt),sd=sd(mt))
yfit <- yfit*diff(h$mids[1:2])*length(mt)
lines(xfit, yfit, col="red", lwd=2)

#4. Open the iris dataset. Create a subset for each species.

data("iris")

#4. A Write the codes and its result.



data_iris <- data.frame(iris)
data_iris
setosa_data <- subset(data_iris, Species == 'setosa')
setosa_data

data_irisb <- data.frame(iris)
data_irisb
versi_data <- subset(data_irisb, Species == 'versicolor')
versi_data

data_irisc <- data.frame(iris)
data_irisc
vergi_data <-subset(data_irisc, Species == 'virginica')
vergi_data

#4 B. Get the mean for every characteristics of each species using colMeans().
#Write the codes and its result.

setosa <- colMeans(setosa_data[sapply(setosa_data,is.numeric)])
setosa

#Result 
#Sepal.Length  Sepal.Width   Petal.Length   Petal.Width 
#       5.006        3.428        1.462        0.246 

versicolor <- colMeans(versi_data[sapply(versi_data,is.numeric)])
versicolor

#Result
# Sepal.Length  Sepal.Width   Petal.Length  Petal.Width 
#   5.936        2.770        4.260        1.326 

virginica <- colMeans(vergi_data[sapply(vergi_data,is.numeric)])
virginica

#Result 
# Sepal.Length  Sepal.Width  Petal.Length  Petal.Width 
#   6.588        2.974        5.552        2.026 

#C. Combine all species by using rbind()
#The table should be look like this:

combine <- rbind(setosa, versicolor, virginica)
combine

#D. From the data in 4-c: Create the barplot().
#Write the codes and its result.
#The barplot should be like this.

barplot(combine, beside =TRUE, main = "Iris Mean",
        xlab = "Characterisics", ylab = "Mean Scores",
        col = c("green", "orange", "yellow"))
