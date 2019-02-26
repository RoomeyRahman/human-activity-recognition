if(!("crayon" %in% rownames(installed.packages()))) {
  install.packages('crayon')
}

if(!("tidyverse" %in% rownames(installed.packages()))) {
  install.packages('tidyverse')
}

library(crayon)
library(tidyverse)

clear <- function() cat("\014")

download.raw.data <- function() {
  if(!file.exists('data')) {
    data.url  <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    data.zip.path <- 'data.csv.zip'
    
    clear()
    cat(blue('Downloading the zip file\n'))
    download.file(data.url, destfile = data.zip.path)
    clear()
    
    cat(blue('Unzipping...\n'))
    unzip(data.zip.path)
    file.rename('UCI HAR Dataset', 'data')
    
    file.remove(data.zip.path)
    
    clear()
    cat(green('Download of raw data done\n'))
  }
  else {
    clear()
    cat(green('Raw data already present - skipping the download\n'))
  }
}

read.data <- function() {
  cat(blue('Loading data into matrices and vectors\n'))
  
  train.x <- scan('data/train/X_train.txt') %>% matrix(ncol = 561, byrow = TRUE)
  train.y.raw <- read_lines('data/train/y_train.txt')
  test.x <- scan('data/test/X_test.txt')  %>% matrix(ncol = 561, byrow = TRUE)
  test.y.raw <- read_lines('data/test/y_test.txt')
  
  y.levels <- c(train.y.raw, test.y.raw) %>% unique()
  train.y <- factor(train.y.raw, levels=y.levels)
  test.y <- factor(test.y.raw, levels=y.levels)
  
  list(
    train.x = train.x,
    test.x = test.x,
    train.y = train.y,
    test.y = test.y
  )
}

download.raw.data()
data <- read.data()
