### Getting and Cleaning Data: Course Project

The purpose of this project is to demonstrate the ability to collect, work with, 
and clean a data set.

The goal is to prepare a tidy dataset that can be used for later analysis by creating an
R script to compile the provided data files. The submission will be graded by peers 
on a series of yes/no questions related to the project. 

One of the most exciting areas in all of data science right now is wearable computing. 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced 
algorithms to attract new users. The data used in this project represent data collected 
from the accelerometers from the Samsung Galaxy S smartphone worn by 30 volunteer subjects 
while engaged in lying down, sitting, standing, walking, walking downstairs, and walking 
upstairs. 

#### A full description of the original research is available at this site:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#### The input data for the project are here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#### Citations:

Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. 
Irvine, CA: University of California, School of Information and Computer Science.
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European 
Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, 
ESANN 2013. Bruges, Belgium 24-26 April 2013.


#### Required submissions: 

1. A link to a Github repository with an R script for performing the analysis.
2. A readme file in the repository describing the project. 
3. A code book that describes the variables, the data, and any transformations or 
   work performed to clean up the data. The code book explains how the script works.
4. A tidy data set in the repository summarizing the input data.

#### The R script called run_analysis.R does the following:

1. Merges the training and test data sets to create one data set.
2. Extracts only the mean and standard deviation values for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Creates a summarized tidy data set with the average of each measurement variable.

#### Review criteria:

1. The GitHub repo contains a README.md file that explains the project purpose and scope.
2. The GitHub repo contains a CodeBook.md file that describes all the variables and 
   summaries calculated, along with units, and any other relevant information.
3. The Github repo contains an R script that produces the tidy dataset output file.
4. The work submitted for this project is the work of the student who submitted it.
5. The submitted data set is tidy.


    