

# Create Summary Tables in R
# The easiest way to create summary tables in R is to use 
# the describe() and describeBy() functions from the psych library.

library(psych)

#create summary table
describe(df)

#create summary table, grouped by a specific variable
describeBy(df, group=df$var_name)

# Example 1: Create Basic Summary Table
# Suppose we have the following data frame in R:
  
  #create data frame
  df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'C'),
                   points=c(15, 22, 29, 41, 30, 11, 19),
                   rebounds=c(7, 8, 6, 6, 7, 9, 13),
                   steals=c(1, 1, 2, 3, 5, 7, 5))

#view data frame
df

# We can use the describe() function to create a summary table 
# for each variable in the data frame:

install.packages("psych")
library(psych) 

#create summary table
describe(df)

# Here's how to interpret each value in the output:

# vars: column number
# n: Number of valid cases
# mean: The mean value
# median: The median value
# trimmed: The trimmed mean (default trims 10% of observations from each end)
# mad: The median absolute deviation (from the median)
# min: The minimum value
# max: The maximum value
# range: The range of values (max - min)
# skew: The skewness
# kurtosis: The kurtosis
# se: The standard error

# note that any variable with an asterisk (*) symbol next to it is 
# a categorical or logical variable that has been converted to a 
# numerical variable with values that represent the numerical 
# ordering of the values.

# In our example, the variable 'team' has been converted to a 
# numerical variable so we shouldn't interpret the summary statistics 
# for it literally.


# Also note that you can use the argument fast=TRUE to only
# calculate the most common summary statistics:

#create smaller summary table
describe(df, fast = TRUE)


# We can also choose to only compute the summary statistics for 
# certain variables in the data frame:

#create summary table for just 'points' and 'rebounds' columns
describe(df[ , c('points', 'rebounds')], fast=TRUE)



# Example 2: Create Summary Table, Grouped by Specific Variable

# create summary table, grouped by 'team' variable

describeBy(df, group=df$team, fast=TRUE)

#create summary table, grouped by 'team' variable
describeBy(df, group=df$team, fast=TRUE)


# The output shows the summary statistics for each of 
# the three teams in the data frame.













