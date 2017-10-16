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

# Cross Validation
# split data set into ten fold
# ex. 10 chunks "folds" of 20 rows
# removes first fold then builds tree based on 
# remaining folds
# then removes second fold and builds based on fold 1 and
# remaining folds

## Random Forest and Bagging ##

# import https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data
abalone<- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data",header = FALSE)
names(abalone)<- c('sex','length','diameter','ht','ww','sw','vw','shellw','rings')
View(abalone)

abalone.tree<- tree(sex~.,data=abalone)
plot(abalone.tree)
text(abalone.tree)
abalone.tree
