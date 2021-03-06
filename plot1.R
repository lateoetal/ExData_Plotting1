# File 1

# plot1.R

data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",
                 nrows = 2075259, check.names = FALSE, stringsAsFactors = FALSE, comment.char = "", quote = '\"')

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subSetData$Global_active_power)

png("plot1.png", width = 480, height = 480)

hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()
