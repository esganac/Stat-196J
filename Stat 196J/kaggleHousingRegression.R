
# tree models work with NA
# random forest doesn't work with NA

# boxplot for non numeric
# scatterplot for numeric

# Import Training Data ----------------------------------------------------


train = read.csv("//sacfiles1/home/u2/ce552/Desktop/Stat 196J/train.csv") # used so character string variables will be imported as factors

test = read.csv("//sacfiles1/home/u2/ce552/Desktop/Stat 196J/test.csv") 

# Look at the Data and its summary ----------------------------------------

dim(train)
View(train)
str(train)
summary(train)


# Check for Missing Values ------------------------------------------------

library(Amelia)
?missmap  # a graphical display of missing values in the dataset
missmap(train)  # PoolQC, MiscFeature, Alley, Fence, FireplaceQu missing majority of values so I drop them


train <- subset(train, select= -c(Alley, PoolQC,MiscFeature,Fence, FireplaceQu))
dim(train)

test <- subset(test, select= -c(Alley, PoolQC,MiscFeature,Fence, FireplaceQu))


# Use boxplots, scatterplots and correlation matrix to Explore the Data --------
#  Look at the distribution of the target variable (SalePrice)
hist(train$SalePrice)
sum(train$SalePrice>500000)  # find the number of outliers


# Obtain column numbers of factor type variables
# For each factor variable, we obtain side-by-side boxplots of the SalePrice -- one for each level of the factor variable

?sapply
# sapply returns a vector
# applies a function to a column
factor.variable.logical <- sapply(train, is.factor) # logical vector
factor.variable.index <- which(factor.variable.logical)

par(ask=T)  # R asks permission before switching to next graph
par(mfrow=c(2,2))  # set up page to hold 2 rows and 2 col of graphs

for (i in factor.variable.index)
  {
    boxplot(SalePrice~train[[i]], data=train, xlab=names(train)[i])
  }
  

# Extract column numbers of numeric variables and get scatterplot
# of each variable against log(SalePrice)

numeric.variable.index <- which(sapply(train, function(x) !is.factor(x)))
numeric.variable.index

for (i in numeric.variable.index)
  {
    plot(train[[i]], log(train$SalePrice), xlab=names(train)[i])
  }

par(mfrow=c(1,1))


# Graphical display of correlation between numeric variables --------------


library(corrplot)
?corrplot
num.vars.data.only <- train[, numeric.variable.index]
correlation.matrix <- cor(num.vars.data.only, use="pairwise.complete")
corrplot(correlation.matrix)

# A Regression Tree -------------------------------------------------------
#  split into train and test sets
set.seed(3)
train.index <- sample(1:n, n/2, replace=F)
train.subset <- train[train.index, ]
test.subset <- train[-train.index, ]

library(tree)
saleprice.tree <- tree(log(SalePrice)~.-Id, data=train.subset) # cases with missing values OK
summary(saleprice.tree)
plot(saleprice.tree)
text(saleprice.tree)

sales.tree.cv <- cv.tree(saleprice.tree, FUN=prune.tree)
plot(sales.tree.cv)

preds <- predict(saleprice.tree, newdata=test.subset)
plot(log(test.subset$SalePrice), preds)
abline(0,1,col='red')


# Fit single tree using all training data -----------------------------------------


saleprice.tree2 <- tree(log(SalePrice)~.-Id, data=train)

preds2 <- predict(saleprice.tree2, newdata=test)
test.id <- read.csv("~/kaggle/housing regression/test.csv")$Id
submission <- data.frame(Id=test.id,SalePrice=exp(preds2))
write.csv(submission, 'submissionOct2603.csv', row.names=F,quote=F)


# Random forest -----------------------------------------------------------

# Cannot have missing values in data to run randomForest()
# Naive fix, replaces missing values with median for numeric variables or mode for categorical

library(randomForest)
train <- na.roughfix(train)
test <- na.roughfix(test)
test$SalePrice <- rep(NA, nrow(test))


saleprice.forest <- randomForest(log(SalePrice)~.-Id, data=train)
saleprice.forest

#problem with type of predictors in test not matching train - levels??
preds.forest <- predict(saleprice.forest, newdata=test)

submission.forest <- data.frame(Id=test.id,SalePrice=exp(preds.forest))
write.csv(submission.forest, 'submissionOct26forest.csv', row.names=F,quote=F)