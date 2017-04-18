feature_mean_std_columns <-function(filepath){
    # checking for file availability
    if(!file.exists(filepath)){
        return("Invalid filepath. Please check the filepath entered")
    }
    featuredata <- read.table(filepath)
    # Extract the column names which have std or mean mentioned
    
    columnNames <- grep("mean|std",featuredata[,2],value = TRUE)
    
    # Cleaning the columnNames
    columnNames <- gsub("[()-]","",columnNames)
    columnNames <- tolower(columnNames)
    
    columnIndices <- grep("mean|std",featuredata[,2])
    list(columnIndices,columnNames)
}