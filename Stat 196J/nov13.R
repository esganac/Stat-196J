
i= 5
paste("pic",i,".jpg")

# geographic graphs
library(maps)
library(ggplot2)
library(RColorBrewer)

crime.data.by.state<- data.frame(murder= USArrests$Murder,
                                 state= tolower(rownames(USArrests)))
my.map.coord<- map_data("state")

myplot<- ggplot(crime.data.by.state, aes(fill= murder)) 
                  + geom_map(aes(map_id= state), map= my.map.coord, alpha= 0.8)
                  + expand_limits(x= my.map.coord$long, y= my.map.coord$lat)
                  + scale_fill_gradientn(colors= brewer.pal(n= 8, name= "YlGnBu"))
                             