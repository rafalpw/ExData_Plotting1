#graph use file created by loadData.R script


par(mfcol=c(1,1), mar=c(3,4,1,1), mgp=c(1.5,0.5,0))
par(cex.lab=0.7, cex.axis=0.7, cex.main=0.7)

plot(pow$Datetime, pow$Sub_metering_1, type='l', ylab='Energy sub metering', xlab='')
lines(pow$Datetime, pow$Sub_metering_2, col='red')
lines(pow$Datetime, pow$Sub_metering_3, col='blue')


legend("topright", legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), 
       col=c('black','red','blue'), cex=0.7, lty=c(1,1,1))


dev.copy(png, "plot3.png")
dev.off()