## Plot 1
setwd("~/OneDrive/Education/Coursera/Classes/Exploratory Data Analysis/Assignment 1")
hhpc_data <- read.csv("~/OneDrive/Education/Coursera/Classes/Exploratory Data Analysis/Assignment 1/household_power_consumption.txt", sep=";", na.strings="?")
finalData <- hhpc_data[hhpc_data$Date %in% c("1/2/2007","2/2/2007"),]
settime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(settime, finalData)
quartz()
hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()
