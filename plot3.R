par(mfrow = c(1,1))

#with(data1,plot(c(Sub_metering_1,Sub_metering_2,Sub_metering_3), col = c("black","blue","red"),type = "l"))
with(data1,plot(Date,Sub_metering_1, col = "black",type = "l",ylab = "Energy Sub Metering"))
with(data1,lines(Date,Sub_metering_2, col = "blue",type = "l"))
with(data1,lines(Date,Sub_metering_3, col = "red",type = "l"))
legend("topright", col = c("black","blue","red"), lty=1,legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png,file = "plot3.png")
dev.off()