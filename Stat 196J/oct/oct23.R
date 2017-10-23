### HW ####
plot(1:3,1:3)
abline(h= 2)
exp(1)

#### Cross-validarion ####
library(MASS)
head(fgl)
?fgl
View(fgl)
# split into three groups by size
# create group indexes
n<- nrow(fgl)
214/3 # 71.33
gp.vec<- c(rep(1, 71),rep(2, 71), rep(3, 72))
gp.vec
# sample vector by w/o replacement
set.seed(366)
gp.vec.random.order<- sample(gp.vec, 214, replace= F)
gp.vec.random.order

fgl$cvgroup<- gp.vec.random.order
View(fgl)
table(fgl$cvgroup)

#### First Fold ####
# build a tree using gorup 2 and 3 data

fgl.not.group1<- subset(fgl, cvgroup!= 1)
View(fgl.not.group1)

library(tree)
treeNotGroup1<- tree(type~. -cvgroup, data= fgl.not.group1)
summary(treeNotGroup1)

# nopw use tree fitted from groups 2 and 3 to predict for 
# group 1
fgl.group1<- subset(fgl, cvgroup== 1)
View(fgl.group1)

grp1.pred<- predict(treeNotGroup1, newdata= fgl.group1, type= "class")
grp1.pred
sum(grp1.pred== fgl.group1$type)/nrow(fgl.group1)

# 35/71= 0.4929577

#### Second Fold: build tree w/ groups 1 and 3 ####
fgl.not.group2<- subset(fgl, cvgroup!= 2)
View(fgl.not.group2)


treeNotGroup2<- tree(type~. -cvgroup, data= fgl.not.group2)
summary(treeNotGroup1)


fgl.group2<- subset(fgl, cvgroup== 2)
View(fgl.group2)

grp2.pred<- predict(treeNotGroup2, newdata= fgl.group2, type= "class")
grp2.pred
sum(grp2.pred== fgl.group2$type)/nrow(fgl.group2)
# 0.63

#### Third Fold: groups 1 and 2 ####
fgl.not.group3<- subset(fgl, cvgroup!= 3)
View(fgl.not.group3)


treeNotGroup3<- tree(type~. -cvgroup, data= fgl.not.group3)
summary(treeNotGroup3)


fgl.group3<- subset(fgl, cvgroup== 3)
View(fgl.group3)

grp3.pred<- predict(treeNotGroup1, newdata= fgl.group3, type= "class")
grp3.pred
sum(grp3.pred== fgl.group3$type)/nrow(fgl.group3)
# 0.81

## add misclassification rate from every fold then divide
## by number of rows
# 130/nrow(fgl)
