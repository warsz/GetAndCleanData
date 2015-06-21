---
title: "Codebook for Getting and Cleaning Data Course Project"
author: Jakub Warszawski
date: 2015-06-21
---
##Project Description
The scope of this project is to start with some supplied data and make it tidy.

###Notes on the raw data
The data comes from following project:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

and can be optained here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Creating the tidy data files

###Guide to creating the tidy data file
start with downloading the "run_analysis.R" and execute it in RStudio with following command:
* source("run_analysis.R")

the script does the following:

1. checks if the data is available if not then it downloads the data-file
2. unzip the data where the analysis script is placed
3. reads the necessary files and combines those to a complete data set, steps 1-4
4. This data set is then used to generate a tidy data set with as required by the assigment
5. Creates description of variables in tidy data set as input to CodeBook.md

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset 180x68
 - Variables present in the dataset :
 
1.	subject						:  subject generating the measurements
2.	activity					:  activity done by the subject during measurement generation
3.	tBodyAcc.mean()-X			:  time domain body generated accelerometer data, Mean value in X-direction
4.	tBodyAcc.mean()-Y			:  time domain body generated accelerometer data, Mean value in Y-direction
5.	tBodyAcc.mean()-Z			:  time domain body generated accelerometer data, Mean value in Z-direction
6.	tBodyAcc.std()-X			:  time domain body generated accelerometer data, Standard deviation in X-direction
7.	tBodyAcc.std()-Y			:  time domain body generated accelerometer data, Standard deviation in Y-direction
8.	tBodyAcc.std()-Z			:  time domain body generated accelerometer data, Standard deviation in Z-direction
9.	tGravityAcc.mean()-X		:  time domain gravity generated accelerometer data, Mean value in X-direction
10.	tGravityAcc.mean()-Y		:  time domain gravity generated accelerometer data, Mean value in Y-direction
11.	tGravityAcc.mean()-Z		:  time domain gravity generated accelerometer data, Mean value in Z direction
12.	tGravityAcc.std()-X			:  time domain gravity generated accelerometer data, Standard deviation in X direction
13.	tGravityAcc.std()-Y			:  time domain gravity generated accelerometer data, Standard deviation in Y direction
14.	tGravityAcc.std()-Z			:  time domain gravity generated accelerometer data, Standard deviation in Z direction
15.	tBodyAccJerk.mean()-X		:  time domain body generated accelerometer dataJerk, Mean value in X direction
16.	tBodyAccJerk.mean()-Y		:  time domain body generated accelerometer dataJerk, Mean value in Y direction
17.	tBodyAccJerk.mean()-Z		:  time domain body generated accelerometer dataJerk, Mean value in Z direction
18.	tBodyAccJerk.std()-X		:  time domain body generated accelerometer dataJerk, Standard deviation in X direction
19.	tBodyAccJerk.std()-Y		:  time domain body generated accelerometer dataJerk, Standard deviation in Y direction
20.	tBodyAccJerk.std()-Z		:  time domain body generated accelerometer dataJerk, Standard deviation in Z direction
21.	tBodyGyro.mean()-X			:  time domain body generated gyroscope data, Mean value in X direction
22.	tBodyGyro.mean()-Y			:  time domain body generated gyroscope data, Mean value in Y direction
23.	tBodyGyro.mean()-Z			:  time domain body generated gyroscope data, Mean value in Z direction
24.	tBodyGyro.std()-X			:  time domain body generated gyroscope data, Standard deviation in X direction
25.	tBodyGyro.std()-Y			:  time domain body generated gyroscope data, Standard deviation in Y direction
26.	tBodyGyro.std()-Z			:  time domain body generated gyroscope data, Standard deviation in Z direction
27.	tBodyGyroJerk.mean()-X		:  time domain body generated gyroscope dataJerk, Mean value in X direction
28.	tBodyGyroJerk.mean()-Y		:  time domain body generated gyroscope dataJerk, Mean value in Y direction
29.	tBodyGyroJerk.mean()-Z		:  time domain body generated gyroscope dataJerk, Mean value in Z direction
30.	tBodyGyroJerk.std()-X		:  time domain body generated gyroscope dataJerk, Standard deviation in X direction
31.	tBodyGyroJerk.std()-Y		:  time domain body generated gyroscope dataJerk, Standard deviation in Y direction
32.	tBodyGyroJerk.std()-Z		:  time domain body generated gyroscope dataJerk, Standard deviation in Z direction
33.	tBodyAccMag.mean()			:  time domain body generated accelerometer data magnitude, Mean value
34.	tBodyAccMag.std()			:  time domain body generated accelerometer data magnitude, Standard deviation
35.	tGravityAccMag.mean()		:  time domain gravity generated accelerometer data magnitude, Mean value
36.	tGravityAccMag.std()		:  time domain gravity generated accelerometer data magnitude, Standard deviation
37.	tBodyAccJerkMag.mean()		:  time domain body generated accelerometer dataJerk magnitude, Mean value
38.	tBodyAccJerkMag.std()		:  time domain body generated accelerometer dataJerk magnitude, Standard deviation
39.	tBodyGyroMag.mean()			:  time domain body generated gyroscope data magnitude, Mean value
40.	tBodyGyroMag.std()			:  time domain body generated gyroscope data magnitude, Standard deviation
41.	tBodyGyroJerkMag.mean()		:  time domain body generated gyroscope dataJerk magnitude, Mean value
42.	tBodyGyroJerkMag.std()		:  time domain body generated gyroscope dataJerk magnitude, Standard deviation
43.	fBodyAcc.mean()-X			:  frequency domain body generated accelerometer data, Mean value in X direction
44.	fBodyAcc.mean()-Y			:  frequency domain body generated accelerometer data, Mean value in Y direction
45.	fBodyAcc.mean()-Z			:  frequency domain body generated accelerometer data, Mean value in Z direction
46.	fBodyAcc.std()-X			:  frequency domain body generated accelerometer data, Standard deviation in X direction
47.	fBodyAcc.std()-Y			:  frequency domain body generated accelerometer data, Standard deviation in Y direction
48.	fBodyAcc.std()-Z			:  frequency domain body generated accelerometer data, Standard deviation in Z direction
49.	fBodyAccJerk.mean()-X		:  frequency domain body generated accelerometer dataJerk, Mean value in X direction
50.	fBodyAccJerk.mean()-Y		:  frequency domain body generated accelerometer dataJerk, Mean value in Y direction
51.	fBodyAccJerk.mean()-Z		:  frequency domain body generated accelerometer dataJerk, Mean value in Z direction
52.	fBodyAccJerk.std()-X		:  frequency domain body generated accelerometer dataJerk, Standard deviation in X direction
53.	fBodyAccJerk.std()-Y		:  frequency domain body generated accelerometer dataJerk, Standard deviation in Y direction
54.	fBodyAccJerk.std()-Z		:  frequency domain body generated accelerometer dataJerk, Standard deviation in Z direction
55.	fBodyGyro.mean()-X			:  frequency domain body generated gyroscope data, Mean value in X direction
56.	fBodyGyro.mean()-Y			:  frequency domain body generated gyroscope data, Mean value in Y direction
57.	fBodyGyro.mean()-Z			:  frequency domain body generated gyroscope data, Mean value in Z direction
58.	fBodyGyro.std()-X			:  frequency domain body generated gyroscope data, Standard deviation in X direction
59.	fBodyGyro.std()-Y			:  frequency domain body generated gyroscope data, Standard deviation in Y direction
60.	fBodyGyro.std()-Z			:  frequency domain body generated gyroscope data, Standard deviation in Z direction
61.	fBodyAccMag.mean()			:  frequency domain body generated accelerometer data magnitude, Mean value
62.	fBodyAccMag.std()			:  frequency domain body generated accelerometer data magnitude, Standard deviation
63.	fBodyBodyAccJerkMag.mean()	:  frequency domain body generated accelerometer dataJerk magnitude, Mean value
64.	fBodyBodyAccJerkMag.std()	:  frequency domain body generated accelerometer dataJerk magnitude, Standard deviation
65.	fBodyBodyGyroMag.mean()		:  frequency domain body generated gyroscope data magnitude, Mean value
66.	fBodyBodyGyroMag.std()		:  frequency domain body generated gyroscope data magnitude, Standard deviation
67.	fBodyBodyGyroJerkMag.mean()	:  frequency domain body generated gyroscope dataJerk magnitude, Mean value
68.	fBodyBodyGyroJerkMag.std()	:  frequency domain body generated gyroscope dataJerk magnitude, Standard deviation 

## Description of each variable in tiny_data
   subject  
Min.   : 1.0  
1st Qu.: 8.0  
Median :15.5  
Mean   :15.5  
3rd Qu.:23.0  
Max.   :30.0  


  activity  
Length:180        
Class :character  
Mode  :character  
NA
NA
NA


tBodyAcc.mean...X  
Min.   :0.2216  
1st Qu.:0.2712  
Median :0.2770  
Mean   :0.2743  
3rd Qu.:0.2800  
Max.   :0.3015  


tBodyAcc.mean...Y  
Min.   :-0.040514  
1st Qu.:-0.020022  
Median :-0.017262  
Mean   :-0.017876  
3rd Qu.:-0.014936  
Max.   :-0.001308  


tBodyAcc.mean...Z  
Min.   :-0.15251  
1st Qu.:-0.11207  
Median :-0.10819  
Mean   :-0.10916  
3rd Qu.:-0.10443  
Max.   :-0.07538  


tBodyAcc.std...X  
Min.   :-0.9961  
1st Qu.:-0.9799  
Median :-0.7526  
Mean   :-0.5577  
3rd Qu.:-0.1984  
Max.   : 0.6269  


tBodyAcc.std...Y  
Min.   :-0.99024  
1st Qu.:-0.94205  
Median :-0.50897  
Mean   :-0.46046  
3rd Qu.:-0.03077  
Max.   : 0.61694  


tBodyAcc.std...Z  
Min.   :-0.9877  
1st Qu.:-0.9498  
Median :-0.6518  
Mean   :-0.5756  
3rd Qu.:-0.2306  
Max.   : 0.6090  


tGravityAcc.mean...X  
Min.   :-0.6800  
1st Qu.: 0.8376  
Median : 0.9208  
Mean   : 0.6975  
3rd Qu.: 0.9425  
Max.   : 0.9745  


tGravityAcc.mean...Y  
Min.   :-0.47989  
1st Qu.:-0.23319  
Median :-0.12782  
Mean   :-0.01621  
3rd Qu.: 0.08773  
Max.   : 0.95659  


tGravityAcc.mean...Z  
Min.   :-0.49509  
1st Qu.:-0.11726  
Median : 0.02384  
Mean   : 0.07413  
3rd Qu.: 0.14946  
Max.   : 0.95787  


tGravityAcc.std...X  
Min.   :-0.9968  
1st Qu.:-0.9825  
Median :-0.9695  
Mean   :-0.9638  
3rd Qu.:-0.9509  
Max.   :-0.8296  


tGravityAcc.std...Y  
Min.   :-0.9942  
1st Qu.:-0.9711  
Median :-0.9590  
Mean   :-0.9524  
3rd Qu.:-0.9370  
Max.   :-0.6436  


tGravityAcc.std...Z  
Min.   :-0.9910  
1st Qu.:-0.9605  
Median :-0.9450  
Mean   :-0.9364  
3rd Qu.:-0.9180  
Max.   :-0.6102  


tBodyAccJerk.mean...X  
Min.   :0.04269  
1st Qu.:0.07396  
Median :0.07640  
Mean   :0.07947  
3rd Qu.:0.08330  
Max.   :0.13019  


tBodyAccJerk.mean...Y  
Min.   :-0.0386872  
1st Qu.: 0.0004664  
Median : 0.0094698  
Mean   : 0.0075652  
3rd Qu.: 0.0134008  
Max.   : 0.0568186  


tBodyAccJerk.mean...Z  
Min.   :-0.067458  
1st Qu.:-0.010601  
Median :-0.003861  
Mean   :-0.004953  
3rd Qu.: 0.001958  
Max.   : 0.038053  


tBodyAccJerk.std...X  
Min.   :-0.9946  
1st Qu.:-0.9832  
Median :-0.8104  
Mean   :-0.5949  
3rd Qu.:-0.2233  
Max.   : 0.5443  


tBodyAccJerk.std...Y  
Min.   :-0.9895  
1st Qu.:-0.9724  
Median :-0.7756  
Mean   :-0.5654  
3rd Qu.:-0.1483  
Max.   : 0.3553  


tBodyAccJerk.std...Z  
Min.   :-0.99329  
1st Qu.:-0.98266  
Median :-0.88366  
Mean   :-0.73596  
3rd Qu.:-0.51212  
Max.   : 0.03102  


tBodyGyro.mean...X  
Min.   :-0.20578  
1st Qu.:-0.04712  
Median :-0.02871  
Mean   :-0.03244  
3rd Qu.:-0.01676  
Max.   : 0.19270  


tBodyGyro.mean...Y  
Min.   :-0.20421  
1st Qu.:-0.08955  
Median :-0.07318  
Mean   :-0.07426  
3rd Qu.:-0.06113  
Max.   : 0.02747  


tBodyGyro.mean...Z  
Min.   :-0.07245  
1st Qu.: 0.07475  
Median : 0.08512  
Mean   : 0.08744  
3rd Qu.: 0.10177  
Max.   : 0.17910  


tBodyGyro.std...X  
Min.   :-0.9943  
1st Qu.:-0.9735  
Median :-0.7890  
Mean   :-0.6916  
3rd Qu.:-0.4414  
Max.   : 0.2677  


tBodyGyro.std...Y  
Min.   :-0.9942  
1st Qu.:-0.9629  
Median :-0.8017  
Mean   :-0.6533  
3rd Qu.:-0.4196  
Max.   : 0.4765  


tBodyGyro.std...Z  
Min.   :-0.9855  
1st Qu.:-0.9609  
Median :-0.8010  
Mean   :-0.6164  
3rd Qu.:-0.3106  
Max.   : 0.5649  


tBodyGyroJerk.mean...X  
Min.   :-0.15721  
1st Qu.:-0.10322  
Median :-0.09868  
Mean   :-0.09606  
3rd Qu.:-0.09110  
Max.   :-0.02209  


tBodyGyroJerk.mean...Y  
Min.   :-0.07681  
1st Qu.:-0.04552  
Median :-0.04112  
Mean   :-0.04269  
3rd Qu.:-0.03842  
Max.   :-0.01320  


tBodyGyroJerk.mean...Z  
Min.   :-0.092500  
1st Qu.:-0.061725  
Median :-0.053430  
Mean   :-0.054802  
3rd Qu.:-0.048985  
Max.   :-0.006941  


tBodyGyroJerk.std...X  
Min.   :-0.9965  
1st Qu.:-0.9800  
Median :-0.8396  
Mean   :-0.7036  
3rd Qu.:-0.4629  
Max.   : 0.1791  


tBodyGyroJerk.std...Y  
Min.   :-0.9971  
1st Qu.:-0.9832  
Median :-0.8942  
Mean   :-0.7636  
3rd Qu.:-0.5861  
Max.   : 0.2959  


tBodyGyroJerk.std...Z  
Min.   :-0.9954  
1st Qu.:-0.9848  
Median :-0.8610  
Mean   :-0.7096  
3rd Qu.:-0.4741  
Max.   : 0.1932  


tBodyAccMag.mean..  
Min.   :-0.9865  
1st Qu.:-0.9573  
Median :-0.4829  
Mean   :-0.4973  
3rd Qu.:-0.0919  
Max.   : 0.6446  


tBodyAccMag.std..  
Min.   :-0.9865  
1st Qu.:-0.9430  
Median :-0.6074  
Mean   :-0.5439  
3rd Qu.:-0.2090  
Max.   : 0.4284  


tGravityAccMag.mean..  
Min.   :-0.9865  
1st Qu.:-0.9573  
Median :-0.4829  
Mean   :-0.4973  
3rd Qu.:-0.0919  
Max.   : 0.6446  


tGravityAccMag.std..  
Min.   :-0.9865  
1st Qu.:-0.9430  
Median :-0.6074  
Mean   :-0.5439  
3rd Qu.:-0.2090  
Max.   : 0.4284  


tBodyAccJerkMag.mean..  
Min.   :-0.9928  
1st Qu.:-0.9807  
Median :-0.8168  
Mean   :-0.6079  
3rd Qu.:-0.2456  
Max.   : 0.4345  


tBodyAccJerkMag.std..  
Min.   :-0.9946  
1st Qu.:-0.9765  
Median :-0.8014  
Mean   :-0.5842  
3rd Qu.:-0.2173  
Max.   : 0.4506  


tBodyGyroMag.mean..  
Min.   :-0.9807  
1st Qu.:-0.9461  
Median :-0.6551  
Mean   :-0.5652  
3rd Qu.:-0.2159  
Max.   : 0.4180  


tBodyGyroMag.std..  
Min.   :-0.9814  
1st Qu.:-0.9476  
Median :-0.7420  
Mean   :-0.6304  
3rd Qu.:-0.3602  
Max.   : 0.3000  


tBodyGyroJerkMag.mean..  
Min.   :-0.99732  
1st Qu.:-0.98515  
Median :-0.86479  
Mean   :-0.73637  
3rd Qu.:-0.51186  
Max.   : 0.08758  


tBodyGyroJerkMag.std..  
Min.   :-0.9977  
1st Qu.:-0.9805  
Median :-0.8809  
Mean   :-0.7550  
3rd Qu.:-0.5767  
Max.   : 0.2502  


fBodyAcc.mean...X  
Min.   :-0.9952  
1st Qu.:-0.9787  
Median :-0.7691  
Mean   :-0.5758  
3rd Qu.:-0.2174  
Max.   : 0.5370  


fBodyAcc.mean...Y  
Min.   :-0.98903  
1st Qu.:-0.95361  
Median :-0.59498  
Mean   :-0.48873  
3rd Qu.:-0.06341  
Max.   : 0.52419  


fBodyAcc.mean...Z  
Min.   :-0.9895  
1st Qu.:-0.9619  
Median :-0.7236  
Mean   :-0.6297  
3rd Qu.:-0.3183  
Max.   : 0.2807  


fBodyAcc.std...X  
Min.   :-0.9966  
1st Qu.:-0.9820  
Median :-0.7470  
Mean   :-0.5522  
3rd Qu.:-0.1966  
Max.   : 0.6585  


fBodyAcc.std...Y  
Min.   :-0.99068  
1st Qu.:-0.94042  
Median :-0.51338  
Mean   :-0.48148  
3rd Qu.:-0.07913  
Max.   : 0.56019  


fBodyAcc.std...Z  
Min.   :-0.9872  
1st Qu.:-0.9459  
Median :-0.6441  
Mean   :-0.5824  
3rd Qu.:-0.2655  
Max.   : 0.6871  


fBodyAccJerk.mean...X  
Min.   :-0.9946  
1st Qu.:-0.9828  
Median :-0.8126  
Mean   :-0.6139  
3rd Qu.:-0.2820  
Max.   : 0.4743  


fBodyAccJerk.mean...Y  
Min.   :-0.9894  
1st Qu.:-0.9725  
Median :-0.7817  
Mean   :-0.5882  
3rd Qu.:-0.1963  
Max.   : 0.2767  


fBodyAccJerk.mean...Z  
Min.   :-0.9920  
1st Qu.:-0.9796  
Median :-0.8707  
Mean   :-0.7144  
3rd Qu.:-0.4697  
Max.   : 0.1578  


fBodyAccJerk.std...X  
Min.   :-0.9951  
1st Qu.:-0.9847  
Median :-0.8254  
Mean   :-0.6121  
3rd Qu.:-0.2475  
Max.   : 0.4768  


fBodyAccJerk.std...Y  
Min.   :-0.9905  
1st Qu.:-0.9737  
Median :-0.7852  
Mean   :-0.5707  
3rd Qu.:-0.1685  
Max.   : 0.3498  


fBodyAccJerk.std...Z  
Min.   :-0.993108  
1st Qu.:-0.983747  
Median :-0.895121  
Mean   :-0.756489  
3rd Qu.:-0.543787  
Max.   :-0.006236  


fBodyGyro.mean...X  
Min.   :-0.9931  
1st Qu.:-0.9697  
Median :-0.7300  
Mean   :-0.6367  
3rd Qu.:-0.3387  
Max.   : 0.4750  


fBodyGyro.mean...Y  
Min.   :-0.9940  
1st Qu.:-0.9700  
Median :-0.8141  
Mean   :-0.6767  
3rd Qu.:-0.4458  
Max.   : 0.3288  


fBodyGyro.mean...Z  
Min.   :-0.9860  
1st Qu.:-0.9624  
Median :-0.7909  
Mean   :-0.6044  
3rd Qu.:-0.2635  
Max.   : 0.4924  


fBodyGyro.std...X  
Min.   :-0.9947  
1st Qu.:-0.9750  
Median :-0.8086  
Mean   :-0.7110  
3rd Qu.:-0.4813  
Max.   : 0.1966  


fBodyGyro.std...Y  
Min.   :-0.9944  
1st Qu.:-0.9602  
Median :-0.7964  
Mean   :-0.6454  
3rd Qu.:-0.4154  
Max.   : 0.6462  


fBodyGyro.std...Z  
Min.   :-0.9867  
1st Qu.:-0.9643  
Median :-0.8224  
Mean   :-0.6577  
3rd Qu.:-0.3916  
Max.   : 0.5225  


fBodyAccMag.mean..  
Min.   :-0.9868  
1st Qu.:-0.9560  
Median :-0.6703  
Mean   :-0.5365  
3rd Qu.:-0.1622  
Max.   : 0.5866  


fBodyAccMag.std..  
Min.   :-0.9876  
1st Qu.:-0.9452  
Median :-0.6513  
Mean   :-0.6210  
3rd Qu.:-0.3654  
Max.   : 0.1787  


fBodyBodyAccJerkMag.mean..  
Min.   :-0.9940  
1st Qu.:-0.9770  
Median :-0.7940  
Mean   :-0.5756  
3rd Qu.:-0.1872  
Max.   : 0.5384  


fBodyBodyAccJerkMag.std..  
Min.   :-0.9944  
1st Qu.:-0.9752  
Median :-0.8126  
Mean   :-0.5992  
3rd Qu.:-0.2668  
Max.   : 0.3163  


fBodyBodyGyroMag.mean..  
Min.   :-0.9865  
1st Qu.:-0.9616  
Median :-0.7657  
Mean   :-0.6671  
3rd Qu.:-0.4087  
Max.   : 0.2040  


fBodyBodyGyroMag.std..  
Min.   :-0.9815  
1st Qu.:-0.9488  
Median :-0.7727  
Mean   :-0.6723  
3rd Qu.:-0.4277  
Max.   : 0.2367  


fBodyBodyGyroJerkMag.mean..  
Min.   :-0.9976  
1st Qu.:-0.9813  
Median :-0.8779  
Mean   :-0.7564  
3rd Qu.:-0.5831  
Max.   : 0.1466  


fBodyBodyGyroJerkMag.std..  
Min.   :-0.9976  
1st Qu.:-0.9802  
Median :-0.8941  
Mean   :-0.7715  
3rd Qu.:-0.6081  
Max.   : 0.2878  

##Sources
https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41 was used as inspiration for creation of the Codebook.md
