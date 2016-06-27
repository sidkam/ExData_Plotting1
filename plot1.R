##HPC Feb has data filtered for 2/1/2007 and 2/2/2007
dataFile <- "./Electric Power Consumption/HPCFeb.txt"
data <- read.table(dataFile, header=TRUE, sep="\t", stringsAsFactors=FALSE, dec=".")
globalActivePower <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()