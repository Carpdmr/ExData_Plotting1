downloadURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
downloadFile <- "./Data/household_power_consumption.zip"
householdFile <- "./Data/household_power_consumption.txt"
##
if (!file.exists(householdFile)) {
     download.file(downloadURL, downloadFile, method = "curl")
     unzip(downloadFile, overwrite = T, exdir = "./Data")
}
hhpc_data <- read.csv("~/OneDrive/Education/Coursera/Classes/Exploratory Data Analysis/Assignment 1/household_power_consumption.txt", sep=";", na.strings="?")
setwd("~/OneDrive/Education/Coursera/Classes/Exploratory Data Analysis/Assignment 1")
hhpc_data <- read.csv("~/OneDrive/Education/Coursera/Classes/Exploratory Data Analysis/Assignment 1/household_power_consumption.txt", sep=";", na.strings="?")
finalData <- hhpc_data[hhpc_data$Date %in% c("1/2/2007","2/2/2007"),]
settime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(settime, finalData)
quartz()