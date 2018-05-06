plot3 <- function(){
  HPC_subset$Time2 <- strptime(paste(as.character(HPC_subset$Date2),as.character(HPC_subset$Time)),"%Y-%m-%d %H:%M:%S")
  with(HPC_subset,plot(Time2,as.numeric(as.character(Sub_metering_1)), type = "l", lty = 1,ylab="Energy sub metering",xlab=""))
  with(HPC_subset,lines(Time2,as.numeric(as.character(Sub_metering_2)), type = "l", lty = 1,col="red"))
  with(HPC_subset,lines(Time2,as.numeric(as.character(Sub_metering_3)), type = "l", lty = 1,col="blue"))
  legend("topright",  legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black","red", "blue"),lty=c(1,1,1))
  dev.copy(png,"plot3.png")
  dev.off()
}
