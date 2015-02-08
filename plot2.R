#graph use file created by loadData.R script


par(mfcol=c(1,1), mar=c(3,4,1,1), mgp=c(1.5,0.5,0))
par(cex.lab=0.7, cex.axis=0.7, cex.main=0.7)

plot(pow$Datetime, pow$Global_active_power, type='l', 
     ylab='Global Active Power (kilowatts)', xlab='')

dev.copy(png, "plot2.png")
dev.off()