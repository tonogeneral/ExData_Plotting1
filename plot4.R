par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))


#Plot 1
with(data1,plot(Date,Global_active_power,type = "l"))
#Plot 2
with(data1,plot(Date,Voltage,type = "l"))

#Plot 3
with(data1,plot(Date,Sub_metering_1, col = "black",type = "l",ylab = "Energy Sub Metering"))
with(data1,lines(Date,Sub_metering_2, col = "blue",type = "l"))
with(data1,lines(Date,Sub_metering_3, col = "red",type = "l"))
legend("topright", col = c("black","blue","red"), lty=1,legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Plot 4
with(data1,plot(Date,Global_reactive_power,type = "l"))



dev.copy(png,file = "plot4.png")
dev.off()