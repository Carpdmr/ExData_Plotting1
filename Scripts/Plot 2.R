## Plot 2
finalData <- hhpc_data[hhpc_data$Date %in% c("1/2/2007","2/2/2007"),]
settime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(settime, finalData)
quartz()
plot(finalData$settime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
dev.copy(png, file="plot2.png")
dev.off()
