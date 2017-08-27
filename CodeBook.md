Codebook
=========================================

Data: Following inputs have been used to create a consolidated dataset:

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
- Each record corresponds to a subject ID and activity. The columns in X_train and X_train are the variables listed in features file
- Features are normalized and bounded within [-1,1].

List of variables:
Activity and subject ID details are in the following columns:
- activity_num
- activity_name
- subject_num
Following are the measurements in the tidy dataset:
- mean_timeBodyAcc-mean-X
- mean_timeBodyAcc-mean-Y
- mean_timeBodyAcc-mean-Z
- mean_timeBodyAcc-std-X
- mean_timeBodyAcc-std-Y
- mean_timeBodyAcc-std-Z
- mean_timeGravityAcc-mean-X
- mean_timeGravityAcc-mean-Y
- mean_timeGravityAcc-mean-Z
- mean_timeGravityAcc-std-X
- mean_timeGravityAcc-std-Y
- mean_timeGravityAcc-std-Z
- mean_timeBodyAccJerk-mean-X
- mean_timeBodyAccJerk-mean-Y
- mean_timeBodyAccJerk-mean-Z
- mean_timeBodyAccJerk-std-X
- mean_timeBodyAccJerk-std-Y
- mean_timeBodyAccJerk-std-Z
- mean_timeBodyGyro-mean-X
- mean_timeBodyGyro-mean-Y
- mean_timeBodyGyro-mean-Z
- mean_timeBodyGyro-std-X
- mean_timeBodyGyro-std-Y
- mean_timeBodyGyro-std-Z
- mean_timeBodyGyroJerk-mean-X
- mean_timeBodyGyroJerk-mean-Y
- mean_timeBodyGyroJerk-mean-Z
- mean_timeBodyGyroJerk-std-X
- mean_timeBodyGyroJerk-std-Y
- mean_timeBodyGyroJerk-std-Z
- mean_timeBodyAccMag-mean
- mean_timeBodyAccMag-std
- mean_timeGravityAccMag-mean
- mean_timeGravityAccMag-std
- mean_timeBodyAccJerkMag-mean
- mean_timeBodyAccJerkMag-std
- mean_timeBodyGyroMag-mean
- mean_timeBodyGyroMag-std
- mean_timeBodyGyroJerkMag-mean
- mean_timeBodyGyroJerkMag-std
- mean_frequencyBodyAcc-mean-X
- mean_frequencyBodyAcc-mean-Y
- mean_frequencyBodyAcc-mean-Z
- mean_frequencyBodyAcc-std-X
- mean_frequencyBodyAcc-std-Y
- mean_frequencyBodyAcc-std-Z
- mean_frequencyBodyAcc-meanFreq-X
- mean_frequencyBodyAcc-meanFreq-Y
- mean_frequencyBodyAcc-meanFreq-Z
- mean_frequencyBodyAccJerk-mean-X
- mean_frequencyBodyAccJerk-mean-Y
- mean_frequencyBodyAccJerk-mean-Z
- mean_frequencyBodyAccJerk-std-X
- mean_frequencyBodyAccJerk-std-Y
- mean_frequencyBodyAccJerk-std-Z
- mean_frequencyBodyAccJerk-meanFreq-X
- mean_frequencyBodyAccJerk-meanFreq-Y
- mean_frequencyBodyAccJerk-meanFreq-Z
- mean_frequencyBodyGyro-mean-X
- mean_frequencyBodyGyro-mean-Y
- mean_frequencyBodyGyro-mean-Z
- mean_frequencyBodyGyro-std-X
- mean_frequencyBodyGyro-std-Y
- mean_frequencyBodyGyro-std-Z
- mean_frequencyBodyGyro-meanFreq-X
- mean_frequencyBodyGyro-meanFreq-Y
- mean_frequencyBodyGyro-meanFreq-Z
- mean_frequencyBodyAccMag-mean
- mean_frequencyBodyAccMag-std
- mean_frequencyBodyAccMag-meanFreq
- mean_frequencyBodyAccJerkMag-mean
- mean_frequencyBodyAccJerkMag-std
- mean_frequencyBodyAccJerkMag-meanFreq
- mean_frequencyBodyGyroMag-mean
- mean_frequencyBodyGyroMag-std
- mean_frequencyBodyGyroMag-meanFreq
- mean_frequencyBodyGyroJerkMag-mean
- mean_frequencyBodyGyroJerkMag-std
- mean_frequencyBodyGyroJerkMag-meanFreq
