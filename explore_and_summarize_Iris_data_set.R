
# EXPLORE AND SUMMARIZE A DATA SET  ++++++++++++++++++++++++

#  Iris Dataset in R


# iris dataset is a built-in dataset in R, we can load it by:

data(iris)

#view first six rows of iris dataset
head(iris)

# summarize iris dataset
summary(iris)

#  For the only categorical variable in the dataset (Species) we see 
#  a frequency count of each value:

# use the dim() function to get the dimensions of the dataset in terms
# of number of rows and number of columns:

#display rows and columns
dim(iris)
# [1] 150   5

#display column names
names(iris)

# Visualize the Iris Dataset  +++++++++++++++++++++++++++++++++++

#create histogram of values for sepal length

hist(iris$Sepal.Length,
     col='steelblue',
     main='Histogram',
     xlab='Length',
     ylab='Frequency')


# We can also use the plot() function to create a scatterplot of any
# pairwise combination of variables:

#create scatterplot of sepal width vs. sepal length

plot(iris$Sepal.Width, iris$Sepal.Length,
     col='steelblue',
     main='Scatterplot',
     xlab='Sepal Width',
     ylab='Sepal Length',
     pch=19)


# We can also use the boxplot() function to create a boxplot by group:
# create scatterplot of sepal width vs. sepal length
 
 boxplot(Sepal.Length~Species,
          data=iris,
          main='Sepal Length by Species',
          xlab='Species',
          ylab='Sepal Length',
          col='steelblue',
          border='black')

 # The x-axis displays the three species and the y-axis displays 
 # the distribution of values for sepal length for each species.
 # This type of plot allows us to quickly see that the sepal length
 # tends to be largest for the virginica species and smallest for the 
 # setosa species.
