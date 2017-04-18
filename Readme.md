---
title: "Readme"
author: "jyotirmoy dey"
date: "14 April 2017"
output: html_document
---

## Readme


List of files in this repository

1) Codebook describing the variables and transformations done on the data
2) Markdown file
3) run_analysis.R and helper .R files

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ of a smartphone (Samsung Galaxy S II) which the subjects wore on their waist and performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).


Full description of the data set is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Description of the scripts available in the repo

    1) run_analysis.R
    This is the main R script that joins the test and train data. It uses other helper .R scripts to clean, merge and 
    prepare a data that is more efficiently manageable and can be used later for analysis.

    2) activityTable.R
    Reads the file that contains activity names and returns a table of the acvitities.

    3) feature_mean_std_columns.R
    Takes a feature file name as input and returns the numbers and names of the columns which hold the  mean and standard deviations data of the     readings.

    4) joindata.R
    Takes two data files with same number of columns as input, combines the two files row-wise and returns the combined dataset.



