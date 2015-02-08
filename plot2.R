household_power_consumption <- read.csv("~/Programas/R/household_power_consumption.txt", sep=";", na.strings="?")
data <- household_power_consumption[household_power_consumption$Date == "1/2/2007" | household_power_consumption$Date == "2/2/2007",]
globalActiv <- data$Global_active_power
Sys.setenv(TZ='GMT')
time <- strptime(paste(data$Time, data$Date),format = "%H:%M:%S %d/%m/%Y", tz = "GMT")
plot(time, globalActiv, ylab = "Global Active Power (kilowatts)", xlab = "", type = "n")
lines(time, globalActiv)
dev.copy(png, file = "~/Programas/R/plot2.png", width=480, height=480)
dev.off()
