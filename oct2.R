# HW
# D^-1 in hw means solve()

# Extracting Components of List Output

hw<- c(90,35,100,77,80)
final<- c(86,27,91,65,81)
# formula has form y~x where y is what 
# you want to predict and x is one or more predictors
mymodel<- lm(final~ hw) 
attributes(mymodel)

mymodel$coefficients
plot(hw, final, pch= 13)
# a,b the intercept and slope
abline(-8.28,1.025)
abline(mymodel$coefficients)

# 3d from HW
mydat<- cbind(rep(1,5),hw)
mydat
plot(mydat[,2],final)

# Merging

alldata<- merge(classBeverage,ClassfavoriteNumData,by.x= "Name",by.y="Name", all= T)
alldata
# how to get all people even if no match
# all= T
?merge
# merging columns
alldata$sqrtnumpets<- sqrt(alldata$NumPets)
alldata

alldata$Petindicator <- ifelse(alldata$NumPets> 0, "Y", "N")
alldata
alldata$CoffeeorTea[1]<- NA
alldata

?complete.cases
# used to subset rows
complete.cases(alldata)
alldata2<- alldata[complete.cases(alldata),]
alldata2


