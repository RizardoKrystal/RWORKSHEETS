#Name:Krystal Rose M. Rizardo  BSIT_2A
#WORKSHEET1 

#Given Variables


age <- c(34,28,22,36,27,18,52,39,42,29,
         35,31,27,22,37,34,19,20,57,49,
         50,37,46,25,17,37,42,53,41,51,
         35,24,33,41)

#A. How many data points?
#Answer: 34

#B. Write the R code and its output.
#R CODE
age <- c(34,28,22,36,27,18,52,39,42,29,
         35,31,27,22,37,34,19,20,57,49,
         50,37,46,25,17,37,42,53,41,51,
         35,24,33,41)
#OUTPUTS
#age   num[1:34] 34,28,22,36,27,18,52,39,42,29,
#35,31,27,22,37,34,19,20,57,49,
#50,37,46,25,17,37,42,53,41,51,
#35,24,33,41


#2. Find the reciprocal for the values for age.
age <- c(34,28,22,36,27,18,52,39,42,29,
         35,31,27,22,37,34,19,20,57,49,
         50,37,46,25,17,37,42,53,41,51,
         35,24,33,41)

reciprocal <- 1/age
reciprocal
#OUTPUTS 
#[1] 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556 0.01923077 0.02564103 0.02380952 0.03448276 0.02857143
#[12] 0.03225806 0.03703704 0.04545455 0.02702703 0.02941176 0.05263158 0.05000000 0.01754386 0.02040816 0.02000000 0.02702703
#[23] 0.02173913 0.04000000 0.05882353 0.02702703 0.02380952 0.01886792 0.02439024 0.01960784 0.02857143 0.04166667 0.03030303
#[34] 0.02439024

#3. Assign also new_age <-c(age,0,age). What happen to the new age?
age <- c(34,28,22,36,27,18,52,39,42,29,
         35,31,27,22,37,34,19,20,57,49,
         50,37,46,25,17,37,42,53,41,51,
         35,24,33,41)

new_age <-c(age,0,age)
new_age

#Answer. It will display 2 sets of the vector that consist of the given age while zero is at the center of it. 
# 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25
# 17 37 42 53 41 51 35 24 33 41  0 34 28 22 36 27 18 52 39 42 29 35 31 27
# 22 37 34 19 20 57 49 50 37 46 25 17 37 42 53 41 51 35 24 33 41


#4. Sort the values for age.
sort(age)
#OUTPUTS
#17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37 37 37 39 41 41 42 42 46 49 50 51 52 53 57

#5. Find the minimum and maximum value for age.
min(age)
max(age)        
#OUTPUTS  
#min 17
#max 57

#6. Given Variables

data <- c(2.4,2.8,2.1,2.5,2.4,
          2.2,2.5,2.3,2.5,2.3,
          2.4,2.7)

#How many data points.
#Answer: 12 
#Write the R code and its output.
#data   num[1:12] 2.4,2.8,2.1,2.5,2.4,
#2.2,2.5,2.3,2.5,2.3,
#2.4,2.7


#7.Generate a new vector for data where you double every value of data, what happened to the data?

data <- c(2.4*2,2.8*2,2.1*2,2.5*2,2.4*2,
          2.2*2,2.5*2,2.3*2,2.5*2,2.3*2,
          2.4*2,2.7*2)
#Answer: It will double the value of every data in the vector. 
#4.8 5.6 4.2 5.0 4.8 4.4 5.0 4.6 5.0 4.6 4.8 5.4

#8. GENERATE A SEQUENCE FOR THE FOLLOWING SCENARIO

#a. How many data points from 8.1 to 8.4? 
#ANSWER: 43
#b. Write the Rcode and its Output from 8.1 to 8.4

#8.1 Integers from 1 to 100.
seq(1:100)

#OUTPUT

#  1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18
#  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36
#  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54
#  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72
#  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87  88  89  90
#  91  92  93  94  95  96  97  98  99 100

#8.2 Numbers fom 20 to 60.

x <- 20:60
print(x)

#OUTPUT

#  20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60

#8.3 Mean of the numbers from 20 to 60.
mean(20:60)
#OUTPUT: 40

#8.4 Sum of numbers from 51 to 91.
sum(51:91)
#OUTPUT: 2911

#8.5 Integers from 1 to 1000
seq(1:1000)
#OUTPUT: Integers from 1 to 1000

#C. For 8.5 find only maximum data points until 10.

max(1:10)
#OUTPUT: 10

#9. Print a vector with the integers between 1 and 100 that are not only divisible by 3,5, and 7 using the filter option.
Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))

#OUTPUT: 1  2  4  8 11 13 16 17 19 22 23 26 29 31 32 34 37 38 41 43 44 46 47 52 53 58 59 61 62 64 67 68 71 73 74 76 79 82 83 86 88 89 92
# 94 97

#10. Generate a sequence backwards of the Integers from 1 to 100.
#a. How many data points from 10 to 11?
#Answer: 101

#b. Rcode and output
seq(from =100, to =1)
#OUTPUT [1] 100  99  98  97  96  95  94  93  92  91  90  89  88  87  86  85  84  83
#82  81  80  79  78  77  76  75  74  73  72  71  70  69  68  67  66  65
#64  63  62  61  60  59  58  57  56  55  54  53  52  51  50  49  48  47
#46  45  44  43  42  41  40  39  38  37  36  35  34  33  32  31  30  29
#28  27  26  25  24  23  22  21  20  19  18  17  16  15  14  13  12  11
#10   9   8   7   6   5   4   3   2   1

#11. List all the natural numbers below 25 that are multiples of 3 or 5. Find the sum of these multiples.
sum((1:25)[((1:25)%%3 == 0) | ((1:25)%%5 == 0)])
#OUTPUT: 168

#12.Enter this statement 

 x <- 0+ x + 5 + 
#Describe the output:Error,unexpected '}' in " { x <- 0+ x + 5 + }"

#13. 
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75,75, 77)

score[2]
score[3]

#OUTOUT : x[2]=86, x[3]= 92

#14. 
a <- c(1,2,NA,4,NA,6,7)

print(a,na.print="-999")

#OUTPUT
#1    2 -999    4 -999    6    7
#It displays ouput base on the given vector, as I change the value for NA, 
#the program also display -999 that substitute to the NA.

#15.
class(x) <- "foo"
name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)

#What is the output of the above code?
#The first line in the program prompt to Input your name, I input my name and in the environment,
# the name will sets its value to my name that I input, on the second line I input my age and the process will just be the same in line 1, 
#line 3, the name and age that I enter in line 1 and 2 will be combined, and will form into a sentence.
#and Lastly, on line 4 it will display the current version of R that I use in this worksheet.

#>  name = readline(prompt="Input your name: ")
#Input your name: Krystal Rose M. Rizardo
#>  age = readline(prompt="Input your age: ")
#Input your age: 20 
#>  print(paste("My name is",name, "and I am",age ,"years old."))
#[1] "My name is Krystal Rose M. Rizardo and I am 20 years old."
#>  print(R.version.string)
#[1] "R version 4.2.1 (2022-06-23 ucrt)"
