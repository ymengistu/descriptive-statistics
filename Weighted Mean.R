

# Weighted Mean in R  ++++++++++++++++++++++++

#  To calculate a weighted mean in R, you can use the built-in weighted.mean() 
# function, which uses the following syntax:

# weighted.mean(x, w)
# where:   x: A vector of raw data values w: A vector of weights


# Example 1: Weighted Mean of a Vector
# The following code shows how to calculated the weighted mean for a given
# vector of data:
  
  #define vector of data values
  data <- c(3, 5, 6, 7, 8)

  #define vector of weights
weights <- c(.1, .3, .3, .2, .1)

#calculate weighted mean
weighted.mean(x=data, w=weights)

# [1] 5.8



# Example 2: Weighted Mean of a Column in a Data Frame
# create data frame
  df <- data.frame(values = c(3, 5, 6, 7, 8),
                   weights = c(.1, .3, .3, .2, .1))

#calculate weighted mean
weighted.mean(x=df$values, w=df$weights)
#[1] 5.8


# Note that you can also calculate the weighted mean for a column 
# in a data frame by using a separate vector as the weights:

#create data frame
df <- data.frame(values = c(3, 5, 6, 7, 8),
                 other_data = c(6, 12, 14, 14, 7),
                 more_data = c(3, 3, 4, 7, 9))

#define vector of weights
weights <- c(.1, .3, .3, .2, .1)

#calculate weighted mean
weighted.mean(x=df$values, w=weights)
# [1] 5.8


# When to Use a Weighted Mean
# In practice, a weighted mean is used when we consider some data values
# to be more important than others and so we want those more important 
# values to contribute more to the final mean.

