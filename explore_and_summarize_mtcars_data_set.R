
#   mtcars dataset

# explore, summarize, and visualize the mtcars dataset in R.++++++++++++++
# Load the mtcars Dataset

data("mtcars")

#view first six rows of mtcars dataset
head(mtcars)

# use the summary() function to quickly summarize each variable in the dataset:
# summarize mtcars dataset
  summary(mtcars)
  
  #display rows and columns
  dim(mtcars)
  
  #display column names
  names(mtcars)
  
# Visualize the mtcars Dataset  +++++++++++++++++++++++++++++  

# use the hist() function to create a histogram of the values 
# for a certain variable:
  
  #create histogram of values for mpg
  hist(mtcars$mpg,
       col='steelblue',
       main='Histogram',
       xlab='mpg',
       ylab='Frequency')  
  
# use the boxplot() function to create a boxplot to visualize the 
# distribution of values for a certain variable:
    
    #create boxplot of values for mpg
    boxplot(mtcars$mpg,
            main='Distribution of mpg values',
            ylab='mpg',
            col='steelblue',
            border='black')
  
  
# We can also use the plot() function to create a scatterplot of
# any pairwise combination of variables:
    
    #create scatterplot of mpg vs. wt
    plot(mtcars$mpg, mtcars$wt,
         col='steelblue',
         main='Scatterplot',
         xlab='mpg',
         ylab='wt',
         pch=19) 
  
  