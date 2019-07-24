traw<- read.csv("/Users/Ilana/Desktop/regional_temp.csv", header=TRUE)


barplot(traw$NE_temp,names.arg = traw$Year, main="Northeast Regional Average Temperature", 
        xlab="Year", ylab="Temperature (ºC)")



#library(ggplot2)
#traw<- read.csv("/Users/Ilana/Desktop/regional_temp.csv", header=TRUE)

#ggplot(traw, aes(Year, NE_temp))+
#  geom_bar(stat = "identity")
#year.temp<-table(traw$Year)




