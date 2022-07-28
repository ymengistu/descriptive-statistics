

# Standard Error of the Mean in R   ++++++++++++++++++++++++

# The standard error of the mean is a way to measure how spread out values
# are in a dataset. 
# It is calculated as:
  
#  Standard error = s / ???n
  
#  where:     s: sample standard deviation and  n: sample size

  # two methods you can use to calculate the standard error of a dataset in R. 
  # Note that both methods produce the exact same results.

# Method 1: Use the Plotrix Library
# The first way to calculate the standard error of the mean is to use 
# the built-in std.error() function from the Plotrix library.

# The following code shows how to use this function:

install.packages("plotrix")
  
  #load plotrix library
  library(plotrix)

#define dataset
data <- c(3, 4, 4, 5, 7, 8, 12, 14, 14, 15, 17, 19, 22, 24, 24, 24, 25, 28, 28, 29)

#calculate standard error of the mean 
std.error(data)
# 2.001447


# Method 2: Define Your Own Function

  #define standard error of mean function
  std.error <- function(x) sd(x)/sqrt(length(x))

#define dataset
data <- c(3, 4, 4, 5, 7, 8, 12, 14, 14, 15, 17, 19, 22, 24, 24, 24, 25, 28, 28, 29)

#calculate standard error of the mean 
std.error(data)
#2.001447

# How to Interpret the Standard Error of the Mean
# The standard error of the mean is simply a measure of how spread out values
# are around the mean. 
# There are two things to keep in mind when interpreting the standard error of
# the mean:

# 1. The larger the standard error of the mean, the more spread out values are
# around the mean in a dataset.

# To illustrate this, consider if we change the last value in the previous 
# dataset to a much larger number:
  
  #define dataset
data <- c(3, 4, 4, 5, 7, 8, 12, 14, 14, 15, 17, 19, 22, 24, 24, 24, 25, 28, 28, 150)

#calculate standard error of the mean 

std.error(data)
# 6.978265

# Notice how the standard error jumps from 2.001447 to 6.978265. 
# This is an indication that the values in this dataset are more spread out
# around the mean compared to the previous dataset.

# 2. As the sample size increases, the standard error of the mean tends to 
# decrease.

# To illustrate this, consider the standard error of the mean for 
# the following two datasets:

#define first dataset and find SEM
data1 <- c(1, 2, 3, 4, 5)
std.error(data1)

# 0.7071068

#define second dataset and find SEM
data2 <- c(1, 2, 3, 4, 5, 1, 2, 3, 4, 5)
std.error(data2)

# 0.4714045

# The second dataset is simply the first dataset repeated twice.
# Thus, the two datasets have the same mean but the second dataset has 
# a larger sample size so it has a smaller standard error.