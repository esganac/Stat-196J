#### Caitlin Esgana 
#### Norris        
#### STAT 196J      

#########################################################################################

#### Problem 1 #####

## a ## 

library(readxl)
# imports excel file
deptOfEducationFundingbyState <- read_excel("~/Documents/STAT 196J/HW4/deptOfEducationFundingbyState.xlsx",
                                                  col_names = FALSE)
# removes NA rows
data <- na.omit(deptOfEducationFundingbyState)

## b ##
View(state.x77)
? state.x77
rownames(state.x77)
# merges the data sets together by their matching rownames
mergeddata <- merge(state.x77, deptOfEducationFundingbyState, by.x = 0, by.y = 1)
mergeddata

## c ##
# removes columns with non numerical values and converts char to numeric
mat.data <- data.matrix(mergeddata[c(-1)])
# gets the matrix of correlation coefficients
cor.data <- cor(mat.data)
View(cor.data)
# Population and murder are most correlated with federal education funds.

## d ##
library(corrplot)
plot.data <- corrplot(cor.data)
plot.data

#########################################################################################

#### Problem 2 ####

## a ##
library(readr)
# imports dataset from url
pima_indians_diabetes <- read_csv("https://archive.ics.uci.edu/ml/machine-learning-databases/pima-indians-diabetes/pima-indians-diabetes.data",
                                    col_names = FALSE)

## b ##
pima.data <- pima_indians_diabetes
# adds short column names to the dataset
colnames(pima.data) <- c('NumPreg', 'PGC', 'DBP', 'TSFT', 'SI', 'BMI', 'DPF', 'Age', 'CV')

# 1. Number of times pregnant
# 2. Plasma glucose concentration a 2 hours in an oral glucose tolerance test
# 3. Diastolic blood pressure (mm Hg)
# 4. Triceps skin fold thickness (mm)
# 5. 2-Hour serum insulin (mu U/ml)
# 6. Body mass index (weight in kg/(height in m)^2)
# 7. Diabetes pedigree function
# 8. Age (years)
# 9. Class variable (0 or 1)

## c ##
summary(pima.data)
# retrieves row indices of 0s in column 2
which(pima.data[, 2] == 0)
# replaces 0s in column 2 with NA
pima.data[, 2][pima.data[, 2] == 0] <- NA
# removes rows with NA
pima.data <- na.omit(pima.data)
# replaces 0s in column 6 with NA
pima.data[, 6][pima.data[, 6] == 0] <- NA
pima.data

## d ##
# linear regression model 
lm(BMI ~ TSFT, pima.data)
# plots a scatterplot of the linear regression model
plot(pima.data$BMI, pima.data$TSFT, col = "red", xlab = "Body mass index", ylab = "Triceps skin fold thickness")
# overlays the best fit line
# intercept 28.9984 slope 0.1668
abline(28.9984, 0.1668)

## e ##

# imports package with scatterplot matrix function
library(lattice)
# creates a scatterplot matrix for the first 5 columns of the dataset
splom(pima.data[, 1:5])
# The 2-Hour serum insulin and Plasma glucose concentration have the strongest
# linear correlation.

## f ##
# 365 days in a year times the column Age
pima.data[, "Age in Days"] <- pima.data$Age * 365

#########################################################################################

#### Problem 3 ####

? ChickWeight

## a ##
# Chick and Diet are variables that are factors.

## b ## 
View(ChickWeight)
data <- ChickWeight
# retrieves row indices of column 2 that equal 21
row.indices <- which(data[, 2] == 21)
# creates a dataset with row indices of column 2 that equal 21
days.21 <- data[row.indices,]
# obtains the mean weight at 21 days for all chicks on that diet
mean.weight <- tapply(days.21$weight, days.21$Diet, FUN = mean)
mean.weight

## c ##
# splits the dataframe into subgroups by diet
diet.data <- split(data, data$Diet)

#########################################################################################

#### Problem 4 #####

#### doesn't work ####

set.seed(20)
days <- 365
students <- 20
#birthdays<- sample(days, students, replace= TRUE)
#birthdays<-c(1,22,33,22)
#birthdays

same.day <- NULL
reps <- 1 / 0.001 ^ 2
for (i in 1:reps) {
    birthdays <- sample(days, students, replace = TRUE)
    same.day[i] <- length(unique(birthdays))
}
same.day
sum(same.day == 2) / reps

#### Problem 5 #####
students <- c('F', 'F', 'M', 'F', 'M', 'M', 'M', 'M', 'F', 'M')
campus <- c(1, 1, 0, 0, 1, 0, 1, 0, 0, 0)
# constructs a dataframe with the vectors students and campus
df <- data.frame(students, campus)
# obtains a 2x2 contingency table for the dataframe
table(df)