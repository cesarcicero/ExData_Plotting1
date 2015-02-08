household_power_consumption <- read.csv("~/Programas/R/household_power_consumption.txt", sep=";", na.strings="?")
data <- household_power_consumption[household_power_consumption$Date == "1/2/2007" | household_power_consumption$Date == "2/2/2007",]
sub1 <- data$Sub_metering_1
sub2 <- data$Sub_metering_2
sub3 <- data$Sub_metering_3
Sys.setenv(TZ='GMT')
time <- strptime(paste(data$Time, data$Date),format = "%H:%M:%S %d/%m/%Y", tz = "GMT")
plot(time, sub1, ylab = "Energy Sub metering", xlab = "", type = "n")
lines(time, sub1, col = "black")
lines(time, sub2, col = "red")
lines(time, sub3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col = c("black", "red", "blue"), cex = 0.5)
dev.copy(png, file = "~/Programas/R/plot3.png", width=480, height=480)
dev.off()
