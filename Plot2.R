
household_power_consumption = read.csv("household_power_consumption.csv")
dia_num =  paste(household_power_consumption$Date,household_power_consumption$Time)
dia_num = strptime(dia_num,format = "%Y-%m-%d  %H:%M:%S")

png("Plot2.png")
plot(dia_num,household_power_consumption$Global_active_power,type="l",ylab = "Global Active Power (kilowatts)")
dev.off()