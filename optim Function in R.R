
## first set working directory -->>  session----set working directory---choose directory/folder

# optim Function in R (2 Examples)  +++++++++++++++++++


#You can use the optim function in R for general-purpose optimizations.
# This function uses the following basic syntax:
  
optim(par, fn, data, ...)

# where:
# par: Initial values for the parameters to be optimized over
# fn: A function to be minimized or maximized
# data: The name of the object in R that contains the data

#The following examples show how to use this function in the following
# scenarios:
  
#  1. Find coefficients for a linear regression model.
#  2. Find coefficients for a quadratic regression model.

#  Example 1: Find Coefficients for Linear Regression Model
# The following code shows how to use the optim() function to 
# find the coefficients for a linear regression model by minimizing
# the residual sum of squares:
  
  #create data frame
  df <- data.frame(x=c(1, 3, 3, 5, 6, 7, 9, 12),
                   y=c(4, 5, 8, 6, 9, 10, 13, 17))

  #define function to minimize residual sum of squares
min_residuals <- function(data, par) {
  with(data, sum((par[1] + par[2] * x - y)^2))
}

#find coefficients of linear regression model
optim(par=c(0, 1), fn=min_residuals, data=df)

#Using the values returned under $par, we can write the following 
# fitted linear regression model:

# y = 2.318 + 1.162x

# We can verify this is correct by using the built-in lm() function in R 
# to calculate the regression coefficients:
  
  #find coefficients of linear regression model using lm() function
  lm(y ~ x, data=df)
  
# These coefficient values match the ones we calculated using the optim() function.
  
  #Example 2: Find Coefficients for Quadratic Regression Model
#  The following code shows how to use the optim() function to find
  # the coefficients for a quadratic regression model by minimizing 
  # the residual sum of squares:
    
    #create data frame
    df <- data.frame(x=c(6, 9, 12, 14, 30, 35, 40, 47, 51, 55, 60),
                     y=c(14, 28, 50, 70, 89, 94, 90, 75, 59, 44, 27))
  
  #define function to minimize residual sum of squares
  min_residuals <- function(data, par) {
    with(data, sum((par[1] + par[2]*x + par[3]*x^2 - y)^2))
  }
  
  #find coefficients of quadratic regression model
  optim(par=c(0, 0, 0), fn=min_residuals, data=df)
  
  # Using the values returned under $par, we can write the following 
  # fitted quadratic regression model:
  
#  y = -18.261 + 6.744x - 0.101x^2
  
#We can verify this is correct by using the built-in lm() function in R:
  #create data frame
  df <- data.frame(x=c(6, 9, 12, 14, 30, 35, 40, 47, 51, 55, 60),
                   y=c(14, 28, 50, 70, 89, 94, 90, 75, 59, 44, 27))
  
  #create a new variable for x^2
  df$x2 <- df$x^2
  
  #fit quadratic regression model
  quadraticModel <- lm(y ~ x + x2, data=df)
  
  #display coefficients of quadratic regression model
  summary(quadraticModel)$coef
  
  #These coefficient values match the ones we calculated using the optim() function.
  