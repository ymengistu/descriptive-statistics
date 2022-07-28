

# diamonds Dataset in R
# explore, summarize, and visualize the diamonds dataset in R.
# he diamonds dataset comes built-in with the ggplot2 package in R.
# It contains measurements on 10 different variables
# (like price, color, clarity, etc.) for 53,940 different diamonds.

# Load the diamonds Dataset
# Since the diamonds dataset is a built-in dataset in ggplot2, 
# we must first install (if we haven't already) and load the ggplot2 package:
  
# install ggplot2 if not already installed
  install.packages('ggplot2')
  
# load ggplot2
  library(ggplot2)

  # Once we've loaded ggplot2, we can use the data() function to load
  # the diamonds dataset:
  data(diamonds)
  
  #view first six rows of diamonds dataset
  head(diamonds)  
  
  #summarize diamonds dataset
  summary(diamonds)
  
  # For the categorical variables in the dataset (cut, color, and clarity) 
  # we see a frequency count of each value.

    #display rows and columns
  dim(diamonds)  
  
# use the names() function to display the column names of the data frame:

  #display column names
  names(diamonds)
  

  # Visualize the diamonds Dataset   +++++++++++++++++++++++++++++++
  
  # use the geom_histogram() function to create a histogram of the values
  # for a certain variable:
  
  #create histogram of values for price
  ggplot(data=diamonds, aes(x=price)) +
    geom_histogram(fill="steelblue", color="black") +
    ggtitle("Histogram of Price Values")
  
# We can also use the geom_point() function to create a scatterplot 
# of any pairwise combination of variables:  
  #create scatterplot of carat vs. price, using cut as color variable
  
  ggplot(data=diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point()

  # We can also use the geom_boxplot() function to create a boxplot of
  # one variable grouped by another variable:
  
  #create scatterplot of price, grouped by cut
  ggplot(data=diamonds, aes(x=cut, y=price)) + 
    geom_boxplot(fill="steelblue") 