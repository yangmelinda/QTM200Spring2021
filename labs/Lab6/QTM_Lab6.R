#####################################################
## File: Lab6.R                                    ##
## Binary and Multinomial Logit Regression in R    ##
#####################################################


# set working directory
setwd("~/Documents/GitHub/QTM200Spring2021/labs/Lab6/")

## Exercises:

## (1) Binary logits:

# Employing a sample of 1643 men between the ages of 20 and 24 from the U.S. National Longitudinal Survey of Youth.
# Powers and Xie (2000) investigate the relationship between high-school graduation and parents' education, race, family income, 
# number of siblings, family structure, and a test of academic ability. 

#The dataset contains the following variables:
# hsgradWhether: the respondent was graduated from high school by 1985 (Yes or No)
# nonwhite: Whether the respondent is black or Hispanic (Yes or No)
# mhs: Whether the respondent’s mother is a high-school graduate (Yes or No)
# fhs: Whether the respondent’s father is a high-school graduate (Yes or No)
# income: Family income in 1979 (in $1000s) adjusted for family size
# asvab: Standardized score on the Armed Services Vocational Aptitude Battery test 
# nsibs: Number of siblings
# intact: Whether the respondent lived with both biological parents at age 14 (Yes or No)

graduation <- read.table("http://statmath.wu.ac.at/courses/StatsWithR/Powers.txt")

# (a) Perform a logistic regression ofhsgradon the other variables in the data set.
# Compute a likelihood-ratio test of the omnibus null hypothesis that none of the explanatory variables influences high-school graduation. 
# Then construct 95-percent confidence intervals for the coefficients of the seven explanatory variables. 
# What conclusions can you draw from these results? Finally, offer two brief, but concrete, interpretations of each of the estimated coefficients of income and intact.

# (b) The logistic regression in the previous problem assumes that the partial relationship between the log-odds of high-school graduation and number of siblings is linear. 
# Test for nonlinearity by fitting a model that treats nsibs as a factor, performing an appropriate likelihood-ratio test. 
# In the course of working this problem, you should discover an issue in the data. 
# Deal with the issue in a reasonable manner. 
# Does the result of the test change?


## (2) Multinomial logits:

# This data set is analyzed by Long (1997).  The response variable has four ordered categories:
# Strongly Disagree, Disagree, Agree, and Strongly Agree in relation to the statement
# “A working mother can establishjust as warm and secure a relationship with her children as a mother who does not work."

# The explanatory variables are:
# the year of the survey (1977 or 1989),
# the gender of the respondent, 
# the race of the respondent (white or non-white), 
# the respondent’s age, and 
# the prestige of the respondent’s occupation (a quantitative variable)

workingMoms <- read.table("http://statmath.wu.ac.at/courses/StatsWithR/WorkingMoms.txt", header=T)

# (a) Perform an ordered (proportional odds) logistic regression of attitude toward working mothers on the other variables.
# What conclusions do you draw?

# (b) Assess whether the proportional-odds assumption appears to hold for this regression. 
# Fit a multinomial logit model to the data, and compare and contrast the results with those from the proportional odds model.

# (c) Consider that possibility that gender interacts with the other explanatory variables in influencing the response variable. 
# What do you find?

