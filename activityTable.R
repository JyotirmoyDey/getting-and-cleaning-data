activityTable <- function(filepath){
    # checking for file availability
    if(!file.exists(filepath)){
        return("Invalid filepath. Please check the filepath entered")
    }
    activities <- read.table(filepath)
    activities
}