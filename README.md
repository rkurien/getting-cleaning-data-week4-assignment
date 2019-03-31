# getting-cleaning-data-week4-assignment
Week 4 assignment

## Creating a tidy data set using run_analysis.R script

### Step 1: Download the original dataset and unzip the downloaded file.

Data is now in a folder named **UCI HAR Dataset**

### Step 2: Read all data files using read.table()

Read the following files (.txt)
1. ActivityLabels
2. features
3. training data
  1. X_train
  2. y_train
  3. subject_train
4. test data
  1. x_test
  2. y_test
  3. subject_test
  
Added appropriate column names to all loaded data

### Step 3: As per project requirement, merge all data into single dataset

Training data set consisting of 3 files were merged into one (**training_dataset**) using cbind
Test data set consisting of 3 files were merged into one (**test_dataset**) using cbind
Both the above were merged usign rbind to form a single dataset named **masterdata**

### Step 4: Extract required data on mean and standard deviation as per project requirement

Using grepl, a logical vector of required column names (subjectId, activityId, mean(), std()) was created. Using this vector a subset of the masterdata was created with only mean and standard deviation measurements. This subset was stored as **mstd_data**

Descriptive activity names were added to this data set.
Columns were reordered, and activityId column was dropped.

Descriptive variable/column names were given for the **mstd_data**

### Step 5: Independent tidy data set **tidyData** was created

Independent tidy data set was created by calculation mean of all measurements for each subject and each activity. The aggregate() was used for calculation, followed by arrange to group and order the same.

The data in tidyData set was used to create the final tidy data file named 'tidydata.txt'



