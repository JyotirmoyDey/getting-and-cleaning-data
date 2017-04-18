---
title: "CodeBook"
author: "jyotirmoy dey"
date: "14 April 2017"
output: html_document
---


## CodeBook Describes the variables, the data, and any transformations performed to clean up the data.

Libraries used in the data cleaning and merging

    dplyr
    data.table

Variables, data and transformations

    training_data_path = Contains the train data.
    test_data_path = Contains the test data.
    test_data_label_path = Contains the labels for test data.
    activity_label_path = Contains the activities performed.
    training_data_subject_path = Contains the subjects for the train data.
    features_path = contains the features names.
    test_data_subject_path = Contains the subjects for the test data.
    training_data_label_path = Contains the labels for train data.
    test_train_combined_data = contains combined test and train data.
    test_train_subjects = contains combined test and train subjects data.
    test_train_labels = contains combined test and train labels data.
    act_names = contains the activity names.
    test_train_combined_data_mean_std = contains only the measurements of the mean and standard deviation.
    complete_label = Contains the activity names. Derived by matching the test_train_lebels and act_names.
    complete_data = combines the total data(test and train), the test_train_subjects data and the complete_label data columnwise.
    second_data = a second, independent tidy data set with the average of each variable for each activity and each subject.