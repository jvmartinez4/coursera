plot4 <- function(){
  HPC_subset$Time2 <- strptime(paste(as.character(HPC_subset$Date2),as.character(HPC_subset$Time)),"%Y-%m-%d %H:%M:%S")
  par( mfcol = c( 2, 2 ) )
  with(HPC_subset,plot(Time2,as.numeric(as.character(Global_active_power)), type = "l", lty = 1,ylab="Global Active Power",xlab=""))
  with(HPC_subset,plot(Time2,as.numeric(as.character(Sub_metering_1)), type = "l", lty = 1,ylab="Energy sub metering",xlab=""))
  with(HPC_subset,lines(Time2,as.numeric(as.character(Sub_metering_2)), type = "l", lty = 1,col="red"))
  with(HPC_subset,lines(Time2,as.numeric(as.character(Sub_metering_3)), type = "l", lty = 1,col="blue"))
  legend("topright",  legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black","red", "blue"),lty=c(1,1,1))
  with(HPC_subset,plot(Time2,as.numeric(as.character(Voltage)), type = "l", lty = 1,ylab="Voltage",xlab="datetime"))
  with(HPC_subset,plot(Time2,as.numeric(as.character(Global_reactive_power)), type = "l", lty = 1,ylab="Global Reactive Power",xlab="datetime"))
  dev.copy(png,"plot4.png")
  dev.off()  
}