library(dplyr)
zip_file <- "dataset.zip"

## Download and unzip the dataset
if (!file.exists(zip_file)) {
  fileUrl <-
    "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, zip_file, mode = "wb")
}
# unzip the downloaded file
if (!file.exists("UCI HAR Dataset")) {
  unzip(zip_file)
}

# read activity labels
activityLabels = read.table("UCI HAR Dataset/activity_labels.txt")
# add column names
colnames(activityLabels) <- c("activityId", "activityName")

# read features
features = read.table("UCI HAR Dataset/features.txt")
# add column names
colnames(features) <- c("featureId", "featureName")

#Read training data - X_train / y_train, subject_train
x_train = read.table("UCI HAR Dataset/train/X_train.txt")
y_train = read.table("UCI HAR Dataset/train/y_train.txt")
subject_train = read.table("UCI HAR DATASET/train/subject_train.txt")

# Add column names to training data
colnames(x_train) <- features[, "featureName"]
colnames(y_train) <- "activityId"
colnames(subject_train) <- "subjectId"

# Read test data - X_test / y_test, subject_test
x_test = read.table("UCI HAR Dataset/test/X_test.txt")
y_test = read.table("UCI HAR Dataset/test/y_test.txt")
subject_test = read.table("UCI HAR DATASET/test/subject_test.txt")

# Add column names to test data
colnames(x_test) <- features[, "featureName"]
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

### 1) Create one data set

# Merge all training data
training_dataset <- cbind(subject_train, y_train, x_train)

# Merge all test data
test_dataset <- cbind(subject_test, y_test, x_test)

# Merge both training and test data rows - using row bind
masterdata <- rbind(training_dataset, test_dataset)

### 2) Extract only the measurements on the mean and standard deviation ###

# Extract required column names
colNames <- colnames(masterdata)
mean_std <- (
  grepl("subjectId", colNames) | grepl("activityId", colNames) |
    grepl("mean\\(\\)", colNames) | grepl("std\\(\\)", colNames)
)

# Extract required data on mean and standard deviation
mstd_data <- masterdata[ , mean_std == TRUE]

### 3) Use descriptive activity names to name the activities in the data set

# add activity name to data
mstd_data = merge(mstd_data, activityLabels, by='activityId', all.x=TRUE)

# reorder columns to start from subjectId, activityName, .....,drop activityId
mstd_data <- mstd_data[,c(2,69, 3:68)]

### 4) Appropriately label the data set with descriptive variable names

# load column names
varNames <- colnames(mstd_data)

# remove brackets, change to descriptive column/variable names
varNames <- gsub("\\(\\)", "", varNames)
varNames <- gsub("^f", "frequencyDomain-", varNames)
varNames <- gsub("^t", "timeDomain-", varNames)
varNames <- gsub("std", "stdDeviation", varNames)
varNames <- gsub("BodyBody", "Body", varNames)

# assign descriptive variable names to dataset
colnames(mstd_data) <- varNames

### 5) Create independent tidy data set with the average of each variable for each activity and each subject

# create tidy data 
tidyData <- aggregate(. ~subjectId + activityName, mstd_data, mean)
tidyData <- arrange(tidyData, subjectId, activityName)

# create txt file
write.table(tidyData, "tidydata.txt", row.name=FALSE)