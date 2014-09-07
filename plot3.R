png("plot3.png", height = 480, width= 480)
temp <- read.csv("household_power_consumption.txt", sep=";", na.strings="?" )
f <- temp[min(which(temp$Date == "1/2/2007")):max(which(temp$Date == "2/2/2007")),]
f$DateTime <- paste(f$Date, f$Time)
f$DateTime <- strptime(f$DateTime, format = "%d/%m/%Y %H:%M:%S")
plot(f$DateTime, f$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
with(f, lines(f$DateTime, f$Sub_metering_2, col="red"))
with(f, lines(f$DateTime, f$Sub_metering_3, col="blue"))
legend("topright", pch="-", col = c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()