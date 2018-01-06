
#Read and subset the raw data
dataFile <- "./household_power_consumption.txt"
data<-read.table(dataFile,head = TRUE,sep=";", stringsAsFactors =FALSE,dec = ".")
names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

#call the basic plot function
hist(as.numeric(as.character(subdata$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
png("plot1.png", width = 480, heigh = 480)
dev.off()