##### plot2.r ################
datafile<-"./data2007FEB.txt"
data<-read.table(datafile,sep=";",header=T,na.strings="?")
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
plot(data$Datetime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png,'plot2.png',width=480,height=480)
dev.off()