                                                    # VERSICOLOR
                                                    # ASSIGNMENT
# KRYSTAL, ROSE M. RIZARDO   BSIT 2-A
# OCTOBER, 28, 2022


  #1. data(iris)

  data <- data.frame(iris)
  data

  
  #2. Subset the iris set into 3 files-per species
  versi_data <- subset(iris, Species == "versicolor")
  versi_data

  seps_length <- iris$Sepal.Length [51:100]
  seps_length

    seps_width <- iris$Sepal.Width [51:100]
    seps_width

      pets_length <- iris$Petal.Length [51:100]
      pets_length

        pets_width <- iris$Petal.Width [51:100]
        pets_width

          versicolor_mean <- c(seps_length, seps_width, pets_length, pets_width)
          versicolor_mean



  #3. Get total mean for each species.
  versicolortotal_mean <- mean(versicolor_mean)
  versicolortotal_mean
  
  # the total mean for each species is 3.573


  #4. Get the mean of each characteristics of the species.
  sepslength_mean <- mean(seps_length)
  sepslength_mean

  # the  mean of sepslength species is 5.936


  sepswidth_mean <- mean(seps_width)
  sepswidth_mean

  # the mean of sepswidth species is 2.77
  

  petslength_mean <- mean(pets_length)
  petslength_mean

  # the mean of petslength species is 4.26


  petswidth_mean <- mean(pets_width)
  petswidth_mean

  # the mean of petswidth species is 1.326
