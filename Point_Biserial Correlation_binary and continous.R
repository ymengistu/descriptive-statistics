

#  Point-Biserial Correlation in R-
# Point-biserial correlation is used to measure the relationship between 
# a binary variable, x, and a continuous variable, y.

# Similar to the Pearson correlation coefficient, the point-biserial 
# correlation coefficient takes on a value between -1 and 1 where:

# -1 indicates a perfectly negative correlation between two variables
# 0 indicates no correlation between two variables
# 1 indicates a perfectly positive correlation between two variables

# Example: Point-Biserial Correlation in R
# Suppose we have a binary variable, x, and a continuous variable, y:
  
x <- c(0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0)
y <- c(12, 14, 17, 17, 11, 22, 23, 11, 19, 8, 12)

# We can use the built-in R function cor.test() to calculate the point-biserial 
# correlation between the two variables:
    
    #calculate point-biserial correlation
    cor.test(x, y)

    # From the output we can observe the following:
    
#    The point-biserial correlation coefficient is 0.218
#    The corresponding p-value is 0.5193
#    Since the correlation coefficient is positive, this indicates that 
#    when the variable x takes on the value "1" that the variable y tends 
#    to take on higher values compared to when the variable x takes on the value "0."
    
#   However, since the p-value of this correlation is not less than .05, 
#   this correlation is not statistically significant. 
    
#   Note that the output also provides a 95% confidence interval for the true 
#   correlation coefficient, which turns out to be:
      
#       95% C.I. = (-0.439, 0.723)
    
#     Since this confidence interval contains zero, this is further evidence 
#     that the correlation coefficient is not statistically significant.     