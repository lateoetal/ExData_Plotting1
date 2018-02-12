# File 2

# plot2.R

data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",
                 nrows = 2075259, check.names = FALSE, stringsAsFactors = FALSE, comment.char = "", quote = '\"')

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(subSetData$Global_active_power)

png("plot2.png", width = 480, height = 480)

plot(datetime, globalActivePower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()