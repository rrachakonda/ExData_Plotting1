
################## read the full data set and subset data to working data set file: data2007FEB.txt ##############
fulldata = read.csv("household_power_consumption.txt", sep=";",na.strings = "?", colClasses = c(rep("character",2),rep("numeric",7)))
fulldata$Date = as.Date(fulldata$Date, '%d/%m/%Y') 
x = fulldata$Date >= as.Date('2007-02-01') & fulldata$Date <= as.Date('2007-02-02') 
write.table(fulldata[x,], 'data2007FEB.txt') 