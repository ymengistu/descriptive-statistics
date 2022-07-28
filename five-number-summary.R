

# Five Number Summary in R  +++++++++++++++++++++++++++++
# A five number summary is a way to summarize a dataset using the following five values:

# The minimum
# The first quartile
# The median
# The third quartile
# The maximum

# The five number summary is useful because it provides a concise summary of 
# the distribution of the data in the following ways:

# It tells us where the middle value is located, using the median.
# It tells us how spread out the data is, using the first and third quartiles.
# It tells us the range of the data, using the minimum and the maximum.

# The easiest way to calculate a five number summary of a dataset in R 
# is to use the fivenum() function from base R:
  
  fivenum(data)
  
# Example 1: Five Number Summary of Vector   ++++++++++++++++++++++++++++++++++

    #define numeric vector
  data <- c(4, 6, 6, 7, 8, 9, 12, 13, 14, 15, 15, 18, 22)
  
  #calculate five number summary of data
  fivenum(data)
    # [1]  4  7 12 15 22
  
  # We can quickly visualize the five number summary by creating a boxplot:
  boxplot(data)

# Here's how to interpret the boxplot:
  #  The line at the bottom of the plot represents the minimum value (4).
  #  The line at the bottom of the box represents the first quartile (7).
  #  The line in the middle of the box represents the median (12).
  #  The line at the top of the box represents the third quartile (15).
  #  The line at the top of the plot represents the maximum value (22). 
  
  
#  Example 2: Five Number Summary of Column in Data Frame  ++++++++++++++++++++
#  The following code shows how to calculate the five number summary of
#  a specific column in a data frame:
#  create data frame
    df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
                     points=c(99, 90, 86, 88, 95, 87, 85, 89),
                     assists=c(33, 28, 31, 39, 34, 30, 29, 25),
                     rebounds=c(30, 28, 24, 24, 28, 30, 31, 35))
  
  #calculate five number summary of points column
  fivenum(df$points)

# Example 3: Five Number Summary of Multiple Columns  -------------------------
# The following code shows how to use the sapply() function to calculate 
# the five number summary of several columns in a data frame at once:
    
#create data frame
    df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
                     points=c(99, 90, 86, 88, 95, 87, 85, 89),
                     assists=c(33, 28, 31, 39, 34, 30, 29, 25),
                     rebounds=c(30, 28, 24, 24, 28, 30, 31, 35))
  
#calculate five number summary of points, assists, and rebounds column
  sapply(df[c('points', 'assists', 'rebounds')], fivenum)  

  
    
  