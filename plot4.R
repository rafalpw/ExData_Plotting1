#graph use file created by loadData.R script

par(cex.lab=0.7, cex.axis=0.7, cex.main=0.7)
par(mfcol=c(2,2), mar=c(3,4,1,1), mgp=c(1.5,0.5,0))

#topleft
plot(pow$Datetime, pow$Global_active_power, type='l',
     ylab='Global Active Power', xlab='')

#bottomleft
plot(pow$Datetime, pow$Sub_metering_1, type='l', ylab='Energy sub metering', xlab='')
lines(pow$Datetime, pow$Sub_metering_2, col='red')
lines(pow$Datetime, pow$Sub_metering_3, col='blue')

legend("topright", legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), 
       col=c('black','red','blue'), cex=0.6, lty=c(1,1,1), bty='n')

#topright
plot(pow$Datetime, pow$Voltage, type='l',
     ylab='Voltage', xlab='datetime')

#bottomright
plot(pow$Datetime, pow$Global_reactive_power, type='l',
     ylab='Global_reactive_power', xlab='datetime')



dev.copy(png, "plot4.png")
dev.off()