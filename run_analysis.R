# The Objective of this script is to read data collected from the accelerometers from the Samsung Galaxy S smartphone and
# make some manipulation in order to output tidy data
# It was assumed in that code that data in "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"
#was downloaded and extraced in R working directory

library(dplyr)


#################################################
#Read data: in the below part we will read the data
#################################################

# read train data

trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainActivity <- read.table("UCI HAR Dataset/train/y_train.txt")
trainValue <- read.table("UCI HAR Dataset/train/X_train.txt")

# read test data

testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
testActivity <- read.table("UCI HAR Dataset/test/y_test.txt")
testValue <- read.table("UCI HAR Dataset/test/X_test.txt")

# read features

features <- read.table("UCI HAR Dataset/features.txt", as.is = TRUE)

# read activity labels

activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")


######################################################################
# Step 1 Merging the training and the test sets to create one data set
######################################################################


# we will use bind_rows() function in dplyr package to merge training and test 
# corresponding to subject, activity and values
 
subject <- bind_rows(trainSubject, testSubject)
activity <- bind_rows(trainActivity, testActivity)
value <- bind_rows(trainValue,testValue)

#we will use bind_cols function in dplyr package to merge subject, activity, value
# data frames which created in the previos step into one data frame 

complete <- bind_cols(subject, activity, value)


# assign column names

colnames(complete) <- c("subject", "activity", features[,2])


###############################################################################################
# Step 2 Extract only the measurements on the mean and standard deviation for each measurement.
###############################################################################################

# using grepl function we can filter the needed columns which are subject, activity and measurements on
# mean and standard deviation

meanSTD <- complete[,grepl("subject|activity|mean|std", colnames(complete))]



###############################################################################
# Step 3 Uses descriptive activity names to name the activities in the data set
###############################################################################

# replace activity values with the names provided in the second column of activityLabels data frame

meanSTD$activity <- factor(meanSTD$activity, levels = activityLabels[, 1], labels = activityLabels[, 2])


############################################################################
# Step 4 - Appropriately labels the data set with descriptive variable names
############################################################################

#by checking column names it will be better and more readable to make the below changes
# f can be changed to Frequency
# t can be changed to Time
# Acc can be changed to Accelerometer
# Gyro can be changed to Gyroscope
# Freq can be changed to Frequency
# -std can be changed StandardDeviation
# Mag can be changed to Magnitude
# BodyBody can be changed to Body
# -mean can be changed to Mean

colnames(meanSTD) <- gsub("^f", "frequency", colnames(meanSTD))
colnames(meanSTD) <- gsub("^t", "time", colnames(meanSTD))
colnames(meanSTD) <- gsub("Acc", "Accelerometer", colnames(meanSTD))
colnames(meanSTD) <- gsub("Gyro", "Gyroscope", colnames(meanSTD))
colnames(meanSTD) <- gsub("Freq", "Frequency", colnames(meanSTD))
colnames(meanSTD) <- gsub("-std", "StandardDeviation", colnames(meanSTD))
colnames(meanSTD) <- gsub("Mag", "Magnitude", colnames(meanSTD))
colnames(meanSTD) <- gsub("BodyBody", "Body", colnames(meanSTD))
colnames(meanSTD) <- gsub("-mean", "Mean", colnames(meanSTD))


############################################################################
# Step 5 - creating another independent tidy data set with the average of 
# each variable for each activity and each subject.
############################################################################

# We will use dplyr package to group by subject and activity then summarise by mean

meanOfEach <- meanSTD %>%  group_by(subject, activity) %>% summarise_all(funs(mean))

# Output the tidy data to file "tidy_data.txt"

write.table(meanOfEach, "tidy_data.txt", row.name=FALSE)
