# Codebook

## Original Data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector
- 'features.txt': List of all features
- 'activity_labels.txt': Links the class labels with their activity name
- 'train/X_train.txt': Training set
- 'train/y_train.txt': Training labels
- 'test/X_test.txt': Test set
- 'test/y_test.txt': Test labels

## Data transformations

* Merges the training and the test data sets to create one data set.

Training and the test data tables consist of the same number of columns, so merging of them is pretty straightforward. They are merged with **rbind()** function.

* For each measurement, extracts the mean and standard deviation measures.

Document "features_info.txt" specifies that mean and standard deviation measures are denoted with substrings "-mean()", "-std()", and "-meanFreq()". So, the script uses these three strings to produce filtered list of features for data table.

1. "-mean()": Mean value
2. "-std()" : Standard deviation
3. "-meanFreq()": Weighted average of the frequency components to obtain a mean frequency

On this step, we create a logical mask "match_vector" to filter out columns for those features which are not used in futher transformations.

* Renames the activities using descriptive activity names.

Data has been collected for six subjects' activities: laying, sitting, standing, walking, walking-downstairs, walking-upstairs. Activities are listed in the file "activity_labels.txt". We substitute integer values with using of **sapply()** loop through the column "activity" in data table.

* Labels the data set columns with descriptive variable names.

There is a bunch of mispints in the list of features. Some of features have wrong names, such as 'fBodyBodyAccJerkMag' with duplicate of 'Body'. See naming scheme for feature names at the document 'features_info.txt' in original dataset. We fix wrong names at the phase of variable names transformation.

* Creates a tidy data set with the average of each variable for each activity and each subject.

Tidy data table is created with using of **dplyr** package. Script creates groups in factor colums "activity" and "subject", and then summarize groups with **mean** fuction. This table consists of 180 rows and 81 columns. Finally, script writes resulting table to file "tidy_data.txt".

## Variables

1. activity

  - Factor of class labels with their activity names
  - Type: character
  - Values (6): "laying", "sitting", "standing", "walking", "walking-downstairs", "walking-upstairs"

2. subject

  - Factor with IDs of subjects who carried out the experiment
  - Type: character
  - Values (30): from "1" to "30"

3. tbodyacc_mean_x
  - Type: numeric
  - Unit: seconds

4. tbodyacc_mean_y

  - Type: numeric
  - Unit: seconds

5. tbodyacc_mean_z

  - Type: numeric
  - Unit: seconds

6. tbodyacc_std_x

  - Type: numeric
  - Unit: seconds

7. tbodyacc_std_y

Type: numeric
Unit: seconds

8. tbodyacc_std_z

Type: numeric
Unit: seconds

9. tgravityacc_mean_x

Type: numeric

Unit: seconds
10. tgravityacc_mean_y
Type: numeric
Unit: seconds
11. tgravityacc_mean_z
Type: numeric
Unit: seconds
12. tgravityacc_std_x
Type: numeric
Unit: seconds
13. tgravityacc_std_y
Type: numeric
Unit: seconds
14. tgravityacc_std_z
Type: numeric
Unit: seconds
15. tbodyaccjerk_mean_x
Type: numeric
Unit: seconds
16. tbodyaccjerk_mean_y
Type: numeric
Unit: seconds
17. tbodyaccjerk_mean_z
Type: numeric
Unit: seconds
18. tbodyaccjerk_std_x
Type: numeric
Unit: seconds
19. tbodyaccjerk_std_y
Type: numeric
Unit: seconds
20. tbodyaccjerk_std_z
Type: numeric
Unit: seconds
21. tbodygyro_mean_x
Type: numeric
Unit: seconds

22. tbodygyro_mean_y
Type: numeric
Unit: seconds

23. tbodygyro_mean_z
Type: numeric
Unit: seconds

24. tbodygyro_std_x
Type: numeric
Unit: seconds

25. tbodygyro_std_y
Type: numeric
Unit: seconds

26. tbodygyro_std_z
Type: numeric
Unit: seconds

27. tbodygyrojerk_mean_x
Type: numeric
Unit: seconds

28. tbodygyrojerk_mean_y
Type: numeric
Unit: seconds

29. tbodygyrojerk_mean_z
Type: numeric
Unit: seconds

30. tbodygyrojerk_std_x
Type: numeric
Unit: seconds

31. tbodygyrojerk_std_y
Type: numeric
Unit: seconds

32. tbodygyrojerk_std_z
Type: numeric
Unit: seconds

33. tbodyaccmag_mean
Type: numeric
Unit: seconds

34. tbodyaccmag_std
Type: numeric
Unit: seconds

35. tgravityaccmag_mean
Type: numeric
Unit: seconds

36. tgravityaccmag_std
Type: numeric
Unit: seconds

37. tbodyaccjerkmag_mean
Type: numeric
Unit: seconds

38. tbodyaccjerkmag_std
Type: numeric
Unit: seconds

39. tbodygyromag_mean
Type: numeric
Unit: seconds

40. tbodygyromag_std
Type: numeric
Unit: seconds

41. tbodygyrojerkmag_mean
Type: numeric
Unit: seconds

42. tbodygyrojerkmag_std
Type: numeric
Unit: seconds

43. fbodyacc_mean_x
Type: numeric
Unit: seconds

44. fbodyacc_mean_y
Type: numeric
Unit: seconds

45. fbodyacc_mean_z
Type: numeric
Unit: seconds

46. fbodyacc_std_x
Type: numeric
Unit: seconds

47. fbodyacc_std_y
Type: numeric
Unit: seconds

48. fbodyacc_std_z
Type: numeric
Unit: seconds

49. fbodyacc_meanfreq_x
Type: numeric
Unit: Hz (frequency)

50. fbodyacc_meanfreq_y
Type: numeric
Unit: seconds

51. fbodyacc_meanfreq_z
Type: numeric
Unit: Hz (frequency)

52. fbodyaccjerk_mean_x
Type: numeric
Unit: seconds

53. fbodyaccjerk_mean_y
Type: numeric
Unit: seconds

54. fbodyaccjerk_mean_z
Type: numeric
Unit: seconds

55. fbodyaccjerk_std_x
Type: numeric
Unit: seconds

56. fbodyaccjerk_std_y
Type: numeric
Unit: seconds

57. fbodyaccjerk_std_z
Type: numeric
Unit: seconds

58. fbodyaccjerk_meanfreq_x
Type: numeric
Unit: Hz (frequency)

59. fbodyaccjerk_meanfreq_y
Type: numeric
Unit: Hz (frequency)

60. fbodyaccjerk_meanfreq_z
Type: numeric
Unit: Hz (frequency)

61. fbodygyro_mean_x
Type: numeric
Unit: seconds

62. fbodygyro_mean_y
Type: numeric
Unit: seconds

63. fbodygyro_mean_z
Type: numeric
Unit: seconds

64. fbodygyro_std_x
Type: numeric
Unit: seconds

65. fbodygyro_std_y
Type: numeric
Unit: seconds

66. fbodygyro_std_z
Type: numeric
Unit: seconds

67. fbodygyro_meanfreq_x
Type: numeric
Unit: Hz (frequency)

68. fbodygyro_meanfreq_y
Type: numeric
Unit: Hz (frequency)

69. fbodygyro_meanfreq_z
Type: numeric
Unit: Hz (frequency)

70. fbodyaccmag_mean
Type: numeric
Unit: seconds

71. fbodyaccmag_std
Type: numeric
Unit: seconds

72. fbodyaccmag_meanfreq
Type: numeric
Unit: Hz (frequency)

73. fbodyaccjerkmag_mean
Type: numeric
Unit: seconds

74. fbodyaccjerkmag_std
Type: numeric
Unit: seconds

75. fbodyaccjerkmag_meanfreq
Type: numeric
Unit: Hz (frequency)

76. fbodygyromag_mean
Type: numeric
Unit: seconds

77. fbodygyromag_std
Type: numeric
Unit: seconds

78. fbodygyromag_meanfreq
Type: numeric
Unit: Hz (frequency)

79. fbodygyrojerkmag_mean
Type: numeric
Unit: seconds

80. fbodygyrojerkmag_std
Type: numeric
Unit: seconds

81. fbodygyrojerkmag_meanfreq
Type: numeric
Unit: Hz (frequency)
