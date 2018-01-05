### Course Project 
### exploratory data analysis

### data description
#Date: Date in format dd/mm/yyyy
#Time: time in format hh:mm:ss
#Global_active_power: household global minute-averaged active power (in kilowatt)
#Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
#Voltage: minute-averaged voltage (in volt)
#Global_intensity: household global minute-averaged current intensity (in ampere)
#Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
#Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
#Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

### load data
filename <- "household_power_consumption.txt"
startline<-66638
endline<-69517
data<-read.table(filename, sep = ";", na.strings = "?", 
                 skip=startline-1, nrows =endline-startline +1)
colnames(data) <- c("Date", 
                    "Time", 
                    "Global_active_power",
                    "Global_reactive_power",
                    "Voltage",
                    "Global_intensity",
                    "Sub_metering_1",
                    "Sub_metering_2",
                    "Sub_metering_3"
                    )

### plot
filename <- "plot1.png"
png(filename = filename, width = 480, height = 480)
par(mfrow=c(1,1))
hist(data$Global_active_power, col = "red", main = "Global Active Power",
     xlab  = "Global Active Power(kilowatts)")
dev.off()



