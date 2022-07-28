
#  Partial Correlation--------------- Pearson correlation coefficient

# How to Calculate Partial Correlation in R
# In statistics, we often use the Pearson correlation coefficient to measure 
# the linear relationship between two variables. 
# However, sometimes we're interested in understanding the relationship between
# two variables while controlling for a third variable.

# For example, suppose we want to measure the association between 
# the number of hours a student studies and the final exam score they receive, 
# while controlling for the student's current grade in the class. 
# In this case, we could use a partial correlation to measure the relationship 
# between hours studied and final exam score.

# Example: Partial Correlation in R- Suppose we have the following data frame
# that displays the current grade, total hours studied, and final exam score 
# for 10 students:

#create data frame
df <- data.frame(currentGrade = c(82, 88, 75, 74, 93, 97, 83, 90, 90, 80),
                 hours = c(4, 3, 6, 5, 4, 5, 8, 7, 4, 6),
                 examScore = c(88, 85, 76, 70, 92, 94, 89, 85, 90, 93))

#view data frame
df

# To calculate the partial correlation between each pairwise combination of 
# variables in the dataframe, we can use the pcor() function from the ppcor library:

install.packages("ppcor")
library(ppcor)
  
#calculate partial correlations
  pcor(df)
  
# Here is how to interpret the output:
# Partial correlation between hours studied and final exam score:
    
# The partial correlation between hours studied and final exam score is .191,
  # which is a small positive correlation.
  # As hours studied increases, exam score tends to increase as well, 
  # assuming current grade is held constant.  
  
  # The p-value for this partial correlation is .623, which is not statistically
  # significant at ?? = 0.05.
  
  # Partial correlation between current grade and final exam score:
    
  #   The partial correlation between current grade and final exam score is .736, 
  # which is a strong positive correlation. As current grade increases, exam score
  # tends to increase as well, assuming hours studied is held constant.
  
  #  The p-value for this partial correlation is .024, which is statistically 
  # significant at ?? = 0.05.
  
  # Partial correlation between current grade and hours studied:
  # The partial correlation between current grade and hours studied and final exam
  # score is -.311, which is a mild negative correlation. As current grade increases, 
  # final exam score tends to decreases, assuming final exam score is held constant.
  
  #  The p-value for this partial correlation is 0.415, which is not statistically 
  # significant at ?? = 0.05.
  
  #  The output also tells us that the method used to calculate the partial correlation
  # was "pearson." Within the pcor() function, we could also specify "kendall" or "pearson" 
  # as alternative methods to calculate the correlations.