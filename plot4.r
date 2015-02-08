##### plot4.r ################
datafile<-"./data2007FEB.txt"
data<-read.table(datafile,sep=";",header=T,na.strings="?")
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
par(mfrow = c(2, 2))

###### plot 1 (row1, col1) ##################
plot(data$Datetime, data$Global_active_power, type = "l", ylab = "Global Active Power",xlab = "")

###### plot 2 (row1, col2) ##################
plot(data$Datetime, data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

###### plot 3 (row2,col1) ####################
plot(data$Datetime, data$Sub_metering_1, type = "l", ylab = "Energy sub metering",xlab = "", col = "black")
points(data$Datetime, data$Sub_metering_2, type = "l", xlab = "", ylab = "Sub_metering_2",col = "red")
points(data$Datetime, data$Sub_metering_3, type = "l", xlab = "", ylab = "Sub_metering_3",col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), bty = "n", )

####### plot 4 (row2,col2) #####################
plot(data$Datetime, data$Global_reactive_power, type = "l", xlab = "datetime",ylab = "Global_reactive_power", ylim=c(0, 0.6))
dev.copy(png,'plot4.png',width=480,height=480)

dev.off()
