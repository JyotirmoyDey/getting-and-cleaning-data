joinData <- function(filepath1, filepath2){
   # Returns single data by joining two data files provided
    # checking for file availability
    if(!file.exists(filepath1) | !file.exists(filepath2)){
        stop("Invalid filepath. Please check the filepath entered")
    }
    # using a data.table to store the two files
    data1 <- read.table(filepath1)
    data2 <- read.table(filepath2)
    
    #Combining the two tables 
    rbind(data1,data2)
    
}