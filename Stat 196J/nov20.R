
library(tidyr)
stocks<- data.frame(time= as.Date('2009-01-01') + 0:9, 
                    mcdonalds= rnorm(10,0,1),
                    walmart= rnorm(10,3,2))
stocks

?gather
gather(stocks, key= stockname, value= pricechange, -time)
# -time what items you want stacked

library(readr)
advert <- read_csv("//sacfiles1/home/u2/ce552/Desktop/Stat 196J/Advertising.csv")
View(advert)

advert<- advert[ ,-1] # remove first col
head(advert)

library(lattice)
splom(advert)

tvreg<- lm(sales~TV,data= advert)
summary(tvreg)
plot(TV, sales)
abline(tvreg)
