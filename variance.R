
# variance
# Calculate Sample & Population Variance in R

# The variance is a way to measure how spread out data values are around the mean.
# The formula to find the variance of a population is:
#  ??2 = ?? (xi - ??)2 / N
#  where ?? is the population mean, xi is the ith element from the population, 
# N is the population size, and ?? is just a fancy symbol that means "sum."
# The formula to find the variance of a sample is:
#    s2 = ?? (xi - x)2 / (n-1)
# where x is the sample mean, xi is the ith element in the sample, and n is the sample size.

# Example: Calculate Sample & Population Variance in R
# Suppose we have the following dataset in R:
  
  #define dataset
  data <- c(2, 4, 4, 7, 8, 12, 14, 15, 19, 22)
  
#  We can calculate the sample variance by using the var() function in R:
    
    #calculate sample variance
    var(data)
    # [1] 46.01111
    
#  And we can calculate the population variance by simply multiplying 
    # the sample variance by (n-1)/n as follows:
      
      #determine length of data
      n <- length(data)
      n
  # [1] 10
      
    #calculate population variance
    var(data) * (n-1)/n  
    
  # [1] 41.41
    
# Note that the population variance will always be smaller than the sample variance.
# In practice, we typically calculate sample variances for datasets since it's 
# unusual to collect data for an entire population.
    
#  Example: Calculate Sample Variance of Multiple Columns
#   Suppose we have the following data frame in R:
      
   #create data frame
      data <- data.frame(a=c(1, 3, 4, 4, 6, 7, 8, 12),
                         b=c(2, 4, 4, 5, 5, 6, 7, 16),
                         c=c(6, 6, 7, 8, 8, 9, 9, 12))
    
    #view data frame
    data    
    
# We can use the sapply() function to calculate the sample variance of each 
# column in the data frame:

# find sample variance of each column
    sapply(data, var)
    
# And we can use the following code to calculate the sample standard deviation 
# of each column, which is simply the square root of the sample variance: 
    
# #find sample standard deviation of each column
    sapply(data, sd)
    
    
#    ====  END  =====