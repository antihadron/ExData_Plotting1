data <- read.csv('exdata-data-household_power_consumption/2days.csv',sep=';')
hist(as.numeric(data[,'Global_active_power']),col='red',xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.copy(png,'plot1.png')
dev.off()