
#read data from txt file
power<-read.table("household_power_consumption.txt", header = T, sep=";", dec='.', 
                  stringsAsFactors=F, na.strings=c('','?'))
#use only 2 days for analysis
pow<-subset(power, Date=='1/2/2007' | Date=='2/2/2007', drop=T)
#add Datetime column
pow$Datetime <- strptime(paste(pow$Date, pow$Time, sep=' '), '%d/%m/%Y %T')

