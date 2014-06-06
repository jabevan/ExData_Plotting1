subsetdata <- read.csv("subsetdata.csv")

subsetdata$Timestamp <- strptime(subsetdata$Timestamp, format="%Y-%m-%d %H:%M:%S")

plot(subsetdata$Timestamp, subsetdata$Global_active_power, type="n", xlab=NA, ylab="Global Active Power (kilowatts)", cex.lab=0.75, cex.axis=0.75)

lines(subsetdata$Timestamp, subsetdata$Global_active_power, type="l", lwd=0.25)

dev.copy(png,"plot2.png", width=480, height=480)

dev.off()
