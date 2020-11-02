library(stringr)

pmean <- function(directory, pollutant, id = 1:332) {
  path <- "/Users/vikat/Desktop/python/R_PythonCourseKnu"
  pMeanData <- c()
  for (i in id) {
    fileName <- paste0(str_pad(as.character(i), 3, 'left', 0), '.csv')
    filePath <- paste(path, directory, fileName, sep = "/")
    fileData <- read.csv(filePath)
    pMeanData <- append(pMeanData, fileData[[pollutant]])
  }
  mean(pMeanData, na.rm = TRUE)
}

complete <- function(directory, id) {
  path <- "/Users/vikat/Desktop/python/R_PythonCourseKnu"
  idVect <- c()
  nobsVect <- c()
  
  for (i in id) {
    fileName <- paste0(str_pad(as.character(i), 3, 'left', 0), '.csv')
    filePath <- paste(path, directory, fileName, sep = "/")
    fileData <- read.csv(filePath)
    completed_cases = sum(complete.cases(fileData))
    idVect <- c(idVect, i)
    nobsVect <- c(nobsVect, completed_cases)
  }
  data.frame(id = idVect, nobs = nobsVect)
}

corr <- function(directory, threshold = 0) {
  path <- "/Users/vikat/Desktop/python/R_PythonCourseKnu"
  cr <- c()
  
  for (i in 1:332) {
    fileName <- paste0(str_pad(as.character(i), 3, 'left', 0), '.csv')
    filePath <- paste(path, directory, fileName, sep = "/")
    fileData <- read.csv(filePath)
    completed_cases = sum(complete.cases(fileData))
    
    if (completed_cases > threshold) {
      cr <- c(cr, cor(fileData$sulfate, fileData$nitrate, use="na.or.complete"))
    }
  }
  cr
}