subsetdata <- read.csv("subsetdata.csv")

subsetdata$Timestamp <- strptime(subsetdata$Timestamp, format="%Y-%m-%d %H:%M:%S")

png(filename="plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))

# Plot 1

plot(subsetdata$Timestamp, subsetdata$Global_active_power, type="n", xlab=NA, ylab="Global Active Power (kilowatts)")

lines(subsetdata$Timestamp, subsetdata$Global_active_power, type="l", lwd=0.25)

# Plot 2

plot(subsetdata$Timestamp, subsetdata$Voltage, type="n", xlab="datetime", ylab="Voltage")

lines(subsetdata$Timestamp, subsetdata$Voltage, type="l", lwd=0.25)

# Plot 3

plot(subsetdata$Timestamp, subsetdata$Sub_metering_1, type="n", xlab=NA, ylab="Energy sub metering", cex.lab=1, cex.axis=1)

lines(subsetdata$Timestamp, subsetdata$Sub_metering_1, type="l", lwd=0.25)

lines(subsetdata$Timestamp, subsetdata$Sub_metering_2, type="l", lwd=0.25, col="red")

lines(subsetdata$Timestamp, subsetdata$Sub_metering_3, type="l", lwd=0.25, col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1, bty="n")

# Plot 4

plot(subsetdata$Timestamp, subsetdata$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")

lines(subsetdata$Timestamp, subsetdata$Global_reactive_power, type="l", lwd=0.25)


dev.off()
