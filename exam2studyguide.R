######## Exam 2 Study Guide ########

#### Problem 1 ####
# annual rainfall normally distributed with a mean= 39 in sd= 5.1 in
# if a year is randomly selected, what is the probability 

## a ##
# at MOST 45 inches
at.most.45<- pnorm(45, 39, 5.1, lower.tail= TRUE) # lower.tail= FALSE is above 45
at.most.45

## b ##
# between 45 and 50 inches
below.50<- pnorm(50, 39, 5.1, lower.tail= TRUE)
between.45.50<- below.50- at.most.45
below.45.50

## c ##
# find the value so that only 20% of the years will have rainfall over this value
percentile.20<- qnorm(0.20, 39, 5.1) 
percentile.20

## d ## 
# find the height of this normal distribution at x= 37
height.37<- dnorm(37, 39, 5.1)
height.37

## e ##
# generate the annual rainfall of 7 randomly selected years
random.7<- rnorm(7, 39, 5.1)
random.7

#### Problem 2 ####

## a ##
# import files
library(readr)
companyhistory <- read_csv("~/Documents/STAT 196J/Notes/exam2studyguide/companyhistory.csv")
View(companyhistory)
companyinfo <- read_csv("~/Documents/STAT 196J/Notes/exam2studyguide/companyinfo.csv")
View(companyinfo)

## b ##
# merges the files using the "Company" column
mergeddata<- merge(companyhistory, companyinfo, by.x= 1, b.y= 1, all.x= TRUE, all.y= TRUE) 
# all.x= TRUE and all.y= TRUE merges the rows that don't match the other dataset's columns
mergeddata 

## c ## 
# to see which variales in  companyinfo are being treated as factors
str(companyinfo) # checks the structure of the data
col.indexes<- c(4:5) # column indexes of variables NonProfit and Classification
companyinfo[ ,col.indexes]<- lapply(companyinfo[ ,col.indexes], factor)  # converts variables to factors
str(companyinfo) # check to see if NonProfit and Classificaiton are factors

# contingency table
table(companyinfo$NonProfit, companyinfo$Classification)

## d ##
# scatterplot if Number of Employees(x-axis) vs. Number of Workplace Injuries in 2015
x<- mergeddata$NumberOfEmployees
y<- mergeddata$NumberOfWorkplaceInjuries2015
plot(x,y,col= "red",xlab= "Number of Employees", ylab= "Number of Workplace Injuries in 2015")

## e ##
# add a new column to the merged data frame which gives the Revenue for each company in Japanese yen
# current exchange rate is 1 US dollar equals 109 Japanese yen
mergeddata[ , "Revenue"]<- mergeddata$Revenue2015* 109 # mergeddata[ , "Revenue"] adds new column
# mergeddata$Revenue2015* 109 multiplies revenue by 109

#### Problem 3 ####
# data contains physical char of seeds for two types of wheat seeds
# build a classification tree to predict the seed type in col 8 based on other variables in the
# dataset
library(readr)
seeds <- read_csv("~/Documents/STAT 196J/Notes/exam2studyguide/seeds.csv")
View(seeds)

## a ##
# add brief col names to the df
names(seeds)<- c('A','B','C','leng','wid','asy','groove','type')

## b ##
# convert the type varaible to a factor 
str(seeds) # check structure of dataset
seeds$type<- factor(seeds$type)
is.factor(seeds$type) # checks if it is a factor or not true means yes

## c ##
# sets a seed so results of reproducible
set.seed(1116)

## d ## 
