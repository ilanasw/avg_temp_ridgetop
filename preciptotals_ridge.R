#read in data
precipraw <- read.csv("/Users/Ilana/Desktop/updated_ridgetop_1995_2019_refined.csv", 
                     header=TRUE, sep = ',', stringsAsFactors = FALSE)

#sort into dataframes by year
precipsplit<-split(precipraw, precipraw$Year)

#return sum for each year
rainfalltotals=NULL
for (i in precipsplit){
  rain_sum<-data.frame(i$Year[1], sum(i$TotalRain))
  rainfalltotals<-rbind(rainfalltotals, rain_sum)
}

rainfalltotals$sum.i.TotalRain.[6]<- 803.356 #2000
rainfalltotals$sum.i.TotalRain.[7]<- 473.8 #2001

#rainfalltotals$sum.i.TotalRain.[17]<- 9653 #2016
#rainfalltotals$sum.i.TotalRain.[18]<-9683 #2017

# Simple Bar Plot 
counts<-(rainfalltotals$sum.i.TotalRain.)
barplot(counts,names.arg = rainfalltotals$i.Year.1., main="Annual Precipitation (Ridgetop)", 
        xlab="Year", ylab="Precipitation (mm)")



