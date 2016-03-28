# set working directory
setwd("D:/data learning/exdata-data-household_power_consumption")

# load data
source("clean.r")

# open device
png(filename="plot2.png",width=480,height=480,units='px')

# plot data
plot(selectData$DateTime,selectData$GlobalActivePower,ylab="Global Active Power (kilowatts)", xlab="", type='l')

# close device
dev.off()