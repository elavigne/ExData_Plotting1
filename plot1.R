source('plotHelper.R')

plot1 <- function() {
  with(data, hist(Global_active_power, main = "Global Active Power", col='red', xlab='Global Active Power (kilowatts)'))
}

plot1ToPng <- function() {
  pngPlot(plot1, "plot1.png")
}