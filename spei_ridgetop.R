#read in data
meanT <- read.csv("/Users/Ilana/Desktop/temp_precip.csv", header=TRUE, sep = ',', stringsAsFactors = FALSE)

#re-order data set
meanT1 <- meanT[order(meanT$Year),]

#calling the library
library(SPEI)
meanT1$PET <- thornthwaite(meanT1$Temp,41.42, na.rm=FALSE) #41.42 being latitude of BRF

#climate water balance, adding a cwbal column
meanT1$CWBAL<-meanT1$Precip-meanT1$PET

#spei different time scales 
spei12<-spei(CWBAL,12)
spei3<-spei(CWBAL,3)
spei24<-spei(CWBAL,24)
spei4<-spei(CWBAL,4)

spei33<-spei(meanT1$Precip-meanT1$PET, scale = 3, distribution='log-Logistic')

plot(spei33)

#Define 3-month timeseries with properties ts()
plot(spei(ts(meanT1$Precip - meanT1$PET,freq=12,start=c(1995,9)),scale = 3),end=c(2019,7))

plot(spei(ts(meanT1$Precip-meanT1$PET,freq=12,start=c(1995,9)),3,
          ref.start=c(1995,9), ref.end=c(2019,7)))

plot(spei(ts(meanT1$Precip - meanT1$PET,freq=12,start=c(1995,9)),scale = 3, ref.start=c(1995,9), ref.end=c(2019,7)))


#plot spi
plot(spi(ts(meanT1$Precip,freq=12,start=c(1995,9)),3,
          ref.start=c(1995,9), ref.end=c(2019,7)),main='SPI')


#plotting
#plot.spei(spei3, main='SPEI3')
#plot(Year,spei3)



