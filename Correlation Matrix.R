

# Rcode to  Create a Correlation Matrix in R (4 Examples)  --------------------------

# A correlation matrix is a square table that shows the correlation coefficients
# between variables in a dataset.

# It offers a quick way to understand the strength of the linear relationships 
# that exist between variables in a dataset.

# There are four common ways to create a correlation matrix in R:

  
# Method 1: The cor Function (For getting simple matrix of correlation coefficients)

cor(df)


# Method 2: The rcorr Function (For getting p-values of correlation coefficients)

library(Hmisc)
rcorr(as.matrix(df))



# Method 3: The corrplot Function (For visualizing correlation matrix) --------

library(corrplot)
corrplot(cor(df))

# Method 4: The ggcorrplot Function (For visualizing correlation matrix)

library(ggcorrplot)
ggcorrplot(cor(df))

# The following examples show how to use each method with the following data frame in R:
  
#create data frame
  df <- data.frame(assists=c(4, 5, 5, 6, 7, 8, 8, 10),
                   rebounds=c(12, 14, 13, 7, 8, 8, 9, 13),
                   points=c(22, 24, 26, 26, 29, 32, 20, 14))

#view data frame
df


# Example 1: The cor Function  -----------------------------------------
# We can use the cor() function from base R to create a correlation matrix that
# shows the correlation coefficients between each variable in our data frame:
  
# create correlation matrix
  cor(df)
  
# The correlation coefficients along the diagonal of the table 
# are all equal to 1 because each variable is perfectly correlated with itself.
  
# All of the other correlation coefficients indicate the correlation between
# different pairwise combinations of variables. For example:
    
# The correlation coefficient between assists and rebounds is -0.245.
# The correlation coefficient between assists and points  is -0.330.
# The correlation coefficient between rebounds and points  is -0.522.
  
  
# Example 2: The rcorr Function  --------------------------------
#  We can use the rcorr() function from the Hmisc package in R to create a 
# correlation matrix that shows the correlation coefficients between each variable in our data frame:

library(Hmisc)

#create matrix of correlation coefficients and p-values
rcorr(as.matrix(df))

# The first matrix shows the correlation coefficients between the variables 
# and the second matrix shows the corresponding p-values.

# For example, the correlation coefficient between assists and rebounds
# is -0.24 and the p-value for this correlation coefficient is 0.5589.

# This tells us that the correlation between the two variables is negative
# but it's not a statistically significant correlation since the p-value 
# is not less than .05.

# Example 3: The corrplot Function  -----------------------
# We can use the corrplot() function from the corrplot package in R 
# to visual the correlation matrix:
  
  library(corrplot)

#visualize correlation matrix
corrplot(cor(df))

# The color and size of the circles in the correlation matrix help us 
# visualization the correlations between each variable.

# For example, the circle where the assists and rebounds variables intersect
# is small and light red, which tells us that the correlation is low and negative.

# Example 4: The corrplot Function   ------------------------------------
# We can use the ggcorrplot() function from the ggcorrplot package in R 
# to visualize the correlation matrix:
  
  library(ggcorrplot)

#visualize correlation matrix
ggcorrplot(cor(df))

# The color of the squares in the correlation matrix help us visualization
# the correlations between each variable.
