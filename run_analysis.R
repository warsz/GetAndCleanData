# run_analysis.R written by Jakub Warszawski for the Getting and Cleaning Data Course Project
# date: 21.06.2015

# remember to import all the necessary libraries for the project
library(plyr)
library(dplyr)

# Check if the data is available, if not download and unzip
if (!file.exists("UCI HAR Dataset/features.txt")){
	url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	destfile <- "./UCI_HAR_Dataset.zip"
	download.file(url,destfile)
	# unpack the files 
	unzip(destfile)
	print("Data downloaded and unziped.")
}

# Preparing the data for merging
# Read features.txt and keep only the feature names. This is going to be used as col names for the complete data-frame
features <- read.csv("UCI HAR Dataset/features.txt",header=FALSE,sep=" ",stringsAsFactors=FALSE)%>%select(V2)

# read activity_labels.txt, this is going to be used for substituting the activity numbers with descriptive names
activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt",header=FALSE,sep=" ",stringsAsFactors=FALSE)

# read train data
# the measurement part of the data
initial<-read.table("UCI HAR Dataset/train/X_train.txt", nrows=100)
classes<-sapply(initial,class)
# Please notice that "col.names=features[,1]" takes care of the check point:
# 4. Appropriately labels the data set with descriptive variable names
X_train<-read.table("UCI HAR Dataset/train/X_train.txt", colClasses=classes,col.names=features[,1])
# the subject that generated the data
subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt",header=FALSE,sep=" ",col.names="subject")
# the activity that the subject was doing while measurements were acquired
y_train <- read.csv("UCI HAR Dataset/train/y_train.txt",header=FALSE,sep=" ",col.names="activity")


# read test data
# the measurement part of the data
initial<-read.table("UCI HAR Dataset/test/X_test.txt", nrows=100)
classes<-sapply(initial,class)
# Please notice that "col.names=features[,1]" takes care of the check point:
# 4. Appropriately labels the data set with descriptive variable names
X_test<-read.table("UCI HAR Dataset/test/X_test.txt", colClasses=classes,col.names=features[,1])
# the subject that generated the data
subject_test <- read.csv("UCI HAR Dataset/test/subject_test.txt",header=FALSE,sep=" ",col.names="subject")
# the activity that the subject was doing while measurements were acquired
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt",header=FALSE,sep=" ",col.names="activity")


# 1. Merges the training and the test sets to create one data set.
# first step is to stack all the "train" and "test" data together
# measurements
Measurements <- rbind(X_train,X_test)

# setting up the subject variable
Subject <- rbind(subject_train,subject_test)

#setting up the activity variable
Activity <- rbind(y_train,y_test)

# adding the extra columns with subjects and the activity related to each measurement
Analyzed<-mutate(Measurements,subject=Subject[,1],activity=Activity[,1])
print("All important data merged together.")

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
Analyzed <- select(Analyzed,grep("mean()|std()|subject|activity",names(Analyzed)))
# need to remove meanFreq as the scope is to keep only mean and std for each measurement, not mean frequency of the measurement
# selecting the columns that do not contain "meanFreq" in the name
Analyzed<- Analyzed[,names(Analyzed[-grep("meanFreq",names(Analyzed))])]
print("Mean and standard deviation only extracted from original data.")

# 3. Uses descriptive activity names to name the activities in the data set
# replacing the activity number with the proper name from activity_labels
Analyzed$activity<-activity_labels[Analyzed$activity,2]
print("Descriptive activity labels in place.")

# 4. Appropriately labels the data set with descriptive variable names
# please look for this at the top of the script where the data are being read from the files	
print("Descriptive variable names in place.")

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- ddply(Analyzed, c("subject", "activity"), numcolwise(mean))
#This also does the job
# group_by(Analyzed,subject,activity)%>%summarise_each(funs(mean))
# and the results are the same!!! ;)
print("Tidy data set with average of each variable for each activity and subject created.")

# Writing the tidy data to file as deliverables
write.table(tidy_data,file="tidy_data_set.txt",row.name=FALSE)
print("Tidy data set written to file.")
# this file can later be read in to R with following comand:
# tidy_data<-read.table("tidy_data_set.txt",header=TRUE,sep=" ")
# and viewed by:
# View(tidy_data)


#This is not working properly, needs attention!

# description of variables for the 
VariableNames<-names(tidy_data)
description<-VariableNames
#description<-gsub(""," ",description)
description<-gsub("Acc","accelerometer data",description)
description<-gsub("Gyro","gyroscope data",description)
description<-gsub("Body","body generated ",description)
description<-gsub("Gravity","gravity generated ",description)
description<-gsub("Mag","magnitude",description)
description<-gsub("-XYZ","3-axial signals",description)
description<-gsub("mean()","Mean value",description)
description<-gsub("std()","Standard deviation",description)
description<-gsub("mad()","Median absolute deviation",description)
description<-gsub("max()","Largest value in array",description)
description<-gsub("min()","Smallest value in array",description)
description<-gsub("sma()","Signal magnitude area",description)
description<-gsub("energy()","Energy measure. Sum of the squares divided by the number of values",description)
description<-gsub("iqr()","Interquartile range",description)
description<-gsub("entropy()","Signal entropy",description)
description<-gsub("arCoeff()","Autorregresion coefficients with Burg order equal to 4",description)
description<-gsub("correlation()","correlation coefficient between two signals",description)
description<-gsub("maxInds()","index of the frequency component with largest magnitude",description)
description<-gsub("meanFreq()","Weighted average of the frequency components to obtain a mean frequency",description)
description<-gsub("skewness()","skewness of the frequency domain signal",description)
description<-gsub("kurtosis()","kurtosis of the frequency domain signal",description)
description<-gsub("bandsEnergy()","Energy of a frequency interval within the 64 bins of the FFT of each window",description)
description<-gsub("angle()","Angle between to vectors",description)
description<-gsub("tbody","time domain body ",description)
description<-gsub("tgravity","time domain gravity",description)
description<-gsub("fbody","frequency domain body ",description)
description<-gsub("X","X-direction ",description)
description<-gsub("Y","Y-direction ",description)
description<-gsub("Z","Z-direction ",description)

CodeBookStart<-paste(VariableNames," : ", description)
write.table(CodeBookStart,"DescriptionToCodeBook.txt")
print("Input for CodeBook.md generated: description of variables used in analysis")

Summary<-summary(tidy_data)
file.create("SummaryToCodebook.txt")
#fileConn<-file("SummaryToCodebook.txt")
for (i in (1:68)){cat(c(colnames(Summary)[i],Summary[,i],"\n"),file="SummaryToCodebook.txt",sep="\n",append=TRUE)}
#close(fileConn)
print("Summary for Codebok generated: summary of variables in tidy_data_set")