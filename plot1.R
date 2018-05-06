plot1 <- function(){
  household_power_consumption$Date2 <- as.Date(household_power_consumption$Date,"%d/%m/%Y")
  HPC_subset <- subset(household_power_consumption, Date2 == as.Date("2007-02-01")| Date2 == as.Date("2007-02-02"))
  with(HPC_subset,hist(as.numeric(as.character(HPC_subset$Global_active_power)),col="red",main="Gobal Active Power",xlab="Global Active Power (Kilowatts)"))
  dev.copy(png,"plot1.png")
  dev.off()
}
