praw<-read.csv("/Users/Ilana/Desktop/regional_temp.csv", header=TRUE)


barplot(praw$TotalRain,names.arg = praw$Year, main="Northeast Regional Annual Precipitation", 
        xlab="Year", ylab="Precipitation (mm)")


