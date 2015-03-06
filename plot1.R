

#  Read in CSV file
powerConsumption <- read.csv("./household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE)

#convert data to useful formats
powerConsumption$Global_active_power <- as.numeric(powerConsumption$Global_active_power)
powerConsumption$Date <- strptime(powerConsumption$Date,"%d/%m/%Y")

#Subset data for the  dates 2007-02-01 and 2007-02-02
powerfeb <- subset(powerConsumption, Date == "2007/02/01" | Date == "2007/02/02")

hist(powerfeb$Global_active_power,xlim =c(0,6), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()