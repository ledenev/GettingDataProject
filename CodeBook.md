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

code book that describes the variables, the data, and any transformations or work that you performed to clean up the data

* Merges the training and the test data sets to create one data set.

Training and the test data tables consist of the same number of columns, so merging of them is pretty straightforword. They are merged with **rbind()** function.

* For each measurement, extracts the mean and standard deviation measures.

Document "features_info.txt" specifies that mean and standard deviation measures are denoted with substrings "-mean()", "-std()", and "-meanFreq()". So, the script uses these three strings to produce filtered list of features for data table.

1. "-mean()": Mean value
2. "-std()" : Standard deviation
3. "-meanFreq()": Weighted average of the frequency components to obtain a mean frequency

On this step, we create a logical mask to filter out columns for those features which are not used in futher transformations.

* Renames the activities using descriptive activity names.

Data has been collected for six subjects' activities: laying, sitting, standing, walking, walking-downstairs, walking-upstairs. Activities are listed in the file "activity_labels.txt". We substitute integer values with using of **sapply()** loop through the column "activity" in data table.


 The activity variable is changed from using a numeric value to indicate which activity was performed to a descriptive activity name of the factor class. The descriptive activity names were taken from the activity_labels.txt file.

* Labels the data set columns with descriptive variable names. 
* Creates a tidy data set with the average of each variable for each activity and each subject.



## Resulting tidy data

Tidy data table consists of 180 rows and 81 columns.

### Variables

1. activity
        Factor of class labels with their activity names
        Type: character
        Values (6): "laying", "sitting", "standing", "walking", "walking-downstairs", "walking-upstairs"

2. subject
        Factor with IDs of subjects who carried out the experiment
        Type: character
        Values (30): from "1" to "30"

3. tbodyacc_mean_x
        Type: numeric
        Unit: 
4. tbodyacc_mean_y
        Type: numeric
        Unit: 
5. tbodyacc_mean_z
        Type: numeric
        Unit: 
6. tbodyacc_std_x
        Type: numeric
        Unit: 
7. tbodyacc_std_y
        Type: numeric
        Unit: 
8. tbodyacc_std_z
        Type: numeric
        Unit: 
9. tgravityacc_mean_x
        Type: numeric
        Unit: 
10. tgravityacc_mean_y
        Type: numeric
        Unit: 
11. tgravityacc_mean_z
        Type: numeric
        Unit: 
12. tgravityacc_std_x
        Type: numeric
        Unit: 
13. tgravityacc_std_y
        Type: numeric
        Unit: 
14. tgravityacc_std_z
        Type: numeric
        Unit: 
15. tbodyaccjerk_mean_x
        Type: numeric
        Unit: 
16. tbodyaccjerk_mean_y
        Type: numeric
        Unit: 
17. tbodyaccjerk_mean_z
        Type: numeric
        Unit: 
18. tbodyaccjerk_std_x
        Type: numeric
        Unit: 
19. tbodyaccjerk_std_y
        Type: numeric
        Unit: 
20. tbodyaccjerk_std_z
        Type: numeric
        Unit: 
21. tbodygyro_mean_x
        Type: numeric
        Unit: 

22. tbodygyro_mean_y
        Type: numeric
        Unit: 

23. tbodygyro_mean_z
        Type: numeric
        Unit: 

24. tbodygyro_std_x
        Type: numeric
        Unit: 

25. tbodygyro_std_y
        Type: numeric
        Unit: 

26. tbodygyro_std_z
        Type: numeric
        Unit: 

27. tbodygyrojerk_mean_x
        Type: numeric
        Unit: 

28. tbodygyrojerk_mean_y
        Type: numeric
        Unit: 

29. tbodygyrojerk_mean_z
        Type: numeric
        Unit: 

30. tbodygyrojerk_std_x
        Type: numeric
        Unit: 

31. tbodygyrojerk_std_y
        Type: numeric
        Unit: 

32. tbodygyrojerk_std_z
        Type: numeric
        Unit: 

33. tbodyaccmag_mean
        Type: numeric
        Unit: 

34. tbodyaccmag_std
        Type: numeric
        Unit: 

35. tgravityaccmag_mean
        Type: numeric
        Unit: 

36. tgravityaccmag_std
        Type: numeric
        Unit: 

37. tbodyaccjerkmag_mean
        Type: numeric
        Unit: 

38. tbodyaccjerkmag_std
        Type: numeric
        Unit: 

39. tbodygyromag_mean
        Type: numeric
        Unit: 

40. tbodygyromag_std
        Type: numeric
        Unit: 

41. tbodygyrojerkmag_mean
        Type: numeric
        Unit: 

42. tbodygyrojerkmag_std
        Type: numeric
        Unit: 

43. fbodyacc_mean_x
        Type: numeric
        Unit: 

44. fbodyacc_mean_y
        Type: numeric
        Unit: 

45. fbodyacc_mean_z
        Type: numeric
        Unit: 

46. fbodyacc_std_x
        Type: numeric
        Unit: 

47. fbodyacc_std_y
        Type: numeric
        Unit: 

48. fbodyacc_std_z
        Type: numeric
        Unit: 

49. fbodyacc_meanfreq_x
        Type: numeric
        Unit: 

50. fbodyacc_meanfreq_y
        Type: numeric
        Unit: 

51. fbodyacc_meanfreq_z
        Type: numeric
        Unit: 

52. fbodyaccjerk_mean_x
        Type: numeric
        Unit: 

53. fbodyaccjerk_mean_y
        Type: numeric
        Unit: 

54. fbodyaccjerk_mean_z
        Type: numeric
        Unit: 

55. fbodyaccjerk_std_x
        Type: numeric
        Unit: 

56. fbodyaccjerk_std_y
        Type: numeric
        Unit: 

57. fbodyaccjerk_std_z
        Type: numeric
        Unit: 

58. fbodyaccjerk_meanfreq_x
        Type: numeric
        Unit: 

59. fbodyaccjerk_meanfreq_y
        Type: numeric
        Unit: 

60. fbodyaccjerk_meanfreq_z
        Type: numeric
        Unit: 

61. fbodygyro_mean_x
        Type: numeric
        Unit: 

62. fbodygyro_mean_y
        Type: numeric
        Unit: 

63. fbodygyro_mean_z
        Type: numeric
        Unit: 

64. fbodygyro_std_x
        Type: numeric
        Unit: 

65. fbodygyro_std_y
        Type: numeric
        Unit: 

66. fbodygyro_std_z
        Type: numeric
        Unit: 

67. fbodygyro_meanfreq_x
        Type: numeric
        Unit: 

68. fbodygyro_meanfreq_y
        Type: numeric
        Unit: 

69. fbodygyro_meanfreq_z
        Type: numeric
        Unit: 

70. fbodyaccmag_mean
        Type: numeric
        Unit: 

71. fbodyaccmag_std
        Type: numeric
        Unit: 

72. fbodyaccmag_meanfreq
        Type: numeric
        Unit: 

73. fbodyaccjerkmag_mean
        Type: numeric
        Unit: 

74. fbodyaccjerkmag_std
        Type: numeric
        Unit: 

75. fbodyaccjerkmag_meanfreq
        Type: numeric
        Unit: 

76. fbodygyromag_mean
        Type: numeric
        Unit: 

77. fbodygyromag_std
        Type: numeric
        Unit: 

78. fbodygyromag_meanfreq
        Type: numeric
        Unit: 

79. fbodygyrojerkmag_mean
        Type: numeric
        Unit: 

80. fbodygyrojerkmag_std
        Type: numeric
        Unit: 

81. fbodygyrojerkmag_meanfreq"
        Type: numeric
        Unit: 
