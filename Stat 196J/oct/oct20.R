#### from HW ####
plot(0:10,dbinom(0:10,10,0.5),type='h')
plot(c(5,7,9))

# how to separate data into training and test
attach(iris)
detach(iris)
searchpath()
searchpaths()
Species

View(iris)

# create a training set for iris data
# 80 training 70 test
set.seed(10) # to make a random sample reproducible
train.index<- sample(1:nrow(iris), size= 80, replace= FALSE)
train.index

iris.train<- iris[train.index, ]
iris.test<-iris[-train.index, ]

# fit a tree on training set
library(tree)
iristree<- tree(Species~., data= iris.train)
summary(iristree)

# predict species for the test data
preds<- predict(iristree, newdata= iris.test,type= 'class')
# off diagonals are the incorrect classifcations
table(preds, truth= iris.test$Species)
# 91% wrong predictions
sum(preds==iris.test$Species)/nrow(iris.test)
