# set working directory
setwd("D:/data learning/exdata-data-household_power_consumption")

# load data
source("clean.r")

# open device
png(filename="plot3.png",width=480,height=480,units="px")

# plot data
color1<-c("black","red","blue")
clolrn<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
plot(selectData$DateTime,selectData$SubMetering1,type="l",col=color1[1],xlab="",ylab="Energy sub metering")
lines(selectData$DateTime,selectData$SubMetering2,col=color1[2])
lines(selectData$DateTime,selectData$SubMetering3,col=color1[3])

# add legend
legend("topright",legend=clolrn,col=color1,lty="solid")

# close device
dev.off()