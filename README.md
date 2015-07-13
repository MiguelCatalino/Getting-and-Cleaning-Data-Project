---
output: html_document
---
#Getting and Cleaning Data - Course Project

This is the repositorie for the final project of this Coursera course.

##Overview
This project demostrate how to get and clean data using R.

##Assignmet

The assignmet is:
-You should create one R script called run_analysis.R that does the following. 
-Merges the training and the test sets to create one data set.
-Extracts only the measurements on the mean and standard deviation for each measurement. 
-Uses descriptive activity names to name the activities in the data set
-Appropriately labels the data set with descriptive variable names. 
-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##The Script

In the run_analysis.R does the following:
- Load the dplyr package, thas is a fast tool for working with data frame objects
- Download a Zip file with the data if doesn't already exist.
- Load the data from the text files.
- Merger the datasets into one
- Edit the dataset in order to only contain the mean and standar deviation variables
- Create a tidy dataset with the average value of every variables
- The tidy dataset is save into a text file

##More Information

The CodeBook contain the information related with the variables