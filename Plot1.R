 #Getting full data
 data<-read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
 
 #subsetting the data
 subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
 
 #changing to numeric type
 globalActivePower <- as.numeric(subSetData$Global_active_power)
 
 #plot1
 hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
 
 #Saving as png file
 dev.copy(png,file="Plot1.png")
 dev.off()
 
