complete <-function(directory, id = 1:332) {
  directory <- paste("C:/Users/anupj/Documents/Coursera/specdata", sep = "/") 
  files.names <- list.files(directory, full.names = TRUE)
  nobs<- numeric()

    for (i in id) {
        data<- read.csv(files.names[i])
        nobs<- c(nobs, sum(complete.cases(data)))
}

data.frame(id, nobs)
}
  
