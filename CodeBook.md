# Data Generation
The steps in the R script **run_analysis.R** are:
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

For the information of the variables in the tide dataset, please see the following content extracted from 'features_info.txt' of the UCI HAR Dataset.

# The Exprements
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, it captured the 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

# Feature Selection 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are:   
mean(): Mean value  
std(): Standard deviation  
