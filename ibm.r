### IBM FIRST R CODE ###

# Creating data visualizations using ggplot 

library(datasets)
data("mtcars")

# view first 5 rows
head(mtcars, 5)

?mtcars

# load ggplot package
library(ggplot2)
# create a scatter plot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,), data = mtcars) + geom_point()

# Add a title
ggplot(aes(x=disp,y=mpg,),data = mtcars)+geom_point()+ggtitle("Displacement vs MPG")

# Change name of X and Y axis
ggplot(aes(x=disp,y=mpg,),data = mtcars)+geom_point()+ggtitle("
        Displacement vs MPG")+ labs(x="Displacement", y="MPG")

# Create a box plot of the distribution of MPG for the individual Engine Types 
# vs Engine (0 = V-shaped, 1=straight)
## Make as factor
mtcars$vs <- as.factor(mtcars$vs)

# Create a box plot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

# Add color to the box plots to help differentiate
ggplot(aes(x=vs, y=mpg, fill=vs), data = mtcars) + geom_boxplot(alpha=0.3) + theme(
  legend.position = "none")

# Create the histogram of weight wt
ggplot(aes(x=wt), data = mtcars) + geom_histogram(binwidth = 0.5)


### Plotting Iris data set 
library(datasets)
data("iris")
library(GGally)
ggpairs(iris, mapping = ggplot2::aes(colour = Species))
