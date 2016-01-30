# CodeBook.md

## Input Data Set
'features_info.txt': Shows information about the variables used on the feature vector.
'features.txt': List of all features.
'activity_labels.txt': Links the class labels with their activity name.
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'test/X_test.txt': Test set.
'test/y_test.txt': Test labels.


## Output Data Set
tidyDataSet.txt : Final data set


## Variables
dataFilepath : path of the datafile to load
y_test,x_test,subject_test,y_train,x_train,subject_train : used to store data loaded from datafile
ctest, ctrain : store combined data sets column wise
cdf : final combined raw data set of test and train data
gb : cdf data set after grouped by subject & activity
act_sub_mean : summarized mean and final tidy data set to be sent to instructor


## Functions
ch_activity : function to modify activuty from a number to descriptive name

## Script tasks

1. Cleans up variables used in the script
2. Loads data files into individual variables
3. Merges the variables and observations together
4. Renames the columns to be more useful than a number
5. Selects only those columns that will be used for analysis
6. Modifies the activity data from a numeric to a more readble word
7. Modifies the column names again to be more descriptive
8. Computes the average for each subject and activity

