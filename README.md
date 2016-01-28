#README

## Overview
This repository contaims my submission for the programming assignment of the "Getting and Vleaning  Data" course, part of the Data Science Specialization. >http://www.coursera.org/specializations/jhu-data-science>

## Files and directories
   - UCI HAR Dataset  (directory): The original data files obtained from <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.
   - README.md : This file
   - Codebook.md : A description of the variables in the tidy dataset and the transformations by which they were created.
   - run_analysis.R : A script to generate the files with the tidy datasets from the original data files.
   - UCI HAR tidy data.txt : A tidy dataset that combines the train and test datasets from the original data.
   - UCI HAR subject activity means.txt : A second, independent tidy data set with the average of each variable for each activity and each subject.

## Instructions
The run_analysis.R script needs the original data files in the UCI HAR Dataset directory as they were downloaded und unzipped from the UC Irvine Machine Learning Repository and are available in this repository. The script needs an "R" programming environment and the "dplyr" package, so please make sure both are available when you want to run it.

Within R, simply source the script to run it (source("run_analysis.R")), or coppy/paste the script to the command line. The script will then read the original data files, combine the separate dataset specific files to one table, and then combine the two datasets to one single data frame. Activity values and variable names will be replaced with more descriptive values. The combinedy, tidy dataset will be written to "UCI HAR tidy data.txt". The dataset is also available in R as "tidy.data".

A second independent dataset will be created through grouping by subjects and activities and subsequently summarizing the means of all columns for the groups. This independent, tidy dataset will be saved to "UCI HAR subject activity means.txt". The dataset is also available in R as "mean.data".
