#read data
dat<-read.csv('/Users/Ilana/Desktop/updated_ridgetop_1995_2019.csv',header=T,sep=',',skip=2)      #Reads in file

x<-cbind(as.Date(dat[,1],'%m/%d/%y'),dat) #Defines the date structure of the Date column in the .csv file

yr<-as.numeric(substr(x[,1],1,4))  #Creates a vector for year by isolating the first 4 characters in the Date column

mo<-as.numeric(substr(x[,1],6,7))  #Creates a vector for month by isolating characters 6 & 7 from the Date column

x<-cbind(yr,mo,x)    #Combines everything into one matrix

colnames(x)<-c('Year','Month','Date',colnames(dat))     #names the columns of the new matrix


#temp<-tapply(x[,'AvgTEMP_C'],list(x[,'Year'],x[,'Month']),mean)

mean_all<-aggregate(x, by=list(x$Year, x$Month), FUN=mean, na.rm=TRUE)

temp<-mean_all$'Avg' #average temperature 

precip<-as.matrix(mean_all$'Tot.1')




  