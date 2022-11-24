#WORKSHEET 4


#1. The table below shows the data about shoe size and height. Create a data frame..


one_shoe <- c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5,
               9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5)
first_height <- c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0,
            72.0, 64.0, 74.5, 67.0, 71.0, 71.0)
gender_one <- c('f', 'f', 'f', 'f', 'm', 'f', 'f', 'f', 'm',
            'f', 'm', 'f', 'm', 'm')
two_shoe <- c(13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5,
                8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0)
second_height <- c(77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 
             67.0, 73.0, 69.0, 72.0, 70.0, 69.0, 70.0)
gender_two <- c('m', 'm', 'f', 'f', 'm', 'f', 'f', 'm', 'm', 
             'f', 'm', 'm', 'm', 'm')

table_data <- data.frame(one_shoe, first_height, gender_two, two_shoe, 
                   second_height, gender_two)
table_data

    #A. Describe the data
  #Answer:The data shows respondents' shoe size, gender, and height.



  #B. Find the mean of shoe size and height of the respondents.
  #Copy the codes and results.

shoe_size <- cbind(one_shoe,two_shoe)
shoe_size
mean(shoe_size)

#results
        #one_shoe two_shoe
  #[1,]      6.5     13.0
  #[2,]      9.0     11.5
  #[3,]      8.5      8.5
  #[4,]      8.5      5.0
  #[5,]     10.5     10.0
  #[6,]      7.0      6.5
  #[7,]      9.5      7.5
  #[8,]      9.0      8.5
  #[9,]     13.0     10.5
  #[10,]      7.5      8.5
  #[11,]     10.5     10.5
  #[12,]      8.5     11.0
  #[13,]     12.0      9.0
  #[14,]     10.5     13.0
  
#> mean(shoe_size)
# [1] 9.410714

height <- cbind(first_height, second_height)
height
mean(height)

#results
          #first_height  second_height
#[1,]         66.0            77
#[2,]         68.0            72
#[3,]         64.5            59
#[4,]         65.0            62
#[5,]         70.0            72
#[6,]         64.0            66
#[7,]         70.0            64
#[8,]         71.0            67
#[9,]         72.0            73
#[10,]         64.0            69
#[11,]         74.5            72
#[12,]         67.0            70
#[13,]         71.0            69
#[14,]         71.0            70
#> mean(height)
#[1] 68.57143

  
  #C. Is there a relationship between shoe size and height? Why
#Answer: Yes, there is a relationship between the size and height.
# As you can see in the table the respondent's shoe size increases when he or she becomes taller.


#2. Construct character vector months to a factor with factor() and assign the result to
#factor_months_vector. Print out factor_months_vector and assert that R prints out
#the factor levels below the actual values.

      month <- c("March","April","January","November","January",
           "September","October","September","November","August",
           "January","November","November","February","May","August",
           "July","December","August","August","September","November","February","April")

      factor_month <- factor(month)
      factor_month

      factor_months_vector <- factor_month
      factor_months_vector

      summary(factor_month)
      summary(factor_months_vector)


#3.Then check the summary() of the months_vector and factor_months_vector. 
#Interpret the results of both vectors. Are they both equally useful in this case?

#Answer: yes, because both vectors are in the same data.


#4.Create a vector and factor for the table below.

Direction <- c("East", "West", "North")
Direction
Frequency <- c(1, 4, 3)
Frequency

    vecss <- data.frame(Direction, Frequency)
    vecss
    factor_vector <- factor(Direction)

    new_order_data <- factor(factor_vector,levels = c("East","West","North"))
    print(new_order_data)

#5 Enter the data below in Excel with file name = import_march.csv

#5.A  Import the excel file into the Environment Pane using read.table() function.
#Write the code.
setwd("C:/Users/Acer/Downloads")
getwd()

excel_data <- read.table("import_march.csv", sep=",", header=TRUE, stringsAsFactor=FALSE);
excel_data

#5.B View the dataset. Write the code and its result.
View(excel_data)

#Result 
#students strategy.1 strategy.2 strategy.3
#1     male          8         10          8
#2                   4          8          6
#3                   0          6          4
#4   female         14          4         15
#5                  10          2         12
#6                   6          0          9


