
#  Outliers  ------------------

# An outlier is an observation that lies abnormally far away from other values 
# in a dataset. 
# Outliers can be problematic because they can affect the results of an analysis.

# How to Identify Outliers in R ?  --------------------------

# Before you can remove outliers, you must first decide on what you consider 
# to be an outlier. 

# There are two common ways to do so:Using the interquartile range or Using z-scores.
  
#   1. Use the interquartile range. -----------------------

# The interquartile range (IQR) is the difference between the 75th percentile (Q3)
# and the 25th percentile (Q1) in a dataset. 
# It measures the spread of the middle 50% of values.

# You could define an observation to be an outlier if it is 1.5 times 
# the interquartile range greater than the third quartile (Q3) or 
# 1.5 times the interquartile range less than the first quartile (Q1).

#  Outliers = Observations > Q3 + 1.5*IQR  or < Q1 - 1.5*IQR


# 2. Use z-scores.----------------------------------

# A z-score tells you how many standard deviations a given value is from the mean. 
# We use the following formula to calculate a z-score:
  
#   z = (X - ??) / ??

# where:
  
#  X is a single raw data value
#  ?? is the population mean
#  ?? is the population standard deviation

# You could define an observation to be an outlier 
# if it has a z-score less than -3 or greater than 3.

# Outliers = Observations with z-scores > 3 or < -3


# How to Remove Outliers in R?   --------------------------------------------

# Once you decide on what you consider to be an outlier, you can then 
# identify and remove them from a dataset. 
# To illustrate how to do so, we'll use the following data frame:
  
# make this example reproducible 
  set.seed(0)

#create data frame with three columns A', 'B', 'C' 
df <- data.frame(A=rnorm(1000, mean=10, sd=3),
                 B=rnorm(1000, mean=20, sd=3),
                 C=rnorm(1000, mean=30, sd=3))

#view first six rows of data frame
head(df)

# We can then define and remove outliers using the z-score method or 
# the interquartile range method:
  
#  Z-score method:
#  The following code shows how to calculate the z-score of each value 
# in each column in the data frame, then remove rows that have at least
# one z-score with an absolute value greater than 3:
  
  #find absolute value of z-score for each value in each column

  z_scores <- as.data.frame(sapply(df, function(df) (abs(df-mean(df))/sd(df))))

#view first six rows of z_scores data frame
head(z_scores)

#only keep rows in dataframe with all z-scores less than absolute value of 3 

no_outliers <- z_scores[!rowSums(z_scores>3), ]

#view row and column count of new data frame
dim(no_outliers)

# The original data frame had 1,000 rows and 3 columns. 
# The new data frame has 994 rows and 3 columns, which tells us that 6 rows 
# were removed because they had at least one z-score with an absolute value 
# greater than 3 in one of their columns.


# Interquartile range method:
  
#   In some cases we may only be interested in identifying outliers in 
# one column of a data frame. 
# For example, suppose we only want to remove rows that have an outlier 
# in column 'A' of our data frame.

#  The following code shows how to remove rows from the data frame that have 
#  a value in column 'A' that is 1.5 times the interquartile range greater 
#  than the third quartile (Q3) or 1.5 times the interquartile range less than
#  the first quartile (Q1).

#find Q1, Q3, and interquartile range for values in column A
Q1 <- quantile(df$A, .25)
Q3 <- quantile(df$A, .75)
IQR <- IQR(df$A)
Q1
Q3
IQR

#only keep rows in dataframe that have values within 1.5*IQR of Q1 and Q3

no_outliers <- subset(df, df$A> (Q1 - 1.5*IQR) & df$A< (Q3 + 1.5*IQR))

#view row and column count of new data frame
dim(no_outliers) 

#[1] 994   3

# The original data frame had 1,000 rows and 3 columns. 
# The new data frame has 994 rows and 3 columns, which tells us that 6 rows 
# were removed because they had at least one outlier in column A.

# When to Remove Outliers  ?   ---------------------------------------------

# If one or more outliers are present, you should first verify that they're not
# a result of a data entry error. 
# Sometimes an individual simply enters the wrong data value when recording data.

# If the outlier turns out to be a result of a data entry error, you may decide 
# to assign a new value to it such as the mean or the median of the dataset.

# If the value is a true outlier, you may choose to remove it if it will have 
# a significant impact on your overall analysis. 
# Just make sure to mention in your final report or analysis that you removed an outlier.