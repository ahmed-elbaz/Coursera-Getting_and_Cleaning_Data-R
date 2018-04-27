# Getting and Cleaning Data course project

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This repository contains the following files:

README.md, this file, which provides an overview of the data set and how it was created.

CodeBook.md, the code book, which shows inofmration about variables

run_analysis.R, the R script that was used to create the tidy data set.

# Creating the data set

The R script run_analysis.R can be used to create the data set by following below steps

1- Firslty we assumed that data in "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" was downloaded and extraced in R working directory
2- Read training and test data in addition to features and activity labels.
3- Merging the training and the test sets to create one data set
4- Extract only the measurements on the mean and standard deviation for each measurement.
5- Use descriptive activity names to name the activities in the data set.
6- Appropriately label the data set with descriptive variable names.
7- creating another independent tidy data set with the average of each variable for each activity and each subject.
8- Output the tidy data to file "tidy_data.txt" which should be located in the working directory.


Please note that this script was performed using R version 3.4.4 (2018-03-15) on Windows 10 Pro 64-bit edition.

Please also note that script requires the dplyr package (version 0.7.4 was used).
