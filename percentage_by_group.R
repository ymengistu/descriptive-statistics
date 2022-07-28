
# Calculate Percentage by Group in R

library(dplyr)

df %>%
  group_by(group_var) %>%
  mutate(percent = value_var/sum(value_var))

# Example-Suppose we have the following data frame that shows the points 
# scored by basketball players on various teams:

#create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'A', 'B', 'B', 'B', 'B', 'B'),
                 points=c(12, 29, 34, 14, 10, 11, 7, 36, 34, 22))

#view data frame
df

# create a new column in the data frame that shows the percentage of 
# total points scored, grouped by team:

library(dplyr)

#calculate percentage of points scored, grouped by team
df %>%
  group_by(team) %>%
  mutate(percent = points/sum(points))

# The percent column shows the percentage of total points 
# scored by that player within their team.
# For example, players on team A scored a total of 99 points.