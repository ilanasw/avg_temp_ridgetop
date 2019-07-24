#read in data
traw<- read.csv("/Users/Ilana/Desktop/lowland_refined_temp.csv", header=TRUE, sep = ",",)

#sort into dataframes by year
tsplit<-split(traw, traw$Year)

#return avearge for each year
Average=NULL
for (i in tsplit){
  tavg<-data.frame(i$Year[1], mean(i$AvgTEMP_C))
  Average<-rbind(Average, tavg)
}

Average$mean.i.AvgTEMP_C.[17]<-10.895  #2011
Average$mean.i.AvgTEMP_C.[18]<- 12.332 #2012

# Simple Bar Plot 
counts <- (Average$mean.i.AvgTEMP_C.)
barplot(counts,names.arg = Average$i.Year.1., main="Average Temperature (Lowland)", 
        xlab="Year", ylab="Temperature (ºC)")


