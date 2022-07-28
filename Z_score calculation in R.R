

# Calculate Z-Scores in R   --------------------------------------

# a z-score tells us how many standard deviations away a value is from the mean.
# We use the following formula to calculate a z-score:
  
#   z = (X - ??) / ??

# where:
# X is a single raw data value
# ?? is the population mean
# ?? is the population standard deviation

# Example 1: Find Z-Scores for a Single Vector  ---------------------------
# The following code shows how to find the z-score for every raw data value in a vector:
  
  #create vector of data
  data <- c(6, 7, 7, 12, 13, 13, 15, 16, 19, 22)
  
  #find z-score for each data value 
  z_scores <- (data-mean(data))/sd(data)
  
  #display z-scores 
  z_scores
  
# Each z-score tells us how many standard deviations away an individual value is
# from the mean. For example:
  
#  The first raw data value of "6" is 1.323 standard deviations below the mean.
#  The fifth raw data value of "13" is 0 standard deviations away from the mean,
# i.e. it is equal to the mean.
#  The last raw data value of "22" is 1.701 standard deviations above the mean.  
  
#  Example 2: Find Z-Scores for a Single Column in a DataFrame  -------------
  
# The following code shows how to find the z-score for every raw data value 
# in a single column of a dataframe:
    
    #create dataframe
  
    df <- data.frame(assists = c(4, 4, 6, 7, 9, 13),
                     points = c(24, 29, 13, 15, 19, 22),
                     rebounds = c(5, 5, 7, 8, 14, 15))
  
  #find z-score for each data value in the 'points' column
  
  z_scores <- (df$points-mean(df$points))/sd(df$points)
  
  #display z-scores 
  z_scores
  
  
# Each z-score tells us how many standard deviations away an individual value
  # is from the mean. For example:
  
#  The first raw data value of "24" is 0.619 standard deviations above the mean.
#  The second raw data value of "29" is 1.464 standard deviations above the mean.
#  The third raw data value of "13" is 1.238 standard deviations below the mean. 

# Example 3: Find Z-Scores for Every Column in a DataFrame  ----------------- 
  
#  The following code shows how to find the z-score for every raw data value
# in every column of a dataframe using the sapply() function.
  
# create dataframe

df <- data.frame(assists = c(4, 4, 6, 7, 9, 13),
                   points = c(24, 29, 13, 15, 19, 22),
                   rebounds = c(5, 5, 7, 8, 14, 15))
  
#find z-scores of each column
  sapply(df, function(df) (df-mean(df))/sd(df))
  
  
# The z-scores for each individual value are shown relative to the column 
# they're in. For example:
#  The first value of "4" in the first column is 0.923 standard deviations 
  # below the mean value of its column.
  
# The first value of "24" in the second column is .619 standard deviations above
# the mean value of its column.
# The first value of "9" in the third column is .904 standard deviations below 
# the mean value of its column.  
  