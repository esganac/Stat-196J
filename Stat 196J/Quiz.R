##### Estimating Probability Using Monte Carlo Simulation ####

# Simulate tosses of a pair of dice
# 1000 tosses of a pair dice
# prob of getting the sum of dye equaling 7
mytosses<- sample(1:6,2*1000,replace= T) # 2*1000 pair of dice
mytosses.mat<- matrix(mytosses, ncol= 2) # separates samples 2000/2 in two col
mysums<- apply(mytosses.mat, 1,sum) # adds each the columns to each other
equal.7<- sum(mysums==7) # adds the total of 7s in mysums
mc.prob.sum.is.7<-sum(mysums==7)/1000 # compare to 1/6

# Simulate tossing a dice
# 1000 tosses, how many equal 2?
num.tosses<- 1000
mytosses<- sample(1:6,num.tosses,replace= T) 
equal.2<- sum(mytosses== 2) # adds the total of 2s
mc.prob.2<- sum(mytosses==2)/num.tosses # compare to 1/6

# An experiment consists of randomly selecting three numbers withOUT
# replacement from the values 1,2,3,...,9,10. Use a Monte Carlo Simulation
# to estimate the probability the sum of the three number is under 11 with
# margin of error at most 0.01.

set.seed(20) 
mysums <- NULL
reps <- 1/0.01^2
for (i in 1:reps)
   {
    mysamp <- sample(1:10, size=3, replace=F)
    mysums[i] <- sum(mysamp)
    }
sum(mysums<11)/reps

#### A Decision Tree for Predicting Diabetes ####

library(MASS)
# to see size of dataset
dim(Pima.tr)
?Pima.tr
View(Pima.tr)
summary(Pima.tr)
library(tree)
# predictive model
tree<- tree(type~.,data= Pima.tr)
tree
summary(tree)

plot(tree)
text(tree)

# sort data using order
sort.data<- Pima.tr[order(Pima.tr$glu),] # orders glu from low to high

# creates a subest of data with glucose under 123.5
under123.5<- subset(Pima.tr, glu<123.5)
View(under123.5)
# yes and no
table(under123.5$type)

over123.5<- subset(Pima.tr, glu>= 123.5)
table(over123.5$type)

summary(tree)
str(Pima.te)

Pima.test.pred<- predict(tree,Pima.te,type= "class")
Pima.test.pred
# column bind
cbind(Pima.test.pred,Pima.te$type)
# 1 is no 2 is yes
table(Pima.test.pred,Pima.te$type)
# misclassification would be (44 + 38) / 332

library(rpart)
# view r packages
library()
# to install package go to tools 

library(MASS)
View(Pima.tr)
library(tree)

# want to avoid overfitting
# ex. heigh weight 
# Soln- Pruning the tree

## How to Prune a Tree to avoid overfitting ##
# how does changing the number of terminal nodes
# affects the deviance


