## Practice Exam ##

# 1 Vectors
# a
vector <- c(NA, 7, 15, 19, NA, 7)
# b
vector[which(vector > 7)]
# c
which(is.na(vector))
# d
# na.rm= TRUE removes NA"missing values"
mean(vector, na.rm = TRUE)
# e
vector[5] <- 8
# f
vector[2:4]
# g
vector <- c(NA, 7, 15, 19, NA, 7)
vector.10 <- vector * 10

# 2 User-defined fuctions, for loops, if else
# a
x = 5
rental.car <- function(x) {
    total.cost <- 25 + (x * .60)
    return(total.cost)
}
rental.car(x)
# b
x <- c(1, 3, 5, 7, 10, 12)
five <- NULL
for (i in 1:length(x)) {
    if (x[i] > 5) {
        five <- sum(c(five, x[i]))
    }
}
five
# c
sum(x[which(x > 5)])

# 3 Lists
# a
mymat <- matrix(c(2, 7, 3, 1), ncol= 2)
mymat
# b
# need to use = inside list to work
mylist <- list(mymat = matrix(c(2, 7, 3, 1), ncol = 2), x = c(3, 6, 9, 12))
mylist
# c
#extracts the vectors by name and number
mylist$mymat
mylist[[1]]

mylist$x
mylist[[2]]

# d
mylist$x[4]

# e
sum(mylist$mymat[,1])

# f
solve(mylist[[1]])

# 4 Matrices
 B<- matrix(1:9, nrow = 3, byrow =  3)
# a
b.t<- t(B)
# b
# elementwise mult
B * b.t
# c
# matrix mult
B %*% b.t
# d
# replaces third row with new values
B[3,] <- c(4, 2, 1)
# e
# obtains the mean of each col
B <- matrix(1:9, nrow = 3, byrow = 3)
col.means<- apply(B,2,mean)
col.means

# 5 Built in data
# a
# number of rows/col in dataframe
View(OrchardSprays)
nrow(OrchardSprays)
ncol(OrchardSprays)
# b
mean(OrchardSprays[[1]])
# another way
mean(OrchardSprays$decrease)
# c
subset