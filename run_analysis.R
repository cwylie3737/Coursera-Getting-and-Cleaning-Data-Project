# run_analysis.R  6/10/2016  Charles Wylie
# Coursera Getting and Cleaning Data Class Project
# Data repository:
# https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Set working directory and clean up work environment:
setwd("C:/Users/Chuck/Documents/R/coursera/Module 3 - Getting and Cleaning Data/Project")
rm(list=ls())

# Download and unzip the raw data files if they do not exist in working directory:
if (!file.exists('UCI HAR Dataset')) {
    download.file(
        'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
        method='curl',
        destfile='getdata-projectfiles-UCI HAR Dataset.zip'
    )
    unzip('getdata-projectfiles-UCI HAR Dataset.zip')
}

# Read sensor name file and give descriptive column header names:
features <- read.table('UCI HAR Dataset/features.txt', header=FALSE)
names(features) <- c('featureID', 'featureName')

# Filter for sensor names with 'mean' and 'std' and remove parens:
features <- subset(features, grepl('-(mean|std)', featureName)) #returns 79 sensors
#features <- subset(features, grepl('-(mean|std)\\(\\)', featureName)) #returns 66 sensors
features$featureName <- gsub('\\(\\)', '', features$featureName)

# Get the training sensor readings:
trainingData <- read.table('UCI HAR Dataset/train/X_train.txt')
trainingData <- trainingData[, features$featureID]
names(trainingData) <- features$featureName
# Get the training subjects:
subjects <- read.table(paste('UCI HAR Dataset/train/subject_train.txt'), header=FALSE)
names(subjects) <- 'subjectID'
# Get the training activities:
activities <- read.table(paste('UCI HAR Dataset/train/y_train.txt'), header=FALSE)
names(activities) <- 'activityID'
# Merge the training data:
trainingData <- cbind(subjects, activities, trainingData)

# Get the test sensor readings:
testData <- read.table('UCI HAR Dataset/test/X_test.txt')
testData <- testData[, features$featureID]
names(testData) <- features$featureName
# Get the test subjects:
subjects <- read.table(paste('UCI HAR Dataset/test/subject_test.txt'), header=FALSE)
names(subjects) <- 'subjectID'
# Get the test activities:
activities <- read.table(paste('UCI HAR Dataset/test/y_test.txt'), header=FALSE)
names(activities) <- 'activityID'
# Merge the test data:
testData <- cbind(subjects, activities, testData)

# Read activity file and give descriptive column header names:
activities <- read.table('UCI HAR Dataset/activity_labels.txt')
names(activities) <- c('ID', 'activity')

# Merge training and test datasets:
allData <- rbind(trainingData, testData)
allData <- merge(activities, allData, by.x='ID', by.y='activityID', all=TRUE)
allData <- allData[, c(3, 2, 4:ncol(allData))]

# Summarize the sensor readings by subjectID and activity:
summaryData <- aggregate(allData[, 3:ncol(allData)],
    by=list(
        subjectID=allData$subjectID,
        activity=allData$activity
    ), mean, length.warning=FALSE)

# See what the output looks like:
# summaryData[1:6]

# Write the tidy data text file:
write.table(summaryData, 'tidy_dataset.txt', row.names=FALSE, quote = FALSE, sep = ',')
