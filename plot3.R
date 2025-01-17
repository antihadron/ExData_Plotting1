data <- read.csv('exdata-data-household_power_consumption/2days.csv',sep=';')
meteringDates <-  strptime(paste(data[,'Date'],data[,'Time'],sep=" "),format="%d/%m/%Y %H:%M:%S")
plot(meteringDates,data[,'Sub_metering_1'],type="n",col='red',ylab="Energy sub metering", xlab="")
lines(meteringDates,data[,'Sub_metering_1'],type="l",col='red')
lines(meteringDates,data[,'Sub_metering_2'],type="l",col='green')
lines(meteringDates,data[,'Sub_metering_3'],type="l",col='blue')
legend('topright',lty=1,col=c('red','green','blue'),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,'plot3.png')
dev.off()