# calculating a deviance gives the impurities
# low good 
# high bad

# P<- (0,0.90741, 0.09259)
ni<- 54
p2<- 0.90741
p3<- 0.09259
n2<-p2*ni
n2
n3<- p3*ni
D<- -2*(n2*log(p2)+n3*log(p3))
D

#treename$frame$dev
