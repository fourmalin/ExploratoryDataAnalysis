# set working directory
setwd("D:/data learning/exdata-data-household_power_consumption")

# required packages
library(lubridate)

        
# read the raw table and limit to 2 days
selectData<-read.table("household_power_consumption.txt",header=TRUE,sep=';',na.strings='?')
selectData<-selectData[selectData$Date=='1/2/2007' | selectData$Date=='2/2/2007',]
        
# clean up the variable names and convert date/time fields
clname<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity','SubMetering1','SubMetering2','SubMetering3')
colnames(selectData)<-clname
selectData$DateTime<-dmy(selectData$Date)+hms(selectData$Time)
        
# write a clean data set to the directory
write.table(selectData,file="project1.txt",sep='|',row.names=FALSE)