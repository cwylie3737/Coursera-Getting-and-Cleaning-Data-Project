### Getting and Cleaning Data: Course Project

This code book describes the variables, data, and any transformations or 
work performed to clean up the data, summaries calculated, along with units, 
and any other relevant information. The code book explains how the script works.

The original experiments were carried out with a group of 30 volunteers aged 19-48 
years. Each person performed six activities: laying, sitting, standing, walking, 
walking downstairs, and walking upstairs, while wearing a Samsung Galaxy S II on the 
waist. Using the phone's accelerometer and gyroscope, measurements were captured of 
3-axial linear acceleration and 3-axial angular velocity. The obtained dataset was 
randomly partitioned into two sets, where 70% of the volunteers was selected for 
generating the training data and 30% the test data.

The experiment data can be obtained from this website:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The unzipped download file, named 'UCI HAR Dataset' includes the following original
data files that are used in this project:

'UCI HAR Dataset/features.txt' contains the names of the sensor measurement variables.
'UCI HAR Dataset/activity_labels.txt' contains the activities the subjects performed.
'UCI HAR Dataset/train/subject_train.txt' contains the subjects in the training data.
'UCI HAR Dataset/train/y_train.txt' contains the activities performed in the training data.
'UCI HAR Dataset/train/X_train.txt' contains the training sensor measurements.
'UCI HAR Dataset/test/subject_test.txt' contains the subjects in the test data.
'UCI HAR Dataset/test/y_test.txt' contains the activities performed in the test data.
'UCI HAR Dataset/test/X_test.txt' contains the test sensor measurements.

The 'features.txt' file contains 561 measurement variables, of which the 'run_analysis.R' 
script returns 79 having mean and standard deviation (std) to the tidy data set. They are:

tBodyAcc-mean-X
tBodyAcc-mean-Y
tBodyAcc-mean-Z
tBodyAcc-std-X
tBodyAcc-std-Y
tBodyAcc-std-Z
tGravityAcc-mean-X
tGravityAcc-mean-Y
tGravityAcc-mean-Z
tGravityAcc-std-X
tGravityAcc-std-Y
tGravityAcc-std-Z
tBodyAccJerk-mean-X
tBodyAccJerk-mean-Y
tBodyAccJerk-mean-Z
tBodyAccJerk-std-X
tBodyAccJerk-std-Y
tBodyAccJerk-std-Z
tBodyGyro-mean-X
tBodyGyro-mean-Y
tBodyGyro-mean-Z
tBodyGyro-std-X
tBodyGyro-std-Y
tBodyGyro-std-Z
tBodyGyroJerk-mean-X
tBodyGyroJerk-mean-Y
tBodyGyroJerk-mean-Z
tBodyGyroJerk-std-X
tBodyGyroJerk-std-Y
tBodyGyroJerk-std-Z
tBodyAccMag-mean
tBodyAccMag-std
tGravityAccMag-mean
tGravityAccMag-std
tBodyAccJerkMag-mean
tBodyAccJerkMag-std
tBodyGyroMag-mean
tBodyGyroMag-std
tBodyGyroJerkMag-mean
tBodyGyroJerkMag-std
fBodyAcc-mean-X
fBodyAcc-mean-Y
fBodyAcc-mean-Z
fBodyAcc-std-X
fBodyAcc-std-Y
fBodyAcc-std-Z
fBodyAcc-meanFreq-X
fBodyAcc-meanFreq-Y
fBodyAcc-meanFreq-Z
fBodyAccJerk-mean-X
fBodyAccJerk-mean-Y
fBodyAccJerk-mean-Z
fBodyAccJerk-std-X
fBodyAccJerk-std-Y
fBodyAccJerk-std-Z
fBodyAccJerk-meanFreq-X
fBodyAccJerk-meanFreq-Y
fBodyAccJerk-meanFreq-Z
fBodyGyro-mean-X
fBodyGyro-mean-Y
fBodyGyro-mean-Z
fBodyGyro-std-X
fBodyGyro-std-Y
fBodyGyro-std-Z
fBodyGyro-meanFreq-X
fBodyGyro-meanFreq-Y
fBodyGyro-meanFreq-Z
fBodyAccMag-mean
fBodyAccMag-std
fBodyAccMag-meanFreq
fBodyBodyAccJerkMag-mean
fBodyBodyAccJerkMag-std
fBodyBodyAccJerkMag-meanFreq
fBodyBodyGyroMag-mean
fBodyBodyGyroMag-std
fBodyBodyGyroMag-meanFreq
fBodyBodyGyroJerkMag-mean
fBodyBodyGyroJerkMag-std
fBodyBodyGyroJerkMag-meanFreq

The 'activity_labels.txt' file contains the six activity variables:

LAYING
SITTING
STANDING
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS

The 'subject_train.txt' and 'subject_test.txt' files contain the subject ID numbers 1-30.

The R script 'run_analysis.R' merges the training and test data sets to create one data set, 
extracts only the mean and standard deviation values for each measurement, gives descriptive 
activity names to name the activities in the data set, and creates a summarized tidy data set 
with the average of each measurement variable.