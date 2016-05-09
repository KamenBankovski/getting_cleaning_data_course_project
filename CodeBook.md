# Code Book

## Study Design

The source data has been collected from the Human Activity Recognition Using Smartphones Dataset (Version 1.0), built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 

The current project uses the data already collected through the aforementioned study and a description of the study's design and data collection methods used by the researhers can be found bellow. 

### The Human Activity Recognition Using Smartphones Dataset Information [1]

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

**For each record it is provided:**

1. Triaxial acceleration from the accelerometer (total acceleration) and the estimatedbody acceleration.

2. Triaxial Angular velocity from the gyroscope. 

3. A 561-feature vector with time and frequency domain variables.

4. Its activity label. 

5. An identifier of the subject who carried out the experiment.

**Additional Information**

For further information regarding the study that has produced the source data, please visit the following [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Fo the original UCI HAR study dateset, please visit the following [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Code Book

This section reviews the data resulting from the analysis represented in the `final_data.txt` file. 

### Columns

**1. Identifiers (factor)**

1. `subject_id` - The subject ID for each obseravtion

2. `activity_id` - The activity performed during which the observation has been collected

  1. laying
  2. sitting
  3. standing
  4. walking
  5. walking downstairs
  6. walking upstairs

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







