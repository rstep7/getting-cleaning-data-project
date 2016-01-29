## Load libraries
library(dplyr)

## Cleanup Variables
rm(y_test,x_test,subject_test,y_train,x_train,subject_train)
rm(ctest,ctrain,cdf)

## Load Data Sets
dataFilepath <- "./UCI HAR Dataset/test/subject_test.txt"
subject_test <- tbl_df(read.table(dataFilepath))
subject_test <- rename(subject_test, subject=V1)

dataFilepath <- "./UCI HAR Dataset/test/y_test.txt"
y_test <- tbl_df(read.table(dataFilepath))
y_test <- rename(y_test, activity=V1)

dataFilepath <- "./UCI HAR Dataset/test/X_test.txt"
x_test <- tbl_df(read.table(dataFilepath))

dataFilepath <- "./UCI HAR Dataset/train/subject_train.txt"
subject_train <- tbl_df(read.table(dataFilepath))
subject_train <- rename(subject_train, subject=V1)

dataFilepath <- "./UCI HAR Dataset/train/y_train.txt"
y_train <- tbl_df(read.table(dataFilepath))
y_train <- rename(y_train, activity=V1)

dataFilepath <- "./UCI HAR Dataset/train/X_train.txt"
x_train <- tbl_df(read.table(dataFilepath))

############################
# STEP 1
############################

## Merge data frames
ctest <- cbind(subject_test,y_test,x_test)
ctrain <- cbind(subject_train,y_train,x_train)
cdf <- rbind(ctest,ctrain)

## Convert to table using dplyr
cdf <- tbl_df(cdf)

## Rename Columns for selecting later
cdf <- rename(cdf,"tBodyAcc-mean()-X"=V1)
cdf <- rename(cdf,"tBodyAcc-mean()-Y"=V2)
cdf <- rename(cdf,"tBodyAcc-mean()-Z"=V3)
cdf <- rename(cdf,"tBodyAcc-std()-X"=V4)
cdf <- rename(cdf,"tBodyAcc-std()-Y"=V5)
cdf <- rename(cdf,"tBodyAcc-std()-Z"=V6)
cdf <- rename(cdf,"tGravityAcc-mean()-X"=V41)
cdf <- rename(cdf,"tGravityAcc-mean()-Y"=V42)
cdf <- rename(cdf,"tGravityAcc-mean()-Z"=V43)
cdf <- rename(cdf,"tGravityAcc-std()-X"=V44)
cdf <- rename(cdf,"tGravityAcc-std()-Y"=V45)
cdf <- rename(cdf,"tGravityAcc-std()-Z"=V46)
cdf <- rename(cdf,"tBodyAccJerk-mean()-X"=V81)
cdf <- rename(cdf,"tBodyAccJerk-mean()-Y"=V82)
cdf <- rename(cdf,"tBodyAccJerk-mean()-Z"=V83)
cdf <- rename(cdf,"tBodyAccJerk-std()-X"=V84)
cdf <- rename(cdf,"tBodyAccJerk-std()-Y"=V85)
cdf <- rename(cdf,"tBodyAccJerk-std()-Z"=V86)
cdf <- rename(cdf,"tBodyGyro-mean()-X"=V121)
cdf <- rename(cdf,"tBodyGyro-mean()-Y"=V122)
cdf <- rename(cdf,"tBodyGyro-mean()-Z"=V123)
cdf <- rename(cdf,"tBodyGyro-std()-X"=V124)
cdf <- rename(cdf,"tBodyGyro-std()-Y"=V125)
cdf <- rename(cdf,"tBodyGyro-std()-Z"=V126)
cdf <- rename(cdf,"tBodyGyroJerk-mean()-X"=V161)
cdf <- rename(cdf,"tBodyGyroJerk-mean()-Y"=V162)
cdf <- rename(cdf,"tBodyGyroJerk-mean()-Z"=V163)
cdf <- rename(cdf,"tBodyGyroJerk-std()-X"=V164)
cdf <- rename(cdf,"tBodyGyroJerk-std()-Y"=V165)
cdf <- rename(cdf,"tBodyGyroJerk-std()-Z"=V166)
cdf <- rename(cdf,"tBodyAccMag-mean()"=V201)
cdf <- rename(cdf,"tBodyAccMag-std()"=V202)
cdf <- rename(cdf,"tGravityAccMag-mean()"=V214)
cdf <- rename(cdf,"tGravityAccMag-std()"=V215)
cdf <- rename(cdf,"tBodyAccJerkMag-mean()"=V227)
cdf <- rename(cdf,"tBodyAccJerkMag-std()"=V228)
cdf <- rename(cdf,"tBodyGyroMag-mean()"=V240)
cdf <- rename(cdf,"tBodyGyroMag-std()"=V241)
cdf <- rename(cdf,"tBodyGyroJerkMag-mean()"=V253)
cdf <- rename(cdf,"tBodyGyroJerkMag-std()"=V254)
cdf <- rename(cdf,"fBodyAcc-mean()-X"=V266)
cdf <- rename(cdf,"fBodyAcc-mean()-Y"=V267)
cdf <- rename(cdf,"fBodyAcc-mean()-Z"=V268)
cdf <- rename(cdf,"fBodyAcc-std()-X"=V269)
cdf <- rename(cdf,"fBodyAcc-std()-Y"=V270)
cdf <- rename(cdf,"fBodyAcc-std()-Z"=V271)
cdf <- rename(cdf,"fBodyAcc-meanFreq()-X"=V294)
cdf <- rename(cdf,"fBodyAcc-meanFreq()-Y"=V295)
cdf <- rename(cdf,"fBodyAcc-meanFreq()-Z"=V296)
cdf <- rename(cdf,"fBodyAccJerk-mean()-X"=V345)
cdf <- rename(cdf,"fBodyAccJerk-mean()-Y"=V346)
cdf <- rename(cdf,"fBodyAccJerk-mean()-Z"=V347)
cdf <- rename(cdf,"fBodyAccJerk-std()-X"=V348)
cdf <- rename(cdf,"fBodyAccJerk-std()-Y"=V349)
cdf <- rename(cdf,"fBodyAccJerk-std()-Z"=V350)
cdf <- rename(cdf,"fBodyAccJerk-meanFreq()-X"=V373)
cdf <- rename(cdf,"fBodyAccJerk-meanFreq()-Y"=V374)
cdf <- rename(cdf,"fBodyAccJerk-meanFreq()-Z"=V375)
cdf <- rename(cdf,"fBodyGyro-mean()-X"=V424)
cdf <- rename(cdf,"fBodyGyro-mean()-Y"=V425)
cdf <- rename(cdf,"fBodyGyro-mean()-Z"=V426)
cdf <- rename(cdf,"fBodyGyro-std()-X"=V427)
cdf <- rename(cdf,"fBodyGyro-std()-Y"=V428)
cdf <- rename(cdf,"fBodyGyro-std()-Z"=V429)
cdf <- rename(cdf,"fBodyGyro-meanFreq()-X"=V452)
cdf <- rename(cdf,"fBodyGyro-meanFreq()-Y"=V453)
cdf <- rename(cdf,"fBodyGyro-meanFreq()-Z"=V454)
cdf <- rename(cdf,"fBodyAccMag-mean()"=V503)
cdf <- rename(cdf,"fBodyAccMag-std()"=V504)
cdf <- rename(cdf,"fBodyAccMag-meanFreq()"=V513)
cdf <- rename(cdf,"fBodyBodyAccJerkMag-mean()"=V516)
cdf <- rename(cdf,"fBodyBodyAccJerkMag-std()"=V517)
cdf <- rename(cdf,"fBodyBodyAccJerkMag-meanFreq()"=V526)
cdf <- rename(cdf,"fBodyBodyGyroMag-mean()"=V529)
cdf <- rename(cdf,"fBodyBodyGyroMag-std()"=V530)
cdf <- rename(cdf,"fBodyBodyGyroMag-meanFreq()"=V539)
cdf <- rename(cdf,"fBodyBodyGyroJerkMag-mean()"=V542)
cdf <- rename(cdf,"fBodyBodyGyroJerkMag-std()"=V543)
cdf <- rename(cdf,"fBodyBodyGyroJerkMag-meanFreq()"=V552)
cdf <- rename(cdf,"angle(tBodyAccMean,gravity)"=V555)
cdf <- rename(cdf,"angle(tBodyAccJerkMean),gravityMean)"=V556)
cdf <- rename(cdf,"angle(tBodyGyroMean,gravityMean)"=V557)
cdf <- rename(cdf,"angle(tBodyGyroJerkMean,gravityMean)"=V558)
cdf <- rename(cdf,"angle(X,gravityMean)"=V559)
cdf <- rename(cdf,"angle(Y,gravityMean)"=V560)
cdf <- rename(cdf,"angle(Z,gravityMean)"=V561)

############################
# STEP 2
############################

## Grab columns that are mean and standard deviation
cdf <- select(cdf,matches('subject|activity|mean()|std()',ignore.case=TRUE))


############################
# STEP 3
############################

## Create function to modify activity data
ch_activity <- function(x) {
        if(x == "1") { y = "WALKING" }
        else if(x == "2") { y = "WALKING_UPSTAIRS" }
        else if(x == "3") { y = "WALKING_DOWNSTAIRS" }
        else if(x == "4") { y = "SITTING" }
        else if(x == "5") { y = "STANDING" }
        else if(x == "6") { y = "LAYING" }
        else y = "UNKNOWN"
        y
}

## Modify the activity data
cdf <- cdf %>% rowwise() %>% mutate(activity = ch_activity(activity))

############################
# STEP 4
############################

## Make more meaningful column names
colnames(cdf) <- sub("^f","freq.",names(cdf))
colnames(cdf) <- sub("^t","time.",names(cdf))
colnames(cdf) <- gsub("mean\\(\\)$","Mean",names(cdf))
colnames(cdf) <- gsub("mean\\(\\)","Mean.",names(cdf))
colnames(cdf) <- gsub("Freq\\(\\)","Freq.",names(cdf))
colnames(cdf) <- gsub("Freq\\(\\)$","Freq",names(cdf))
colnames(cdf) <- gsub("std\\(\\)$","StdDev",names(cdf))
colnames(cdf) <- gsub("std\\(\\)","StdDev.",names(cdf))
colnames(cdf) <- gsub("-","\\.",names(cdf))
colnames(cdf) <- gsub("\\.\\.","\\.",names(cdf))


############################
# STEP 5
############################

# Data set with the average of each variable for each activity and each subject.
gb <- group_by(cdf,subject,activity) 
act_sub_mean <- summarize_each(gb,funs(mean))

# Write out the tidy data set
write.table(act_sub_mean, './tidyDataSet.txt',row.names=TRUE,sep='\t');

