# Code Book

## Study Design

The source data has been collected from the Human Activity Recognition Using Smartphones Dataset (Version 1.0), built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

### The Human Activity Recognition Using Smartphones Dataset Information [1]

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

**For each record it is provided:**
1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
2. Triaxial Angular velocity from the gyroscope. 
3. A 561-feature vector with time and frequency domain variables. 
4. Its activity label. 
5. An identifier of the subject who carried out the experiment.

For further information regarding the study that has produced the source data, please visit the following [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Fo the original UCI HAR study dateset, please visit the following [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

### The Current Study

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. Requirements for a complete submission are as follows:
1. a tidy data set as described below
2. a link to a Github repository with your script for performing the analysis
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called `CodeBook.md` 
4. a `README.md` in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

The `run_analysis.R` included in the dataset does the following:
1. Loads the R packages neccessary for the analysis (plyr, dplyr)
2. Downloads and uznips the source data files 
3. Reads the following data into R:
..1. X_train.txt
..2. X_test.txt
..3. y_train.tx
..4. y_test.txt
..5. subject_train.txt
..6. subject_test.txt
4. Craetes subject and activity columns in the Train and Test datasets
5. Reads the source data variable names into R and names the columns of the Train and Test datasets accordingly
6. Merges the Train and Test datasets
7. Extracts only the mean and standard deviation measurements
8. Changes the activity values from IDs to labels
9. Cleans the column names of the dataset
10. Creates a tidy data set with the average of each variable for each activity and each subject.
11. Writes the final tidy dataset to a .csv file in the script's directory called `summ_data.csv`

## Code Book

This section reviews the data resulting from the analysis represented in the `summ_data.csv` file. 

### Columns

**Identifiers (factor)**
1. `subject_id` - The subject ID for each obseravtion
2. `activity_id` - The activity performed during which the observation has been collected
..1. laying
..2. sitting
..3. standing
..4. walking
..5. walking downstairs
..6. walking upstairs

**2. Variables (numeric)**
1. subject_id
2. activity_id
3. timeBodyAccMean-X
4. timeBodyAccMean-Y
5. timeBodyAccMean-Z
6. timeBodyAcc-std-X
7. timeBodyAcc-std-Y
8. timeBodyAcc-std-Z
9. timeGravityAccMean-X
10. timeGravityAccMean-Y
11. timeGravityAccMean-Z
12. timeGravityAcc-std-X
13. timeGravityAcc-std-Y
14. timeGravityAcc-std-Z
15. timeBodyAccJerkMean-X
16. timeBodyAccJerkMean-Y
17. timeBodyAccJerkMean-Z
18. timeBodyAccJerk-std-X
19. timeBodyAccJerk-std-Y
20. timeBodyAccJerk-std-Z
21. timeBodyGyroMean-X
22. timeBodyGyroMean-Y
23. timeBodyGyroMean-Z
24. timeBodyGyro-std-X
25. timeBodyGyro-std-Y
26. timeBodyGyro-std-Z
27. timeBodyGyroJerkMean-X
28. timeBodyGyroJerkMean-Y
29. timeBodyGyroJerkMean-Z
30. timeBodyGyroJerk-std-X
31. timeBodyGyroJerk-std-Y
32. timeBodyGyroJerk-std-Z
33. timeBodyAccelerationMagnitudeMean
34. timeBodyAccelerationMagnitudeStdDev
35. timeGravityAccelerationMagnitudeMean
36. timeGravityAccelerationMagnitudeStdDev
37. timeBodyAccJerkMagnitudeMean
38. timeBodyAccJerkMagnitudeStdDev
39. timeBodyGyroMagnitudeMean
40. timeBodyGyroMagnitudeStdDev
41. timeBodyGyroJerkMagnitudeMean
42. timeBodyGyroJerkMagnitudeStdDev
43. freqBodyAccMean-X
44. freqBodyAccMean-Y
45. freqBodyAccMean-Z
46. freqBodyAcc-std-X
47. freqBodyAcc-std-Y
48. freqBodyAcc-std-Z
49. freqBodyAccJerkMean-X
50. freqBodyAccJerkMean-Y
51. freqBodyAccJerkMean-Z
52. freqBodyAccJerk-std-X
53. freqBodyAccJerk-std-Y
54. freqBodyAccJerk-std-Z
55. freqBodyGyroMean-X
56. freqBodyGyroMean-Y
57. freqBodyGyroMean-Z
58. freqBodyGyro-std-X
59. freqBodyGyro-std-Y
60. freqBodyGyro-std-Z
61. freqBodyAccelerationMagnitudeMean
62. freqBodyAccelerationMagnitudeStdDev
63. freqBodyAccJerkMagnitudeMean
64. freqBodyAccJerkMagnitudeStdDev
65. freqBodyGyroMagnitudeMean
66. freqBodyGyroMagnitudeStdDev
67. freqBodyGyroJerkMagnitudeMean
68. freqBodyGyroJerkMagnitudeStdDev






