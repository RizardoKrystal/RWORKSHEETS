# SETOSA
# ASSIGNMENT
# KRYSTAL, ROSE M. RIZARDO   BSIT 2-A
# OCTOBER, 28, 2022



  #1. data(iris)
  data <- data.frame(iris)
  data

  
  #2. Subset the iris set into 3 files-per species

  setosa_data <- subset(iris, Species == "setosa")
  setosa_data

    s_length <- iris$Sepal.Length [1:50]
    s_length

      s_width <- iris$Sepal.Width [1:50]
      s_width

        p_length <- iris$Petal.Length [1:50]
        p_length

          p_width <- iris$Petal.Width [1:50]
          p_width

            setosa_mean <- c(s_length, s_width, p_length, p_width)
            setosa_mean

  
  #3 Get total mean for each species

  setosatotal_mean <- mean(setosa_mean)
  setosatotal_mean


  #4. Get the mean of each characteristics of the species.

  setilength_mean <- mean(s_length)
  setilength_mean
  
  # the mean of setilength species is 5.006

  
  setiwidth_mean <- mean(s_width)
  setiwidth_mean

  # the mean of setiwidth species  is 3.428

  
  petallength_mean <- mean(p_length)
  petallength_mean
  
  # the mean of petallength species is 1.462
    
  
  petalwidth_mean <- mean(p_width)
  petalwidth_mean
  
  # the mean of petalwidth species is 0.246
  