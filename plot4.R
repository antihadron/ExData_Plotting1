data <- read.csv('exdata-data-household_power_consumption/2days.csv',sep=';')
meteringDates <-  strptime(paste(data[,'Date'],data[,'Time'],sep=" "),format="%d/%m/%Y %H:%M:%S")


par(mfrow=c(2,2))

plot(meteringDates,data[,'Global_active_power'],type="l",col='black',ylab="Global Active Power", xlab="")

plot(meteringDates,data[,'Voltage'],type="l",col='black',ylab="Voltage", xlab="datetime")


plot(meteringDates,data[,'Sub_metering_1'],type="n",col='red',ylab="Energy sub metering", xlab="")
lines(meteringDates,data[,'Sub_metering_1'],type="l",col='red')
lines(meteringDates,data[,'Sub_metering_2'],type="l",col='green')
lines(meteringDates,data[,'Sub_metering_3'],type="l",col='blue')
legend('topright',lty=1,col=c('red','green','blue'),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(meteringDates,data[,'Global_reactive_power'],type="l",col='black',ylab="global_reactive_power", xlab="datetime")



dev.copy(png,'plot4.png',width=960, height=960)
dev.off()