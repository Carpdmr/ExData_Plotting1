##Plot 4
plot(finalData$settime, finalData$Global_active_power, type="l", col="green", xlab="", ylab="Global Active Power")
plot(finalData$settime, finalData$Voltage, type="l", col="orange", xlab="datetime", ylab="Voltage")
plot(finalData$settime, finalData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(finalData$settime, finalData$Sub_metering_2, type="l", col="red")
lines(finalData$settime, finalData$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=columnlines)
plot(finalData$settime, finalData$Global_reactive_power, type="l", col="blue", xlab="datetime", ylab="Global_reactive_power")
