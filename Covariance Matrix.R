

# a Covariance Matrix in R

# Covariance is a measure of how changes in one variable are associated with 
# changes in a second variable. 
# Specifically, it's a measure of the degree to which two variables are linearly associated.

# A covariance matrix is a square matrix that shows the covariance between 
# many different variables. 
# This can be a useful way to understand how different variables are related in a dataset.

# The following example shows how to create a covariance matrix in R.

# Stepe-How to Create a Covariance Matrix in R

# Step 1: Create the data frame.

# First, we'll create a data frame that contains the test scores of 10 different
# students for three subjects: math, science, and history.

#create data frame
data <- data.frame(math = c(84, 82, 81, 89, 73, 94, 92, 70, 88, 95),
                   science = c(85, 82, 72, 77, 75, 89, 95, 84, 77, 94),
                   history = c(97, 94, 93, 95, 88, 82, 78, 84, 69, 78))

#view data frame
data

# Step 2: Create the covariance matrix.

# Next, create the covariance matrix for this dataset using the cov() function:
  
  #create covariance matrix
  cov(data)
  
  
# Step 3: Interpret the covariance matrix.-------------------

# The values along the diagonals of the matrix are simply 
# the variances of each subject. For example:
    # The variance of the math scores is 72.18
    # The variance of the science scores is 62.67
    # The variance of the history scores is 83.96
  
# The other values in the matrix represent the covariances 
# between the various subjects. For example:
    # The covariance between the math and science scores is 36.89
    # The covariance between the math and history scores is -27.16
    # The covariance between the science and history scores is -26.78
# A positive number for covariance indicates that two variables tend 
# to increase or decrease in tandem. 
# For example, math and science have a positive covariance (36.89), 
# which indicates that students who score high on math also tend to 
# score high on science. 
# Conversely, students who score low on math also tend to score low on science.
  
#  A negative number for covariance indicates that as one variable increases, 
# a second variable tends to decrease. 
# For example, math and history have a negative covariance (-27.16), 
# which indicates that students who score high on math tend to score low on history. 
# Conversely, students who score low on math tend to score high on history.  
  
  