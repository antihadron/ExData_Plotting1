data <- read.csv('exdata-data-household_power_consumption/2days.csv',sep=';')
plot(strptime(paste(data[,'Date'],data[,'Time'],sep=" "),format="%d/%m/%Y %H:%M:%S"),data[,'Global_active_power'],type="l",col='black',ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png,'plot2.png') 
dev.off()