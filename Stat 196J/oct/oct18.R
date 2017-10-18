#### Bootstrap Samples ####

library(MASS)
set.seed(3)
# row numbers of the data in the sample
index<- sample(1:nrow(Pima.tr), 20, replace= TRUE)
index
# how many duplicates there are
length(unique(index))
# 19
bootstrapmp<- Pima.tr[index,]
bootstrapmp
head(bootstrapmp)

# aggregation means running the model many many times

#### Random Forests ####
library(randomForest)
?randomForest
set.seed(387)
pimaForest<- randomForest(type~.,data= Pima.tr)
pimaForest
# OAB out of bag  error lets you know if a subject is left out
# 23/(109+23)=0.1742424

library(ggplot2)
# visual of the data

p<- ggplot(Pima.tr, aes(x= glu,y= age, col= type))+ geom_point()
p

# highest values are most important
# high bad low good
importance(pimaForest) 
varImpPlot(pimaForest)

View(iris)
summary(iris)
library(tree)
irisTree<- tree(type~.,data= iris)
irisTree
