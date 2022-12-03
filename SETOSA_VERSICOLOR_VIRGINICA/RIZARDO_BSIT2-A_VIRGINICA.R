# "VIRGINICA"
# ASSIGNMENT
# KRYSTAL, ROSE M. RIZARDO   BSIT 2-A
# OCTOBER, 28, 2022


  #1. data(iris)
  
  da_ta <- data.frame(iris)
  da_ta

  
  #2. Subset the iris set into 3 files-per species.
  three_data <- subset(iris, Species == "virginica")
  three_data

    sep_length <- iris$Sepal.Length [101:150]
    sep_length

      pal_width <- iris$Sepal.Width [101:150]
      pal_width

        pet_length <- iris$Petal.Length [101:150]
        pet_length

          tal_width <- iris$Petal.Width [101:150]
          tal_width

            virginica_mean <- c(sep_length, pal_width, pet_length, tal_width)
            virginica_mean



  #3. Get total mean for each species.

  total_mean <- mean(virginica_mean)
  total_mean

  # the total mean for each species is 4.285


  #4. Get the mean of each characteristics of the species.
  
  seplength1_mean <- mean(sep_length)
  seplength1_mean

  # the mean of seplength1 species is 6.588

  palwidth1_mean <- mean(pal_width)
  palwidth1_mean
  
  # the mean of palwidth1 is 2.974

  petlength1_mean <- mean(pet_length)
  petlength1_mean

  # the mean of petlength1 is 5.552

  talwidth1_mean <- mean(tal_width)
  talwidth1_mean
  
  # the mean of talwidth1 is 2.026
  