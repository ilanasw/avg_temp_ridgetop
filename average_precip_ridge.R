#read in data
praw<- read.csv("/Users/Ilana/Desktop/updated_ridgetop_1995_2019_refined.csv", header=TRUE, sep = ",",)

#sort into dataframes by year
psplit<-split(praw, praw$Year)

#return avearge for each year
Average=NULL
for (i in psplit){
  pavg<-data.frame(i$Year[1], mean(i$TotalRain))
  Average<-rbind(Average, pavg)
}

Average$mean.i.TotalRain.[6]<- .10112 #2000
Average$mean.i.TotalRain.[7]<- .0744 #2001


# Simple Bar Plot 
counts <- (Average$mean.i.TotalRain.)
barplot(counts,names.arg = Average$i.Year.1., main="Average Precipitation (Ridgetop)", 
        xlab="Year", ylab="Precipitation (mm)")


