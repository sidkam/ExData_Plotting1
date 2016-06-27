##HPC Feb has data filtered for 2/1/2007 and 2/2/2007
dataFile <- "./Electric Power Consumption/HPCFeb.txt"
data <- read.table(dataFile, header=TRUE, sep="\t", stringsAsFactors=FALSE, dec=".")

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%m/%d/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data$Global_active_power)

png("plot2.png", width=480, height=480)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()