
household_power_consumption = read.csv("household_power_consumption.csv")
dia_num =  paste(household_power_consumption$Date,household_power_consumption$Time)
dia_num = strptime(dia_num,format = "%Y-%m-%d  %H:%M:%S")

png("Plot3.png")
par(mar=c(2,4,1,1))
plot(dia_num,household_power_consumption$Sub_metering_1,type="l",col="black",ylab = "Energy sub metering")
lines(dia_num,household_power_consumption$Sub_metering_2,type="l",col="red")
lines(dia_num,household_power_consumption$Sub_metering_3,type="l",col="blue")
legend("topright",lty = c(1,1,1),col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()