subsetdata <- read.csv("subsetdata.csv")

hist(subsetdata$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red", cex.lab=0.75, cex.axis=0.75, cex.main=0.85, cex.sub=0.75)

dev.copy(png,"plot1.png", width=480, height=480)

dev.off()