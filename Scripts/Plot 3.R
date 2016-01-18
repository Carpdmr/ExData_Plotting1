## Plot 3
finalData <- hhpc_data[hhpc_data$Date %in% c("1/2/2007","2/2/2007"),]
settime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(settime, finalData)
quartz()
plot(finalData$settime, finalData$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(finalData$settime, finalData$Sub_metering_2, col=columnlines[2])
lines(finalData$settime, finalData$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
columnlines <- c("black","red","blue")
par(mfrow=c(2,2))
dev.copy(png, file="plot3.png")
dev.off()
