if(!("crayon" %in% rownames(installed.packages()))) {
  install.packages('crayon')
}

if(!("tidyverse" %in% rownames(installed.packages()))) {
  install.packages('tidyverse')
}

library(crayon)
library(tidyverse)
library(tools)

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

read.activity.names <- function() {
  activity.names <- read_lines('data/activity_labels.txt') %>%
    sapply(function(row) strsplit(row, " ")[[1]]) %>%
    t()
  
  names(activity.names) <- NULL
  
  activity.names
}

read.col.names <- function() {
  col.names <- read_lines('data/features.txt') %>%
    sapply(function(row) strsplit(row, "\\s+")[[1]][2])
  
  col.names <- sapply(col.names, function(n) {
    name <- gsub(
      "(^[[:alpha:]])",
      "\\U\\1",
      gsub(
        "\\.$",
        "",
        gsub(
          "(\\.|\\s){2,}",
          " ",
          gsub(
            "\\W",
            " ",
            n
          )
        )
      ),
      perl = TRUE
    )
    
    gsub(" ", ".", toTitleCase(trimws(name)))
  })
  
  names(col.names) <- NULL
  
  col.names
}

read.data <- function() {
  cat(blue('Loading data into matrices and vectors\n'))
  
  col.names <- read.col.names()
  activity.names <- read.activity.names()
  
  train.x <- scan('data/train/X_train.txt') %>% matrix(ncol = 561, byrow = TRUE)
  train.y.raw <- read_lines('data/train/y_train.txt')
  test.x <- scan('data/test/X_test.txt')  %>% matrix(ncol = 561, byrow = TRUE)
  test.y.raw <- read_lines('data/test/y_test.txt')
  
  y.levels <- c(train.y.raw, test.y.raw) %>% unique()
  train.y <- factor(
    train.y.raw,
    levels=activity.names[,1],
    labels=activity.names[,2]
  )
  test.y <- factor(
    test.y.raw,
    levels=activity.names[,1],
    labels=activity.names[,2]
  )
  
  # let's make them data frames and add col names:
  
  train.x <- tbl_df(as.data.frame(train.x))
  colnames(train.x) <- col.names
  train.x$Y <- train.y
  train.x$Set <- "train"
  
  test.x <- tbl_df(as.data.frame(test.x))
  colnames(test.x) <- col.names
  test.x$Y <- test.y
  test.x$Set <- "test"
  
  data <- rbind(train.x, test.x)
  
  data$Set <- factor(data$Set, levels = c("train", "test"))
  
  relevant.cols <- Filter(
    function(col) {
      length(grep("*\\.Std*|*\\.Mean*|^Y$|^Set$", col)) > 0
    },
    names(data)
  )
  
  data[, relevant.cols]
}

download.raw.data()
data <- read.data()

write.csv(file='tidy.data.1.csv', data, row.names = FALSE)
