household_power_consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
data <- household_power_consumption[household_power_consumption$Date == "1/2/2007" | household_power_consumption$Date == "2/2/2007",]
globalActiv <- data$Global_active_power
hist(globalActiv, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png", width=480, height=480)
dev.off()
