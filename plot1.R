#graph use file created by loadData.R script


par(mfcol=c(1,1), mar=c(3,4,1,1), mgp=c(1.5,0.5,0))
par(cex.lab=0.7, cex.axis=0.7, cex.main=0.7)

hist(pow$Global_active_power, col='red', main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', )

dev.copy(png, "plot1.png")
dev.off()