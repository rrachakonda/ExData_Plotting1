##### plot3.r ################
datafile<-"./data2007FEB.txt"
data<-read.table(datafile,sep=";",header=T,na.strings="?")
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
plot(data$Datetime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(data$Datetime, data$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering",col = "red")
points(data$Datetime, data$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering",col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
dev.copy(png,'plot3.png',width=480,height=480)
dev.off()