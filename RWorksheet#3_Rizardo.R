
# CS 101 WORKSHEET NUMBER 3
# KRYSTAL ROSE M. RIZARDO    BSIT 2-A 
          
      
  #Using Vectors
  #1.

  #a. You need to produce a vector that contains the first 11 letters. 

    eleven_letters <- LETTERS [1:11]
    eleven_letters 

  #b. Produce a vector that contains the odd numbered letters.

    LETTERS[seq(1, 26, 2)]

  #c. Produce a vector that contains the vowels.

    vowels <- c("A", "E", "I", "O", "U")
    vowels

  #d. Produce a vector that contains the last 5 lowercase letters.

    last_letters <- letters [22:26]
    last_letters 

  #e. Produce a vector that contains letters between 15 to 24
  # letters in lowercase.

    low_letters <- letters [16:23]
    low_letters 
    

  #2. 
  #a. What is the R code and its result for creating a character vector for the city/town of
  #Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City? Name the object as city. 
  #The names should follow the same order as in the instruction.

    vec_city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
    vec_city

  #b.  The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees.
  #Name the object as temp. Write the R code and its output. Numbers should also follow what is in the instruction.

    cel_temperature <- c(42, 39, 34, 34, 30, 27)
    cel_temperature

  #c. Associate the temperature temp with the city by using names() function. What is
  #the R code and its result?

    city_temp <- cbind(c("Tuguegarao city", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City"),
                   c(42, 39, 34, 34, 30, 27))
    city_temp

    colnames(city_temp) <- c("city","temperature")
    city_temp

  #e. From the answers in d, what is the content of index 5 and index 6?
  # what is its R code?

    city_temp [5]
    city_temp [6]


    
  #Using Matrices
  #2. Create a matrix of one to eight and eleven to fourteen with four columns and three rows.

  #a. What will be the R code for the #2 question and its result?
    create_matrix <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
    create_matrix
    
  #b. Multiply the matrix by two. What is its R code and its result?
    mul_matrix <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
    mul_matrix <- 2*mul_matrix
    mul_matrix

  #c. What is the content of row 2? What is its R code?
  
    mul_matrix[2,]

  #d. What will be the R code if you want to display the column 3 and column 4 in row 1 and row 2? What is its output?

    mul_matrix[1, 3] 
    mul_matrix[2, 4]  

  #e. What is the R code if you want to display only the columns in 2 and 3, row 3? What is its output?

    mul_matrix[3, 2]
    mul_matrix[3, 3]

  #f. What is the R code if you want to display only the columns 4? What is its output?

    mul_matrix[,4]

  #g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro for the matrix that was created in b. 
  #What is its R code and corresponding output?

    dimnames(mul_matrix) <- list(c("isa", "dalawa", "tatlo"), c("uno", "dos", "tres", "quatro"))
    mul_matrix

  #h. From the original matrix you have created in a, reshape the matrix by assigning a new dimension with dim(). 
  #New dimensions should have 2 columns and 6 rows. 
  #What will be the R code and its output?

    dim(mul_matrix) <- c(6,2) 
    mul_matrix
    
  
  
  #Using Arrays
  #3. An array contains 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1
  #a. Create an array for the above values.Each values will be repeated twice
  #What will be the R code if you are to create a three-dimensional array with 4 columns and 2 rows.  
  #What will be its output?

    num_values <- c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
    num_array <- array(rep(num_values, 2), dim = c(2,4,3))
    num_array  

  #b. How many dimensions do your array have?

  #answer: the array has 3 dimensions

  #c. Name the rows as lowercase letters and columns as uppercase letters starting from
  #the A. The array names should be “1st-Dimensional Array”, “2nd-Dimentional Array”, and “3rd-Dimensional Array”. 
  #What will be the R codes and its output?

    dimnames(num_array) <- list(letters[1:2],LETTERS[1:4],
                      c("1st-Dimensional Array", "2nd-Dimensional Array",
                        "3rd-dimensional Array"))
    num_array
    
    
