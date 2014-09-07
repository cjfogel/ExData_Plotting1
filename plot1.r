
setwd("C:/Users/Charles/Desktop/R/EDA/Project1")
png("plot1.png", height = 480, width= 480)
temp <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
f <- temp[min(which(temp$Date == "1/2/2007")):max(which(temp$Date == "2/2/2007")),]
hist(f$Global_active_power, col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
