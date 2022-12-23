#Krystal Rose M. Rizardo   BSIT 2-A

        #CS 101- RWORKSHEET 7a



#Basic Statistics
#1. Create a data frame for the table below.

Student <- seq(1:10)
PreTest <- c(55,54,47,57,51,61,57,54,63,58)
PostTest <- c(61,60,56,63,56,63,59,56,62,61)

tableDF <- data.frame(Student,PreTest,PostTest)
tableDF

#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.

library(Hmisc)
library(pastecs)

      #Hmisc
descrip_hm <- describe(tableDF)
descrip_hm

      #pastecs
descrip_pas <- stat.desc(tableDF)
descrip_pas

    

  #2. The Department of Agriculture was studying the effects of several levels of a
  #fertilizer on the growth of a plant. 
  #For some analyses, it might be useful to convert the fertilizer levels to an ordered factor.

# The data were 10,10,10, 20,20,50,10,20,10,50,20,50,20,10.

agri_data<- c(10,10,10,20,20,50,10,
           20,10,50,20,50,20,10)
agri_data


    #a. Write the codes and describe the result.
    
    #Answer: The result shows that the levels differ from 10 to 20 to 50

data_factor <- factor(agri_data, ordered = TRUE)
data_factor

  #3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study
  #the exercise levels undertaken by 10 num3 were 
  #“l”, “n”, “n”, “i”, “l” ,“l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense

abdul_data <- c("l","n","n","i","l","l","n","n","i","l")
abdul_data


    #a. What is the best way to represent this in R?
    #Answer: The best way to present the data is to use  dataframe
abdul_dataDF <- data.frame(abdul_data)
abdul_dataDF


    #4.Sample of 30 tax accountants from all the states and territories of Australia and
  #their individual state of origin is specified by a character vector of state mnemonics
      
#as:
mnemonics_data <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
                "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
                "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
                "vic", "vic", "act")
mnemonics_data 

  #A. Apply the factor function and factor level. 
  #Describe the results.
#Answer: the result was null

  #factor function and factor level
mnemonics_factor <- factor(mnemonics_data)
mnemonics_factor

#Getting factor level of states
state_level <- levels(mnemonics_data)
state_level

  #5. From #4 - continuation:

  #Suppose we have the incomes of the same tax accountants in another vector (insuitably large units of money)

accountants_income <- c(60, 49, 40, 61, 64, 60, 59, 54,
            62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
            65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
accountants_income

  #a. Calculate the sample mean income for each state we can now use the special
  #function tapply():

income_tapp <- tapply(accountants_income, mnemonics_data, mean)
income_tapp


#b. Copy the results and interpret.

#income_tapp
#results 
#income_tapp <- tapply(accountants_income, mnemonics_data, mean)
#income_tapp
#act      nsw       nt      qld       sa      tas      vic       wa 
#44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 56.00000 52.25000 


# Answer: The state was factor out and was applied for the tapply function in order for the income 
#to be arranged according to state.

  #6.Calculate the standard errors of the state income means (refer again to number 3)

  #a. What is the standard error? Write the codes.

datalength <- length(income_tapp)
datalength

datastand <- sd(income_tapp)
datastand

datas <- datastand/sqrt(datalength)
datas


  #b. Interpret the result.
  #Answer: The data was summarize in length as it shows it has a 8 observation
  #and data was also summarize by getting its standard deviation along with its standard of errors.

  #7. Use the titanic dataset.

data(Titanic)
titanic_DF <- data.frame(Titanic)
titanic_DF

  #a. subset the titatic dataset of those who survived and not survived. Show the
  #codes and its result.

survive_data <- subset(titanic_DF, Survived == "Yes")
survive_data

didnt_surv_data <- subset(titanic_DF, Survived == "No")
didnt_surv_data


  #8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically as Dr. Wolberg reports his clinical cases. The database therefore reflects this
  #chronological grouping of the data. You can create this dataset in Microsoft Excel.

  #a. describe what is the dataset all about.
  
    #Answer: It is a data for breast cancer patients, 
    #it was categorized according to types of breasts cancer and how serious it's state, the number of patients was also 
    #organized under the different category of breast cancer

#b. Import the data from MS Excel. Copy the codes.

library("readxl")
install.packages("readxl")

Read <- read_excel("C:/Users/Acer/Downloads/Breast_Cancer.xlsx") 

Read


  #c. Compute the descriptive statistics using different packages. Find the values of:
  #c.1 Standard error of the mean for clump thickness.

clm_lng <- length(Read$`CL. thickness`)
clm_lng

clm_sd <- sd(Read$`CL. thickness`)
clm_sd

clm_se <- clm_sd/sqrt(Read$`CL. thickness`)
clm_se

#c.5 Confidence interval of the mean for Uniformity of Cell Shape

#Calculate the mean
mean_cell <- mean(Read$`Cell Shape`)
mean_cell

#Calculate the standard error of the mean
error_lng <- length(Read$`Cell Shape`)
error_lng

standarde_sd <- sd(Read$`Cell Shape`)
standarde_sd

cellshape_standarderror <- standarde_sd/sqrt(error_lng)
cellshape_standarderror

#Find the t-score that corresponds to the confidence level
T_score = 0.05
T_score

Ts_standarderror = error_lng - 1
Ts_standarderror

T_score = qt(p=T_score/2, df=Ts_standarderror,lower.tail=F)
T_score

#Constructing the confidence interval

ConfidenceI <- T_score * cellshape_standarderror
ConfidenceI

#Lower
ConfidenceI_diff <- mean_cell - ConfidenceI
ConfidenceI_diff

#Upper
sumConfidenceI <- mean_cell + ConfidenceI
sumConfidenceI

Confidence <- c(ConfidenceI_diff, sumConfidenceI)
Confidence

#d. How many attributes?
att <- attributes(Read)
att

#e. Find the percentage of respondents who are malignant. Interpret the results.
percentage_Res <- subset(Read, Class == "malignant")
percentage_Res

 
  #Answer: 18 respondents are malignant in total of 49 respondents. Getting the percentage 18 / 49 * 100 / 49 * 100

  #Answer: There 36% of respondents who are malignant.

#9. Export the data abalone to the Microsoft excel file. Copy the codes.

library("AppliedPredictiveModeling")

data(abalone)
View(abalone)
head(abalone)
summary(abalone)

#Exporting the data abalone to the Microsoft excel file

library(xlsx)

abalone<- write.xlsx("abalone","/Users/Acer/Downloads/abalone.xlsx") 
abalone

