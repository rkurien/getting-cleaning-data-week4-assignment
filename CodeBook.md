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
Number of variables | 81

### Description

There are 30 subjects who performed the activity

The activities performed are as follows:-
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING


**Tidy Data Summary Table**

Variable | Class
------------ | -------------
**subjectId** | integer
**activityName**| factor
**timeDomain-BodyAcceleration-mean-X**| numeric
**timeDomain-BodyAcceleration-mean-Y**| numeric
**timeDomain-BodyAcceleration-mean-Z**| numeric
**timeDomain-BodyAcceleration-StdDeviation-X**| numeric
**timeDomain-BodyAcceleration-StdDeviation-Y**| numeric
**timeDomain-BodyAcceleration-StdDeviation-Z**| numeric
**timeDomain-GravityAcceleration-mean-X**| numeric
**timeDomain-GravityAcceleration-mean-Y**| numeric
**timeDomain-GravityAcceleration-mean-Z**| numeric
**timeDomain-GravityAcceleration-StdDeviation-X**| numeric
**timeDomain-GravityAcceleration-StdDeviation-Y**| numeric
**timeDomain-GravityAcceleration-StdDeviation-Z**| numeric
**timeDomain-BodyAccelerationJerk-mean-X**| numeric
**timeDomain-BodyAccelerationJerk-mean-Y**| numeric
**timeDomain-BodyAccelerationJerk-mean-Z**| numeric
**timeDomain-BodyAccelerationJerk-StdDeviation-X**| numeric
**timeDomain-BodyAccelerationJerk-StdDeviation-Y**| numeric
**timeDomain-BodyAccelerationJerk-StdDeviation-Z**| numeric
**timeDomain-BodyGyroscope-mean-X**| numeric
**timeDomain-BodyGyroscope-mean-Y**| numeric
**timeDomain-BodyGyroscope-mean-Z**| numeric
**timeDomain-BodyGyroscope-StdDeviation-X**| numeric
**timeDomain-BodyGyroscope-StdDeviation-Y**| numeric
**timeDomain-BodyGyroscope-StdDeviation-Z**| numeric
**timeDomain-BodyGyroscopeJerk-mean-X**| numeric
**timeDomain-BodyGyroscopeJerk-mean-Y**| numeric
**timeDomain-BodyGyroscopeJerk-mean-Z**| numeric
**timeDomain-BodyGyroscopeJerk-StdDeviation-X**| numeric
**timeDomain-BodyGyroscopeJerk-StdDeviation-Y**| numeric
**timeDomain-BodyGyroscopeJerk-StdDeviation-Z**| numeric
**timeDomain-BodyAccelerationMagnitude-mean**| numeric
**timeDomain-BodyAccelerationMagnitude-StdDeviation**| numeric
**timeDomain-GravityAccelerationMagnitude-mean**| numeric
**timeDomain-GravityAccelerationMagnitude-StdDeviation**| numeric
**timeDomain-BodyAccelerationJerkMagnitude-mean**| numeric
**timeDomain-BodyAccelerationJerkMagnitude-StdDeviation**| numeric
**timeDomain-BodyGyroscopeMagnitude-mean**| numeric
**timeDomain-BodyGyroscopeMagnitude-StdDeviation**| numeric
**timeDomain-BodyGyroscopeJerkMagnitude-mean**| numeric
**timeDomain-BodyGyroscopeJerkMagnitude-StdDeviation**| numeric
**frequencyDomain-BodyAcceleration-mean-X**| numeric
**frequencyDomain-BodyAcceleration-mean-Y** | numeric
**frequencyDomain-BodyAcceleration-mean-Z**| numeric
**frequencyDomain-BodyAcceleration-StdDeviation-X**| numeric
**frequencyDomain-BodyAcceleration-StdDeviation-Y**| numeric
**frequencyDomain-BodyAcceleration-StdDeviation-Z**| numeric
**frequencyDomain-BodyAcceleration-meanFreq-X**| numeric
**frequencyDomain-BodyAcceleration-meanFreq-Y**| numeric
**frequencyDomain-BodyAcceleration-meanFreq-Z**| numeric
**frequencyDomain-BodyAccelerationJerk-mean-X**| numeric
**frequencyDomain-BodyAccelerationJerk-mean-Y**| numeric
**frequencyDomain-BodyAccelerationJerk-mean-Z**| numeric
**frequencyDomain-BodyAccelerationJerk-StdDeviation-X**| numeric
**frequencyDomain-BodyAccelerationJerk-StdDeviation-Y**| numeric
**frequencyDomain-BodyAccelerationJerk-StdDeviation-Z**| numeric
**frequencyDomain-BodyAccelerationJerk-meanFreq-X**| numeric
**frequencyDomain-BodyAccelerationJerk-meanFreq-Y**| numeric
**frequencyDomain-BodyAccelerationJerk-meanFreq-Z**| numeric
**frequencyDomain-BodyGyroscope-mean-X**| numeric
**frequencyDomain-BodyGyroscope-mean-Y**| numeric
**frequencyDomain-BodyGyroscope-mean-Z**| numeric
**frequencyDomain-BodyGyroscope-StdDeviation-X**| numeric
**frequencyDomain-BodyGyroscope-StdDeviation-Y**| numeric
**frequencyDomain-BodyGyroscope-StdDeviation-Z**| numeric
**frequencyDomain-BodyGyroscope-meanFreq-X**| numeric
**frequencyDomain-BodyGyroscope-meanFreq-Y**| numeric
**frequencyDomain-BodyGyroscope-meanFreq-Z**| numeric
**frequencyDomain-BodyAccelerationMagnitude-mean**| numeric
**frequencyDomain-BodyAccelerationMagnitude-StdDeviation**| numeric
**frequencyDomain-BodyAccelerationMagnitude-meanFreq**| numeric
**frequencyDomain-BodyAccelerationJerkMagnitude-mean**| numeric
**frequencyDomain-BodyAccelerationJerkMagnitude-StdDeviation**| numeric
**frequencyDomain-BodyAccelerationJerkMagnitude-meanFreq**| numeric
**frequencyDomain-BodyGyroscopeMagnitude-mean**| numeric
**frequencyDomain-BodyGyroscopeMagnitude-StdDeviation** | numeric
**frequencyDomain-BodyGyroscopeMagnitude-meanFreq**| numeric
**frequencyDomain-BodyGyroscopeJerkMagnitude-mean**| numeric
**frequencyDomain-BodyGyroscopeJerkMagnitude-StdDeviation**| numeric
**frequencyDomain-BodyGyroscopeJerkMagnitude-meanFreq**| numeric

There are no Missing Values.