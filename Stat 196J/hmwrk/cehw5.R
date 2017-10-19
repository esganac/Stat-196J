1. Suppose that 10 % of Americans are left - handed. Let the random variable X = the number of lefties among 30
randomly selected Americans.
(a) Use R to calculate the probability of exactly 5 lefties among the 30 randomly selected Americans.
(b) Use R to calculate the probability distribution of X. Hint:You can use the function in R from part(a) to
calculate the probability of X = 0, 1, 2, 3, ..., 30 all at once.
(c) Obtain graph of your probabilities from part(b) . Using this syntax plot( < probs from part(a) go
here > , type = "h") .
(d) Suppose a class which holds 30 students has 3 left - handed desks. Use one command in R to calculate the
probability there will be enough left - handed desks for
a random group of 30 students.#### Problem 1 ###### a ##  # prob of exactly 5 lefties out of 30 randomly selected Americansexactly.5 <- dbinom(5, 30, 0.1)exactly.5## b ### prob distribution of X= 0,1,...,30x.prob.dist <- dbinom(1:30, 30, 0.1)x.prob.distpbinom(1:30,30,0.1)## c ## # from part (a) histogramplot(exactly.5, type = "h")# from part (b) histogramplot(x.prob.dist, type = "h")## d ## <- c(dbinom(3,30,0.1))(d) Suppose a class which holds 30 students has 3 left - handed desks. Use one command in R to calculate the
probability there will be enough left - handed desks for
    a random group of 30 students.