library(downloader)
library(dplyr)
library(lubridate)


#Download and unzip file

url <- ("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip")
download(url, dest="power_consumption.zip", mode="wb") 
unzip ("power_consumption.zip", exdir = "./data")

data <- read.table("./data/household_power_consumption.txt",header = TRUE, sep = ";")
str(data)


#Convert Datatypes and filter by dates

data$Date <- as.Date(data$Date,format = "%d/%m/%Y")
data1 <- data %>%
  filter(Date >= as.Date('2007-02-01') & Date <= as.Date('2007-02-02'))

str(data1)

data1$Date <- as.character(data1$Date)
data1$Date <- paste(data1$Date,data1$Time)
data1$Date <- as.POSIXct(data1$Date)


#Convert Datatypes
data1$Global_active_power <- as.numeric(data1$Global_active_power)
data1$Global_reactive_power <- as.numeric(data1$Global_reactive_power)
data1$Voltage <- as.numeric(data1$Voltage)
data1$Global_intensity <-as.numeric(data1$Global_intensity)
data1$Sub_metering_1 <-as.numeric(data1$Sub_metering_1)
data1$Sub_metering_2 <-as.numeric(data1$Sub_metering_2)
data1$Sub_metering_3 <-as.numeric(data1$Sub_metering_3)

str(data1)


hist(data1$Global_active_power, xlab = "Global Active Power (kilowatts)",breaks = 20,col = "red",main = "Global Active Power (kilowatts)")



dev.copy(png,file = "plot1.png")
dev.off()