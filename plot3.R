subsetdata <- read.csv("subsetdata.csv")

subsetdata$Timestamp <- strptime(subsetdata$Timestamp, format="%Y-%m-%d %H:%M:%S")

png(filename="plot3.png", width = 480, height = 480)

plot(subsetdata$Timestamp, subsetdata$Sub_metering_1, type="n", xlab=NA, ylab="Energy sub metering", cex.lab=1, cex.axis=1)

lines(subsetdata$Timestamp, subsetdata$Sub_metering_1, type="l", lwd=0.25)

lines(subsetdata$Timestamp, subsetdata$Sub_metering_2, type="l", lwd=0.25, col="red")

lines(subsetdata$Timestamp, subsetdata$Sub_metering_3, type="l", lwd=0.25, col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1, box.lwd=1)

dev.off()
