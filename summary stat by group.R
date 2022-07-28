

#  Summary Statistics by Group in R  ----------------------------------

# There are two basic ways to calculate summary statistics by group in R:

# Method 1: Use tapply() from Base R   ---------------------------------

tapply(df$value_col, df$group_col, summary)


# Method 2: Use group_by() from dplyr Package  -------------------------

library(dplyr)

df %>%
  group_by(group_col) %>% 
  summarize(min = min(value_col),
            q1 = quantile(value_col, 0.25),
            median = median(value_col),
            mean = mean(value_col),
            q3 = quantile(value_col, 0.75),
            max = max(value_col))

# Method 1: Use tapply() from Base R
# The following code shows how to use the tapply() function from base R to 
# calculate summary statistics by group:
  
#create data frame
  df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                   points=c(99, 68, 86, 88, 95, 74, 78, 93),
                   assists=c(22, 28, 31, 35, 34, 45, 28, 31),
                   rebounds=c(30, 28, 24, 24, 30, 36, 30, 29))

#calculate summary statistics of 'points' grouped by 'team'
tapply(df$points, df$team, summary)

# Method 2: Use group_by() from dplyr Package  --------------------------------
# The following code shows how to use the group_by() and summarize() functions 
# from the dplyr package to calculate summary statistics by group:

library(dplyr)

#create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(99, 68, 86, 88, 95, 74, 78, 93),
                 assists=c(22, 28, 31, 35, 34, 45, 28, 31),
                 rebounds=c(30, 28, 24, 24, 30, 36, 30, 29))

#calculate summary statistics of 'points' grouped by 'team'
df %>%
  group_by(team) %>% 
  summarize(min = min(points),
            q1 = quantile(points, 0.25),
            median = median(points),
            mean = mean(points),
            q3 = quantile(points, 0.75),
            max = max(points))

# Notice that both methods return the exact same results.
# It's worth noting that the dplyr approach will likely be faster for large
# data frames but both methods will perform similarly on smaller data frames.