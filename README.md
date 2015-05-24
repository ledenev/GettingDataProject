# Getting Data: Course Project

## Project Description
The goal of this project is to prepare tidy data on basis of training and test datasets. Original data is taken from "Human Activity Recognition Using Smart Phones" project and represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of the project and sources of datasets are available at the site: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## How to execute script

  * Download .zip file from the URL specified at the Project Assignment web-page;
  * Unzip the archive to a directory at your computer. Folder "UCI HAR Dataset" will be created on extracting data from the archive;
  * Copy script run\_analysis.R into the folder "UCI HAR Dataset";
  * Open your favorite R console and set work directory to "UCI HAR Dataset";
  * Run script with the command: source("run\_analysis.R")
  * Resulting file "tidy\_data.txt" will be created on script's execution.

## Functionality of the script
This script performs the following transformations:

  * Merges the training and the test data sets to create one data set.
  * For each measurement, extracts the mean and standard deviation measures.
  * Renames the activities using descriptive activity names.
  * Labels the data set columns with descriptive variable names. 
  * Creates a tidy data set with the average of each variable for each activity and each subject.

Algoritms of transformations are described in the document "DataBook.md" which is part of the project.
