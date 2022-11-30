corr<-function(directory, threshold = 0){
  directory <- paste("C:/Users/anupj/Documents/Coursera/specdata", sep = "/") 
  files.names <- list.files(directory, full.names = TRUE)
  result<-vector(mode = "numeric", length = 0)
  
  for (i in 1:332){
    
    goodfile<- na.omit(read.csv(files.names[i]))
    if( nrow(goodfile)>threshold ){
      corvector <-cor(goodfile$sulfate, goodfile$nitrate)
      result<-append(result, corvector)
    }
    
    
  }
  result
}
