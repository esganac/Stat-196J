#### Problem 1 ####
# 1a
x <- c(2, 10, 57, NA, 7.6, NA, 200, 9)
# 1b
s.ten <- NULL

index <- NULL
y<- NULL
for (i in 1:length(x)) {
    if (!is.na(x[i])) {
        y <- c(y, x[i])
    }
    if (x[i] < 10 && !is.na(x[i] )) {
        s.ten <- c(s.ten, x[i])
        index<- c(index,i)
    }
}
s.ten

# 1c
index

# 1d
sd(y)

# 1e
sum(is.na(x))

# 1f
y

#### Problem 2 ####

# 2a
n <- 3
n.i<- 1
for (i in 2:n) {
    n.i<- (n.i^2 + 9) / (2 * n.i)
}
n.i

# 2b
n <- 500
n.i <- 1
f.h<- n.i
for (i in 2:n) {
    n.i <- (n.i ^ 2 + 9) / (2 * n.i)
    f.h<- c(f.h, n.i)
}
f.h
# Converges to 3.

# 2c
n <- 600
n.i <- 300
f.h <- n.i
for (i in 2:n) {
    n.i <- (n.i ^ 2 + 9) / (2 * n.i)
    f.h <- c(f.h, n.i)
}
f.h

# Yes, it converges to the value 3.

# 2d
n <- 10
n.i <- -500
f.h <- n.i
for (i in 2:n) {
    n.i <- (n.i ^ 2 + 9) / (2 * n.i)
    f.h <- c(f.h, n.i)
}
f.h
# Yes, because when the value of x1, n.i, is negative it converg

# 2e
n <- 600
n.i <- 300
f.h <- n.i
for (i in 2:n) {
    n.i <- (n.i ^ 2 + 9) / (2 * n.i)
    f.h <- c(f.h, n.i)
}
f.h
plot(f.h)

