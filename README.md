#GetAndCleanData
Getting and Cleaning Data Course Project
------
##Scope
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The R script called run_analysis.R does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

------
##Howto
####Requirements:
RStudio
Version 0.98.1103 – © 2009-2014 RStudio, Inc.
Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534.34 (KHTML, like Gecko) Qt/4.8.3 Safari/534.34 Qt/4.8.3

####Execution
Download the "run_analysis.R" file and save to where the data should be stored
Set working directory in RStudio to where "run_analysis.R" file is stored
Execute following command in RStudio
* source("run_analysis.R)
This will check if the original data set is available and if not download it and perform all 5 steps given in the Scope (above)
The script also generates:
*DescriptionToCodeBook.txt	: describing the variables name more clearly
*SummaryToCodebook.txt		: describing each variable in more details
These are in turn copied into CodeBook.md

------
## Deliverables
+ tidy_data_set.txt			: file contains the results listed in point 5. written in Scope*
+ DescriptionToCodeBook.txt	: describing the variables name more clearly*
+ SummaryToCodebook.txt		: describing each variable in more details*