png("plot2.png", height = 480, width= 480)
temp <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
f <- temp[min(which(temp$Date == "1/2/2007")):max(which(temp$Date == "2/2/2007")),]
f$DateTime <- paste(f$Date, f$Time)
f$DateTime <- strptime(f$DateTime, format = "%d/%m/%Y %H:%M:%S")
plot(f$DateTime, f$Global_active_power, type = "l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()