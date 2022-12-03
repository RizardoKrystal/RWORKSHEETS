#Krystal Rose M. Rizardo      BSIT 2-A
# CS 101- WORKSHEET 6

library(dplyr)
library(ggplot2)
# 1. How many columns are in mpg dataset? How about the number of rows? Show the codes and its result.

data(mpg)
mpg_dataset <- glimpse(mpg)
mpg_dataset

# Answer: There are 11 columns, and 234 rows in mpg data set.

#2. Which manufacturer has the most models in this data set? 
# Answer: Dodge Manufacturer has 37 models

model_dataset <- mpg_dataset %>% group_by(manufacturer) %>% count()
model_dataset
colnames(model_dataset) <- c("Manufacturer","Counts")
model_dataset


#Which model has the most variations?
# Answer: The model caravan 2wd contains the most variation

variation_dataset<- mpg_dataset %>% group_by(model) %>% count()
variation_dataset
colnames(variation_dataset) <- c("Model","Counts")
variation_dataset



#2.A Group the manufacturers and find the unique models. Copy the codes and result.
unique_models <- mpg_dataset %>% group_by(manufacturer, model) %>% distinct() %>% count()
unique_models
colnames(unique_models) <- c("Manufacturer", "Model","Counts")
unique_models

#2.B Graph the result by using plot() and ggplot(). Write the codes and its result.
plot(unique_models)
ggplot(unique_models, aes(x = Model, y = Counts )) + geom_point(color='purple')

#3. Same dataset will be used. You are going to show the relationship of the model 
#and the manufacturer.
ggplot(unique_models, aes(x = Model, y = Manufacturer )) + geom_point(color='blue')

#3.A What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?
ggplot(mpg, aes(model, manufacturer)) + geom_point()
# Answer: The ggplot displays the black points in the plots.

#3.B For you, is it useful? If not, how could you modify the data to make it more informative?
# Answer: Yes, it is useful because the result is easier to see and analyze.

#4. Using the pipe (%>%), group the model and get the number of cars per model.
# Show codes and its result.
cars <- mpg_dataset %>% group_by(model) %>% count()
cars
colnames(cars) <- c("Model","Counts")
cars

#4 A. Plot using the geom_bar() + coord_flip() just like what is shown below.
#Show codes and its result.

bargss <- ggplot(cars, aes( Model, Counts )) +
  geom_bar(stat = "identity")

bargss +
  coord_flip()

#4 B. Use only the top 20 observations. Show code and results.
head(cars, n = 20)

#5. Plot the relationship between cyl - number of cylinders and displ - engine displacement 
#using geom_point with aesthetic colour = engine displacement. Title should be
#“Relationship between No. of Cylinders and Engine Displacement”.

#5 A. Show the codes and its result.

ggplot(mpg, aes(x = displ , y = cyl, col = displ )) + geom_point()

ggplot( data = mpg) +
  geom_point(mapping = aes(x = displ , y = cyl, col = displ))

ggplot(data = mpg, mapping = aes(x = displ, y = cyl)) +
  geom_point(mapping=aes(color=displ))

#5 B. How would you describe its relationship?
# Answer: The relationship of cylinders and Engine Displacement are mostly  consistent or stable

#6. Get the total number of observations for drv - type of drive train (f = front-wheel drive,
# r = rear wheel drive, 4 = 4wd) and class - type of class (Example: suv, 2seater, etc.).

drv_frontw <- subset(mpg, drv == 'f')
drv_frontw <- nrow(drv_frontw)
drv_frontw

wheeldrive <- subset(mpg, drv == 'r')
nrow(wheeldrive)
wheeldrive

fourwd <- subset(mpg, drv == '4')
nrow(fourwd)
fourwd

suv_car <- subset(mpg, class == 'suv')
nrow(suv_car)
suv_car

comp <- subset(mpg, class == 'compact')
nrow(comp)
comp

m_size <- subset(mpg, class == 'midsize')
nrow(m_size)
m_size

two_seater <- subset(mpg, class == '2seater')
nrow(two_seater)
two_seater

mini_van <- subset(mpg, class == 'minivan')
nrow(mini_van)
mini_van

p <- subset(mpg, class == 'pickup')
nrow(p)
p

sub_comp <- subset(mpg, class == 'subcompact')
nrow(sub_comp)
sub_comp

#Plot using the geom_tile() where the number of observations for class be used as a fill for aesthetics.
#6 A. Show the codes and its result for the narrative in #6.

ggplot(mpg, aes(drv, class)) +
  geom_tile (aes(fill = class)) 

#6 B. Interpret the result.
# The result shows that if there is a relationship between a class and drv, a tile was created.

#7. Discuss the difference between these codes. Its outputs for each are shown below.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = "green"))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "green")

# In the first code, the "colour = green" code was inside the function aes(), so it failed 
# to give a color green dots and the dots became red dots. on the other hand, the second code was executed and 
# was in its proper place or outside the aes() function,and in result the plot was shown accordingly.

#8. Try to run the command ?mpg. What is the result of this command?
?mpg

#Answer: The result is about the fuel economy data from 1999 to 2008 for 38 popular models of cars

#8 A. Which variables from mpg data set are categorical?
#The categorical in mpg dataset include: manufacturer, model, trans (type of transmission), 
#drv (front-wheel drive, rear-wheel, 4wd), fi (fuel type), and class (type of car).

#8 B. Which are continuous variables?
#The continuous variables in mpg include: displ (engine displacement in litres), cyl 
#(number of cylinders), cty (city miles/gallon), and hwy (highway gallons/mile)

#8 C. Plot the relationship between displ (engine displacement) and hwy(highway miles
# per gallon). Mapped it with a continuous variable you have identified in 
#5-b. What is its result? Why it produced such output?

ggplot( data = mpg) +
  geom_point(mapping = aes(x = displ , y = hwy, col = displ)) 


#9. Plot the relationship between displ (engine displacement) and hwy(highway miles
# per gallon) using geom_point(). Add a trend line over the existing plot using
#  geom_smooth() with se = FALSE. Default method is “loess”.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=displ)) +
  geom_smooth(se =FALSE)

#10. Using the relationship of displ and hwy, add a trend line over existing plot. Set the
# se = FALSE to remove the confidence interval and method = lm to check for linear modeling.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=displ)) +
  geom_smooth(se =FALSE,method = lm)

