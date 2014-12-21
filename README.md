# Getting and Cleaning Data Course Project

The files in this repo are the result of the Course Project

* **average_for_activity_subject.txt** - the tidy data set
* **CodeBook.md** - information for the dataset
* **run_analysis.R** - R script to generate the data set
* **README.md** - this file

The **run_analysis.R** script generates the tidy data set **average_for_activity_subject.txt** from:
[UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  
A full description of the **UCI HAR Dataset** is available at the site:
[UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The script should be run within the same folder of the UCI HAR Dataset.  
The steps in the R script are:
  1. Merges the training and the test sets to create one data set.  
    1.1. Read datasets from 'test/X_test.txt' and 'train/X_train.txt'  
    1.2. Merge the datasets	to one  
  2. Extracts only the measurements on the mean and standard deviation for each measurement.  
    2.1. Read feature names from 'feature.txt'  
    2.2. Find the ids of mean and std of the names  
    2.3. Extract the measurements on the mean and std using the ids as a data.frame 'df'  
  3. Uses descriptive activity names to name the activities in the data set  
    3.1. Read activity name from 'activity_labels.txt'  
    3.2. Read activity ids and merge from 'test/y_test.txt' and 'train/y_train.txt'  
    3.3. Assign activity names to the dataset as new column of the 'df'  
  4. Appropriately labels the data set with descriptive variable names.  
    4.1. Assign descriptive variable names of the feature names to colnames of the 'df'  
    4.2. Read subject data from 'test/subject_test.txt' and 'train/subject_train.txt' and merge  
	4.3. Add column of subject to the 'df'  
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
    5.1. Average of each variable for each activity and each subject and save as the tide dataset 'average_for_activity_subject.txt'  

For more information, please see the CodeBook.md