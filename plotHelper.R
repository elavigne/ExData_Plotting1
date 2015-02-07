library('dplyr')

readData <- function() {
  datafile <- 'household_power_consumption.txt'
  
  if (!file.exists(datafile)) {
    zipfile <- tempfile()
    download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', destfile=zipfile, method='curl')
    unzip(zipfile, overwrite=TRUE)
    unlink(zipfile)
  }
  
  data <- read.csv(datafile, sep=";", na.strings=c("?"), stringsAsFactors=FALSE)
  
  data %>% 
    filter(Date == "2/2/2007" | Date == "1/2/2007") %>%
    mutate(datetime = as.POSIXct(strptime(paste(Date,Time), format="%d/%m/%Y%H:%M:%S"))) %>% 
    select(-Date, -Time) 
}

pngPlot <- function(plot, plotName) {
  data <- readData()
  png(plotName, width = 480, height = 480, units = "px", bg = "transparent")
  plot()
  dev.off()
}