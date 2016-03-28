# set working directory
setwd("D:/data learning/exdata-data-household_power_consumption")

# load data
source("clean.r")

# open device
png(filename='plot1.png',width=480,height=480,units='px')

# plot data
hist(selectData$GlobalActivePower,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")

# Turn off device
dev.off()