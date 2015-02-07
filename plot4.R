source('plotHelper.R')
source('plot2.R')
source('plot3.R')

plot4 <- function() {
  par(mfrow = c(2, 2))
  plot2()
  with(d, plot(datetime, Voltage, type='l'))
  plot3(box=FALSE)
  with(d, plot(datetime, Global_reactive_power, type='l'))
}

plot4ToPng <- function() {
  pngPlot(plot4, "plot4.png")
}