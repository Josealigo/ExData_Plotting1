
household_power_consumption = read.csv("household_power_consumption.csv")

png("Plot1.png")
hist(household_power_consumption$Global_active_power,col="red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()