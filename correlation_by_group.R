

# Calculate Correlation By Group in R   --------------------------------------

#  You can use the following basic syntax to calculate the correlation between
#  two variables by group in R:

library(dplyr)

df %>%
  group_by(group_var) %>%
  summarize(cor=cor(var1, var2))

# This particular syntax calculates the correlation between var1 and var2, 
# grouped by group_var.

# Example-Suppose we have the following data frame that contains information
# about basketball players on various teams:

#create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(18, 22, 19, 14, 14, 11, 20, 28),
                 assists=c(2, 7, 9, 3, 12, 10, 14, 21))

#view data frame
df

# We can use the following syntax from the dplyr package to calculate the
# correlation between points and assists, grouped by team:

library(dplyr)

df %>%
  group_by(team) %>%
  summarize(cor=cor(points, assists))
# A tibble: 2 x 2
# team    cor

#1 A     0.603
#2 B     0.982

# From the output we can see:The correlation coefficient between
# points and assists for team A is .603.
# The correlation coefficient between points and assists for team B is .982.

# Since both correlation coefficients are positive, this tells us that the
# relationship between points and assists for both teams is positive.








