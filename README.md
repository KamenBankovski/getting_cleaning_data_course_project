# Getting and Cleaning Data - Course Project

Author - **Kamen Bankovski**

## Overview

The presented dataset is a submission for the final assignment of the 
Getting and Cleaning Data course as part of the Data Science specialization
by John Hopkins University offered through Coursera.

The aim of the assignment has been to collect and clean the data from the Human Activitiy Recognition Using Smartphones Study[1] and prepare the data for future analysis.

The source data for the presented dataset is the Human Activity Recognition Using Smartphones Data Set[1], built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## The Dataset

The dataset includes the following files:

1. `final_data.txt` - the clean and tidy dataset

2. `CodeBook.md` - Describing the study design and the variables used

3. `run_analysis.R` - an R script that takes the UCI HAR dataset as an input,              performs an analysis and outputs a tidy, clean dataset of the mean measures of          the mean and standard deviation of the measures of the UCI HAR dataset on a by          subject by activity basis. 

4. `README.md` - explains how all of the scripts work and how they are connected.

## Project Description

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. Requirements for a complete submission are as follows:

1. a tidy data set as described below

2. a link to a Github repository with a script for performing the analysis

3. a code book that describes the variables, the data, and any transformations or work performed to clean up the data called `CodeBook.md` 

4. a `README.md` in the repo with the scripts. This repo explains how all of the scripts work and how they are connected.

## The Analysis Script Description

The `run_analysis.R` included in the dataset does the following:

1. Loads the R packages neccessary for the analysis (plyr, dplyr)

2. Downloads and uznips the source data files 

3. Reads the following data into R:

  1. `X_train.txt`

  2. `X_test.txt`

  3. `y_train.txt`

  4. `y_test.txt`

  5. `subject_train.txt`

  6. `subject_test.txt`

4. Craetes subject and activity columns in the Train and Test datasets

5. Reads the source data variable names into R and names the columns of the Train and Test datasets accordingly

6. Merges the Train and Test datasets

7. Extracts only the mean and standard deviation measurements

8. Changes the activity values from IDs to labels

9. Cleans the column names of the dataset

10. Creates a tidy data set with the average of each variable for each activity and each subject.

11. Writes the final tidy dataset to a .csv file in the script's directory called `final_data.txt`

**Notes** 

  - The `run_analysis.R` script downloads and writes files and directories in the current working directory of the user, NOT in the script's directory
  
  - R and RStudio Version information
        
        + RStudio - Version 0.99.878
        
        + R i386 3.2.3
  

## Additional Information

For further information regarding the variables in `final_data.txt` script please review the `CodeBook.md` file present in the dataset. 

For further information regarding the study that has produced the source data, please visit the following [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Fo the original UCI HAR study dateset, please visit the following [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


