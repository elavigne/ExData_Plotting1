source('plotHelper.R')

plot3 <- function(box=TRUE) {
  bty = 'n'
  if (box) {
    bty = 'o'
  }
  with(d, plot(datetime, Sub_metering_1, type = "l", xlab='', ylab='Energy sub metering'))
  with(d, lines(datetime, Sub_metering_2, col="red"))
  with(d, lines(datetime, Sub_metering_3, col="blue"))
  legend("topright", lty=c(1,1), col = c("black", "red", "blue"), bty=bty, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
}

plot3ToPng <- function() {
  pngPlot(plot3, "plot3.png")
}
