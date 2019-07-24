#read in data
traw<- read.csv("/Users/Ilana/Desktop/updated_ridgetop_1995_2019_refined.csv", header=TRUE, sep = ",",)

#sort into dataframes by year
tsplit<-split(traw, traw$Year)

#return avearge for each year
Average=NULL
for (i in tsplit){
  tavg<-data.frame(i$Year[1], mean(i$AvgTEMP_C))
  Average<-rbind(Average, tavg)
}

Average$mean.i.AvgTEMP_C.[2]<- 8.84 #1996
Average$mean.i.AvgTEMP_C.[4]<- 10.61 #1998
Average$mean.i.AvgTEMP_C.[5]<- 7.13 #1999
Average$mean.i.AvgTEMP_C.[6]<- 9.762 #2000
Average$mean.i.AvgTEMP_C.[7]<- 14.67 #2001
Average$mean.i.AvgTEMP_C.[8]<- 10.446 #2002


# Simple Bar Plot 
counts <- (Average$mean.i.AvgTEMP_C.)
barplot(counts,names.arg = Average$i.Year.1., main="Average Temperature (Ridgetop)", 
        xlab="Year", ylab="Temperature (ºC)")


