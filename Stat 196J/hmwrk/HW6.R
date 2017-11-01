
#### Problem 1 ####
## a ##
library(readxl)
data<- read_excel("~/Documents/STAT 196J/HW 6/default of credit card clients.xls")
View(data)

# replaces column names with row 1 that has attribute names
#colnames(data)<- data[c(1),]
clean.data<- data[-c(1), ] # removes row with attribute names

# converts all categorical variables to "factor" type variables
cat.col<- c(3:5,7:12,25) # column indexes that need to be converted
clean.data[ ,cat.col]<- lapply(clean.data[ ,cat.col],factor) # converts to factor
str(data) # shows objects and their structure(i.e chr, factor)

## b ##
set.seed(1) # sets a random seed so random sample is reproducible

## c ##
# creates a random sample
# 30000 row / 2 = 15000 for equal size train and test datasets
train.index<- sample(1:nrow(clean.data), 15000, replace= F) 
# creates training data
data.train<- clean.data[train.index, ]
# creates test data
data.test<- clean.data[-train.index, ]

## d ##
data.train<- data.train[,-c(1)] # removes the ID variable
library(tree)
data.tree<- tree(Y~., data= data.train) # creates a tree based on training data
pred<- predict(data.tree, newdata= data.test, type= "class") # uses the tree to make predictions

# i 
plot(data.tree)
text(data.tree, pretty= 0)
summary(data.tree)

# ii
compare<- cbind(pred,data.test$Y) # compares predictions to actuals
table(pred, data.test$Y) # diagonal are correct predictions, off-diagonal are incorrect
# overall misclassification rate for both training and test data 
# how often its wrong or error rate
accuracy<-  sum(pred== data.test$Y)/nrow(data.test) # how well it predicts 
proportion.misclassified<- 1- accuracy # subtracts accuracy from 1
proportion.misclassified # 0.1788

# iii

# sort.data<- data.train[order(data.train$Y), ]
# yes.default<- subset(data.train, Y== 1)
# yes.tree<- tree(Y~., data= yes.default)
# yes.pred<- predict(yes.tree, newdata= data.test, type= "class")
# yes.compare<- cbind(yes.pred,data.test$Y)
# table(yes.pred, data.test$Y)
# 
# no.default<- subset(data.train, Y== 0)
# no.tree<- tree(Y~., data= no.default)
# no.pred<- predict(no.tree, newdata= data.test, type= "class")
# no.compare<- cbind(no.pred,data.test$Y)
# table(no.pred, data.test$Y)

# iv
# There are 4 terminal nodes in the unpruned tree.

## e ##
# use cross validation to help find the size of the best pruned tree
data.cv<- cv.tree(data.tree, FUN= prune.misclass) # cross validation results
data.cv
# $size is the number of terminal node or leaves in the tree
# $dev how much info lost from original tree
# choose $size corresponds to smallest $dev
plot(data.cv) # Plot of $size vs $dev
# $size 2 is the optimal number of nodes

## f ##
# construct the best pruned tree using the training data
tree.prune<- prune.misclass(data.tree, best= 2)
summary(tree.prune)
plot(tree.prune)
text(tree.prune, pretty= T)

prune.pred<- predict(tree.prune, newdata= data.test, type= "class")
table(prune.pred, data.test$Y)
accuracy<-  sum(prune.pred== data.test$Y)/nrow(data.test) # how well it predicts 
proportion.misclassified<- 1- accuracy # subtracts accuracy from 1
proportion.misclassified # 0.1788, same as unpruned tree

## g ##
library(randomForest)
dataForest<- randomForest(Y~., data= data.train) 
dataForest # no. of variables tried at each split was 4
# out of bag error is a method of measuring the prediction
# error of random forests
# OOB is 0.1836
# The unpruned tree and pruned tree had the same misclassfication rate of 0.1788.
# The random forest is pretty close at 0.1836.

## h ##
?randomForest
splitForest<- randomForest(Y~., data= data.train, mtry= 4) 
splitForest
# OOB is 0.1841
# It's slightly higher than the default.

#### Problem 2 ####

## a ##
# A total of 54 observations fell into the 6th node.

## b ##
# Of the observations in node 6,
# 0.00 setosa
# 0.90741 versicolor
# 0.09259 virginica

## c ##
# The predicted category for observations in this node is versicolor.

## d ##
# Pruning the tree will cause all observations in node 6 to split
# in the next level of the tree.

## e ##
# calculating a deviance gives the impurities
# low good 
# high bad- larger dev indicates more impurity and less homogeneity in a node
# P<- (0,0.90741, 0.09259)
ni<- 54
p2<- 0.90741
p3<- 0.09259
n2<-p2*ni
n2
n3<- p3*ni
D<- -2*(n2*log(p2)+n3*log(p3))
D

## f ## 
# Petal length and petal width are a set of predictor variables which would cause
# an observation to be sent to the right at each possible split in the tree.
