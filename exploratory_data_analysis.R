

# Exploratory Data Analysis in R ------------------------

#  One of the first steps of any data analysis project is exploratory data analysis.
#  This involves exploring a dataset in three ways:
#  1. Summarizing a dataset using descriptive statistics.
#  2. Visualizing a dataset using charts.
#  3. Identifying missing values.

#  By performing these three actions, you can gain an understanding of
#  how the values in a dataset are distributed and detect any problematic
#  values before proceeding to perform a hypothesis test or perform statistical modeling.

#  The easiest way to perform exploratory data analysis in R is by using 
#  functions from the tidyverse packages.

#  The following step-by-step example shows how to use functions from
#  these packages to perform exploratory data analysis on the diamonds
#  dataset that comes built-in with the tidyverse packages.

#  Step 1: Load & View the Data  ---------------------------------

#  First, let's use the data() function to load the diamonds dataset:

library(tidyverse)

#load diamonds dataset

data(diamonds)

#view first six rows of diamonds dataset

head(diamonds)

# Step 2: Summarize the Data  ------------------------------------

# We can use the summary() function to quickly summarize each variable in the dataset:

#summarize diamonds dataset

summary(diamonds)

# For the categorical variables in the dataset (cut, color, and clarity) 
# we see a frequency count of each value.

# #display rows and columns

dim(diamonds)
 
# Step 3: Visualize the Data   ---------------------------------------

# We can also create charts to visualize the values in the dataset.
# For example, we can use the geom_histogram() function to create a histogram
# of the values for a certain variable:

#create histogram of values for price

ggplot(data=diamonds, aes(x=price)) +
  geom_histogram(fill="steelblue", color="black") +
  ggtitle("Histogram of Price Values")

# We can also use the geom_point() function to create a scatterplot of any 
# pairwise combination of variables:
  
  #create scatterplot of carat vs. price, using cut as color variable
  
ggplot(data=diamonds, aes(x=carat, y=price, color=cut)) + 
  geom_point()
  
  
#  We can also use the geom_boxplot() function to create a boxplot 
#  of one variable grouped by another variable:
    
    #create scatterplot of price, grouped by cut
   
   ggplot(data=diamonds, aes(x=cut, y=price)) + 
    geom_boxplot(fill="steelblue")
    
    
# We can also use the cor() function to create a correlation matrix to view 
    # the correlation coefficient between each pairwise combination of 
    # numeric variables in the dataset:
    
    #create correlation matrix of (rounded to 2 decimal places)
  
      round(cor(diamonds[c('carat', 'depth', 'table', 'price', 'x', 'y', 'z')]), 2)
    
      
# Step 4: Identify Missing Values
# We can use the following code to count the total number of missing values in 
# each column of the dataset:
        
        #count total missing values in each column
        sapply(diamonds, function(x) sum(is.na(x)))
        

#  From the output we can see that there are zero missing values in each column.
# In practice, you'll likely encounter several missing values throughout your dataset.
# This function will be useful for counting the total number of missing values.        