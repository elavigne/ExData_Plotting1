source('plotHelper.R')

plot2 <- function() {
  with(d, plot(datetime, Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)'))
}

plot2ToPng <- function() {
  pngPlot(plot2, "plot2.png")
}