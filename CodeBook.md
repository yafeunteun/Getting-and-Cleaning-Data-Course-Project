# CODE BOOK

## Data Set Code Book: Human Activity Recording Using Smartphones

January 31, 2016
Codebook prepared by Yann Feunteun, based on tidy data sets created from Human Activity Recognition Using Smartphones Dataset from 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The dataset includes the following files:
==========================================

- 'mean_and_std_measurements.txt' : Contains the mean and standard deviation of each accelerometer and gyroscope signals for each record.

- 'avg_mean_and_std_measurements.txt' : Contains the average of each variable in the previous file for each activity and each subject.

If you have questions about the data, please email yaf515@g.harvard.edu

|Field label|Variable|Variable type|Allowable value|Comments|
|-----------|--------|-------------|---------------|--------|
|subject    | The subject who performed the activity | Factor |1-30 | |
| activity  | The name of the activity performed | Character | walking, walking_upstairs, walking_downstairs, sitting, standing, laying | |
|tBodyAcc-mean()-X|Mean value of the body acceleration signal in the X-axis direction in standard gravity units 'g'|Numeric||Time domain|
|tBodyAcc-mean()-Y|Mean value of the body acceleration signal in the Y-axis direction in standard gravity units 'g'|Numeric||Time domain|
|tBodyAcc-mean()-Z|Mean value of the body acceleration signal in the Z-axis direction in standard gravity units 'g'|Numeric||Time domain|
|tGravityAcc-mean()-X|Mean value of the gravity acceleration signal in the X-axis direction in standard gravity units 'g'|Numeric||Time domain|
|tGravityAcc-mean()-Y|Mean value of the gravity acceleration signal in the Y-axis direction in standard gravity units 'g'|Numeric||Time domain|
|tGravityAcc-mean()-Z|Mean value of the gravity acceleration signal in the Z-axis direction in standard gravity units 'g'|Numeric||Time domain|
|tBodyAccJerk-mean()-X|Mean value of the body acceleration Jerk signal in the X-axis direction in standard gravity units 'g'|Numeric||Time domain|
|tBodyAccJerk-mean()-Y|Mean value of the body acceleration Jerk signal in the Y-axis direction in standard gravity units 'g'|Numeric||Time domain|
|tBodyAccJerk-mean()-Z|Mean value of the body acceleration Jerk signal in the Z-axis direction in standard gravity units 'g'|Numeric||Time domain|
|tBodyGyro-mean()-X|Mean value of the body angular velocity signal in the X-axis direction in rad/s|Numeric||Time domain|
|tBodyGyro-mean()-Y|Mean value of the body angular velocity signal in the Y-axis direction in rad/s|Numeric||Time domain|
|tBodyGyro-mean()-Z|Mean value of the body angular velocity signal in the Z-axis direction in rad/s|Numeric||Time domain|
|tBodyGyroJerk-mean()-X|Mean value of the body angular velocity Jerk signal in the X-axis direction in rad/s|Numeric||Time domain|
|tBodyGyroJerk-mean()-Y|Mean value of the body angular velocity Jerk signal in the Y-axis direction in rad/s|Numeric||Time domain|
|tBodyGyroJerk-mean()-Z|Mean value of the body angular velocity Jerk signal in the Z-axis direction in rad/s|Numeric||Time domain|
|tBodyAccMag-mean()|Mean value of the magnitude of the three-dimensional body acceleration signal|Numeric||Time domain. Calculated using the Euclidean norm.|
|tGravityAccMag-mean()|Mean value of the magnitude of the three-dimensional gravity acceleration signal|Numeric||Time domain. Calculated using the Euclidean norm.|
|tBodyAccJerkMag-mean()|Mean value of the magnitude of the three-dimensional body acceleration Jerk signal|Numeric||Time domain. Calculated using the Euclidean norm.|
|tBodyGyroMag-mean()|Mean value of the magnitude of the three-dimensional body angular velocity signal|Numeric||Time domain. Calculated using the Euclidean norm.|
|tBodyGyroJerkMag-mean()|Mean value of the magnitude of the three-dimensional body angular velocity Jerk signal|Numeric||Time domain. Calculated using the Euclidean norm.|


