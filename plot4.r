# set working directory (change this to fit your needs)
setwd("D:/data learning/")

# load data
source("clean.r")

# open device
png(filename="plot4.png",width=480,height=480,units='px')

# make 4 plots
par(mfrow=c(2,2))

# plot data on top left (1,1)
plot(selectData$DateTime,selectData$GlobalActivePower,ylab="Global Active Power",xlab="",type="l")

# plot data on top right (1,2)
plot(selectData$DateTime,selectData$Voltage,xlab="datetime",ylab="Voltage",type="l")

# plot data on bottom left (2,1)
color1<-c("black","red","blue")
clolrn<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
plot(selectData$DateTime,selectData$SubMetering1,type="l",col=color1[1],xlab="",ylab="Energy sub metering")
lines(selectData$DateTime,selectData$SubMetering2,col=color1[2])
lines(selectData$DateTime,selectData$SubMetering3,col=color1[3])

# plot data on bottom right (2,2)
plot(selectData$DateTime,selectData$GlobalReactivePower,xlab="datetime",ylab="Global_reactive_power",type='l')

# close device
dev.off()