#  CS 101 - WORKSHEET 3B

# Krystal Rose M. Rizardo     BSIT 2-A            DATE:11/22/22


 #1 Create a data frame using the table below.
 
 #A. Write the codes.

  respondents <- c (1:20)
  respondents

  sex <- c(2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,1,2)
  sex
  
  fathers_occupation <- c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1)
  fathers_occupation  

  persons_atHome <- c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6)
  persons_atHome
  
  sibling_atschool <- c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2)
  sibling_atschool
  
  types_of_houses <- c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2)
  types_of_houses
  
  census_data <-data.frame(respondents,sex,fathers_occupation,persons_atHome,sibling_atschool,types_of_houses)
  census_data  
  
  
  #B. Describe the data. Get the structure or the summary of the data.
  #It shows the summary of data, the minimum, first quartile, median, mean, third quartile, and maximum value of every data.
    
  summary(census_data)
    
    
  #C. Is the mean number of siblings attending is 5?
  
    #Answer: No, because the mean number of siblings attending is 2.95.
    
    
  #D. Extract the 1st two rows and then all the columns using the subsetting functions.
  #Write the rcodes and its output.
    
    first_rdata <- subset(census_data[1:2, 1:6, drop =FALSE])
    first_rdata 
    
  #respondents sex  fathers_occupation persons_atHome sibling_atschool  types_of_houses
  #  1           1   2                  1              5              6               1
  #  2           2   2                  3              7              4               2
    
  

  #E. Extract 3rd and 5th row with 2nd and 4th column. Write the codes and its result.
    
    second_rdata <- census_data[c(3,5), c(2,4)]
    second_rdata

  #     sex         persons_atHome
  #   1              3
  #   2              5
   
    
  #F. Select the variable types of houses then store the vector that results ast types_houses. Write the codes.
    
    typeshouses <- types_of_houses
    typeshouses
    
 
    
  #G. Select only all Males respondent that their father occupation was farmer. 
  #Write the rcodes and its output.
    
    male_data <- data.frame(sex, fathers_occupation)
    subset(male_data, sex == 1 & fathers_occupation == 1)

    #    sex                fathers_occupation
    #<0 rows> (or 0-length row.names)
    
    
    
  #H. Select only all female respondent that have greater than or equal to 5number of siblings attending school. 
  #Write the rcodes and its output.
    
    female_data <- data.frame(sex, sibling_atschool) 
    subset(female_data, sex == 2 & sibling_atschool >= 5)
    
   #     sex       sibling_atschool
   # 1    2                6
   # 7    2                5
   # 13   2                5
   # 14   2                5
   # 18   2                5
    
    
  #2. Write a R program to create an empty data frame. Using the following codes:
    
    df = data.frame(Ints=integer(),
                    Doubles=double(), Characters=character(),
                    Logicals=logical(),
                    Factors=factor(),
                    stringsAsFactors=FALSE)
    print("Structure of the empty dataframe:")
    print(str(df))
    
    #a. Describe the results.
    
    #Answer: the result in the R program shows empty table or null
    
  
    
  #3. Interpret the graph.
    
    
    #Answer: The graph displays the sentiment of tweets per day. You can see that negative comments are mostly relevant each day. 
    #           There were nearly 2,500 more negative tweets than positive or neutral tweets on July 14, 2020.
    #           The next day, with a one-day interval, the data rises to nearly 4,500 negative tweets, 
    #           leading both positive and neutral tweets. On the third and fourth days, the number of negative tweets remained 
    #           unchanged, but the number of positive and neutral tweets decreases as well.
    #           On the fifth day, with a one-day interval, all of the tweets decrease.
    #           Finally, on the sixth day, the sentiment of tweets rose again.
    
    