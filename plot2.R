plot2 <- function(){
  HPC_subset$Time2 <- strptime(paste(as.character(HPC_subset$Date2),as.character(HPC_subset$Time)),"%Y-%m-%d %H:%M:%S")
  with(HPC_subset,plot(Time2,as.numeric(as.character(Global_active_power)), type = "l", lty = 1,ylab="Global Active Power (Kilowatts)",xlab=""))
  dev.copy(png,"plot2.png")
  dev.off()
}
