# Code Book

## Original Data Set: Human Activity Recognition Using Smartphones Data Set

### Summary
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


### Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Coursera Getting and Cleaning Data Course Project

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### create one R script called **run_analysis.R** that does the following
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The **run_analysis.R** script creates a tidy data set named **tidyData.txt**

## Tidy Data Output - tidyData.txt

### Summary

tidydata.txt is an independent tidy data set with the average of each variable for each activity and each subject from the original training and test data. Only the mean and standard deviation data is included and other data is omitted as per requirements of the project.

Feature | Result
------------ | -------------
Number of observations | 180
Number of variables | 68

### Description

There are 30 subjects who performed the activity

The activities performed are as follows:-
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


**Tidy Data Summary Table**

Variable | Class
------------ | -------------
**[subjectId]** | integer               
**[activityName]** | factor     
**[timeDomain-BodyAcc-mean-X]** | numeric      
**[timeDomain-BodyAcc-mean-Y]** | numeric      
**[timeDomain-BodyAcc-mean-Z]** | numeric      
**[timeDomain-BodyAcc-stdDeviation-X]** | numeric     
**[timeDomain-BodyAcc-stdDeviation-Y]** | numeric      
**[timeDomain-BodyAcc-stdDeviation-Z]** | numeric      
**[timeDomain-GravityAcc-mean-X]**  | numeric      
**[timeDomain-GravityAcc-mean-Y]**  | numeric      
**[timeDomain-GravityAcc-mean-Z]**  | numeric      
**[timeDomain-GravityAcc-stdDeviation-X]**  | numeric      
**[timeDomain-GravityAcc-stdDeviation-Y]**  | numeric
**[timeDomain-GravityAcc-stdDeviation-Z]**  | numeric
**[timeDomain-BodyAccJerk-mean-X]** | numeric
**[timeDomain-BodyAccJerk-mean-Y]** | numeric
**[timeDomain-BodyAccJerk-mean-Z]** | numeric
**[timeDomain-BodyAccJerk-stdDeviation-X]** | numeric
**[timeDomain-BodyAccJerk-stdDeviation-Y]** |         numeric
**[timeDomain-BodyAccJerk-stdDeviation-Z]** |         numeric
**[timeDomain-BodyGyro-mean-X]**  |                   numeric
**[timeDomain-BodyGyro-mean-Y]**  |                   numeric
**[timeDomain-BodyGyro-mean-Z]**  |                   numeric 
**[timeDomain-BodyGyro-stdDeviation-X]**  |           numeric 
**[timeDomain-BodyGyro-stdDeviation-Y]**  |           numeric
**[timeDomain-BodyGyro-stdDeviation-Z]**  |           numeric
**[timeDomain-BodyGyroJerk-mean-X]**  |               numeric
**[timeDomain-BodyGyroJerk-mean-Y]**  |               numeric
**[timeDomain-BodyGyroJerk-mean-Z]**  |               numeric
**[timeDomain-BodyGyroJerk-stdDeviation-X]**  |       numeric
**[timeDomain-BodyGyroJerk-stdDeviation-Y]**  |       numeric
**[timeDomain-BodyGyroJerk-stdDeviation-Z]**  |       numeric
**[timeDomain-BodyAccMag-mean]** |                     numeric
**[timeDomain-BodyAccMag-stdDeviation]**  |           numeric
**[timeDomain-GravityAccMag-mean]** |                 numeric
**[timeDomain-GravityAccMag-stdDeviation]** |         numeric
**[timeDomain-BodyAccJerkMag-mean]** |               numeric
**[timeDomain-BodyAccJerkMag-stdDeviation]**  |       numeric
**[timeDomain-BodyGyroMag-mean]** |                   numeric
**[timeDomain-BodyGyroMag-stdDeviation]** |           numeric
**[timeDomain-BodyGyroJerkMag-mean]** |               numeric
**[timeDomain-BodyGyroJerkMag-stdDeviation]** |       numeric
**[frequencyDomain-BodyAcc-mean-X]**  |               numeric
**[frequencyDomain-BodyAcc-mean-Y]**  |               numeric
**[frequencyDomain-BodyAcc-mean-Z]**  |               numeric
**[frequencyDomain-BodyAcc-stdDeviation-X]**  |       numeric
**[frequencyDomain-BodyAcc-stdDeviation-Y]**  |       numeric
**[frequencyDomain-BodyAcc-stdDeviation-Z]**  |       numeric
**[frequencyDomain-BodyAccJerk-mean-X]**  |           numeric
**[frequencyDomain-BodyAccJerk-mean-Y]**  |           numeric
**[frequencyDomain-BodyAccJerk-mean-Z]**  |           numeric
**[frequencyDomain-BodyAccJerk-stdDeviation-X]**  |   numeric 
**[frequencyDomain-BodyAccJerk-stdDeviation-Y]**  |   numeric
**[frequencyDomain-BodyAccJerk-stdDeviation-Z]**  |   numeric
**[frequencyDomain-BodyGyro-mean-X]** |               numeric
**[frequencyDomain-BodyGyro-mean-Y]** |              numeric
**[frequencyDomain-BodyGyro-mean-Z]** |               numeric
**[frequencyDomain-BodyGyro-stdDeviation-X]** |       numeric
**[frequencyDomain-BodyGyro-stdDeviation-Y]** |       numeric
**[frequencyDomain-BodyGyro-stdDeviation-Z]** |       numeric
**[frequencyDomain-BodyAccMag-mean]** |               numeric
**[frequencyDomain-BodyAccMag-stdDeviation]** |       numeric
**[frequencyDomain-BodyAccJerkMag-mean]** |           numeric
**[frequencyDomain-BodyAccJerkMag-stdDeviation]** |   numeric
**[frequencyDomain-BodyGyroMag-mean]**  |             numeric
**[frequencyDomain-BodyGyroMag-stdDeviation]**  |     numeric
**[frequencyDomain-BodyGyroJerkMag-mean]**  |         numeric
**[frequencyDomain-BodyGyroJerkMag-stdDeviation]**  | numeric

There are no Missing Values.