setwd("~/OneDrive/Education/Coursera/Classes/Exploratory Data Analysis/Assignment 1")
hhpc_data <- read.csv("~/OneDrive/Education/Coursera/Classes/Exploratory Data Analysis/Assignment 1/household_power_consumption.txt", sep=";", na.strings="?")
finalData <- hhpc_data[hhpc_data$Date %in% c("1/2/2007","2/2/2007"),]
settime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(settime, finalData)
quartz()

## Plot 1
hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")


## Plot 2
plot(finalData$settime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

## Plot 3
plot(finalData$settime, finalData$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(finalData$settime, finalData$Sub_metering_2, col=columnlines[2])
lines(finalData$settime, finalData$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
columnlines <- c("black","red","blue")
par(mfrow=c(2,2))

##Plot 4
plot(finalData$settime, finalData$Global_active_power, type="l", col="green", xlab="", ylab="Global Active Power")
plot(finalData$settime, finalData$Voltage, type="l", col="orange", xlab="datetime", ylab="Voltage")
plot(finalData$settime, finalData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(finalData$settime, finalData$Sub_metering_2, type="l", col="red")
lines(finalData$settime, finalData$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=columnlines)
plot(finalData$settime, finalData$Global_reactive_power, type="l", col="blue", xlab="datetime", ylab="Global_reactive_power")

