library(dplyr)

# This code performs the following tasks.
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with 
#    the average of each variable for each activity and each subject.

source("joindata.R")
source("activityTable.R")
source("feature_mean_std_columns.R")

# the paths of all the required files are stored in variables for easy referencing


#training_data_path = "/UCIDataset/train/X_train.txt"
training_data_path = "./UCI HAR Dataset/train/X_train.txt"
test_data_path = "./UCI HAR Dataset/test/X_test.txt"
training_data_label_path = "./UCI HAR Dataset/train/y_train.txt"
test_data_label_path = "./UCI HAR Dataset/test/y_test.txt"
activity_label_path = "./UCI HAR Dataset/activity_labels.txt"
training_data_subject_path = "./UCI HAR Dataset/train/subject_train.txt"
features_path = "./UCI HAR Dataset/features.txt"
test_data_subject_path = "./UCI HAR Dataset/test/subject_test.txt"

# 1. Merges the training and the test sets to create one data set.

# Combined the test and train data
test_train_combined_data <- joinData(training_data_path, test_data_path)
# Combined the test and train subjects data
test_train_subjects <- joinData(training_data_subject_path, test_data_subject_path)
# Combined the test and train labels data
test_train_labels <- joinData(training_data_label_path, test_data_label_path)
# activity names 
act_names <- activityTable(activity_label_path)

columns <- feature_mean_std_columns(features_path)
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
test_train_combined_data_mean_std <- test_train_combined_data %>% select(columns[[1]])
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# To include the descriptive activity names(among the six avaiable) to the combined data to show whiich 
# reading is from which actitvity, the following code
# returns the indices of the test_train_labels that matches with the activity labels and accordingly will
# assign the labels 

complete_label <- act_names[match(test_train_labels[,1], act_names[,1]), 2]
complete_label <- as.factor(complete_label)
# combine the total data(test and train), the subjects data and the labels data columnwise

complete_data <- cbind(test_train_combined_data_mean_std, test_train_subjects, complete_label)
colnames(complete_data) =c(columns[[2]],"subject","activity")

# 5. From the data set in step 4, creates a second, independent tidy data set with 
#    the average of each variable for each activity and each subject.
second_data = complete_data %>% group_by(activity,subject) %>% summarize_all(funs(mean))

write.table(second_data, file = "tidydata.txt", row.name = FALSE)
