########### plot1.R histogram ##########################
datafile<-"./data2007FEB.txt"
data<-read.table(datafile,sep=";",header=T,na.strings="?")
hist(data$Global_active_power, main = "Global Active Power", ylab = "Frequency",xlab = "Global Active Power (kilowatts)", col = "red", breaks = 15)
dev.copy(png,'plot1.png',width=480,height=480)
dev.off()