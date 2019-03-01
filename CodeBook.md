# CodeBook for The Preprocessed Human Activity Recognition Using Smartphones Dataset

{{TOC}}

## Time domain derivation

Variables starting with "T" were derived from the acceleration time-domain signal captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

## Frequency domain derivation

Variables starting with "F" were derived from the [time domain](#time-domain-derivation) variables by applying the Fast Fourier Transform.

## The tidy.data.1.csv dataset

The following table describes the variables for the dataset persisted in the `tidy.data.1.csv` file in this repository.

### Variables Table

| Variable Name | Variable Type | Domain | Variable Description |
|:--|:--|:--|:--|
|  Activity  |  factor  | --- | Activity Name. <br /> Levels: `WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING` |
|  Set  |  factor  | --- | Part of the dataset. <br /> Levels: `train test` |
|  Subject  |  factor  | --- | A person (subject) involved in the study. <br /> Levels: `1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30` |
|  TBodyAcc.Mean.X  |  numeric  | [time](#time-domain-derivation) | Mean of the body acceleration in the X axis |
|  TBodyAcc.Mean.Y  |  numeric  | [time](#time-domain-derivation) | Mean of the body acceleration in the Y axis |
|  TBodyAcc.Mean.Z  |  numeric  | [time](#time-domain-derivation) | Mean of the body acceleration in the Z axis |
|  TBodyAcc.Std.X  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the body acceleration in the X axis |
|  TBodyAcc.Std.Y  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the body acceleration in the Y axis |
|  TBodyAcc.Std.Z  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the body acceleration in the Z axis |
|  TGravityAcc.Mean.X  |  numeric  | [time](#time-domain-derivation) | Mean of the gravity acceleration in the X axis |
|  TGravityAcc.Mean.Y  |  numeric  | [time](#time-domain-derivation) | Mean of the gravity acceleration in the Y axis |
|  TGravityAcc.Mean.Z  |  numeric  | [time](#time-domain-derivation) | Mean of the gravity acceleration in the Z axis |
|  TGravityAcc.Std.X  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the gravity acceleration in the X axis |
|  TGravityAcc.Std.Y  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the gravity acceleration in the Y axis |
|  TGravityAcc.Std.Z  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the gravity acceleration in the Z axis |
|  TBodyAccJerk.Mean.X  |  numeric  | [time](#time-domain-derivation) | Mean of the body linear acceleration in the X axis derived from the body acceleration |
|  TBodyAccJerk.Mean.Y  |  numeric  | [time](#time-domain-derivation) | Mean of the body linear acceleration in the Y axis derived from the body acceleration |
|  TBodyAccJerk.Mean.Z  |  numeric  | [time](#time-domain-derivation) | Mean of the body linear acceleration in the Z axis derived from the body acceleration |
|  TBodyAccJerk.Std.X  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the body linear acceleration in the X axis derived from the body acceleration |
|  TBodyAccJerk.Std.Y  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the body linear acceleration in the Y axis derived from the body acceleration |
|  TBodyAccJerk.Std.Z  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the body linear acceleration in the Z axis derived from the body acceleration |
|  TBodyGyro.Mean.X  |  numeric  | [time](#time-domain-derivation) | Mean of the body gyroscope  X axis signal |
|  TBodyGyro.Mean.Y  |  numeric  | [time](#time-domain-derivation) | Mean of the body gyroscope  Y axis signal |
|  TBodyGyro.Mean.Z  |  numeric  | [time](#time-domain-derivation) | Mean of the body gyroscope Z axis signal |
|  TBodyGyro.Std.X  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the body gyroscope X axis signal |
|  TBodyGyro.Std.Y  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the body gyroscope Y axis signal |
|  TBodyGyro.Std.Z  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the body gyroscope Z axis signal |
|  TBodyGyroJerk.Mean.X  |  numeric  | [time](#time-domain-derivation) | Mean of the angular velocity in the X axis |
|  TBodyGyroJerk.Mean.Y  |  numeric  | [time](#time-domain-derivation) | Mean of the angular velocity in the Y axis |
|  TBodyGyroJerk.Mean.Z  |  numeric  | [time](#time-domain-derivation) | Mean of the angular velocity in the Z axis |
|  TBodyGyroJerk.Std.X  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the angular velocity in the X axis |
|  TBodyGyroJerk.Std.Y  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the angular velocity in the Y axis |
|  TBodyGyroJerk.Std.Z  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the angular velocity in the Z axis |
|  TBodyAccMag.Mean  |  numeric  | [time](#time-domain-derivation) | Mean of the Euclidean norm of the body acceleration |
|  TBodyAccMag.Std  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the Euclidean norm of the body acceleration |
|  TGravityAccMag.Mean  |  numeric  | [time](#time-domain-derivation) | Mean of the Euclidean norm of the gravity acceleration |
|  TGravityAccMag.Std  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the Euclidean norm of the gravity acceleration |
|  TBodyAccJerkMag.Mean  |  numeric  | [time](#time-domain-derivation) | Mean of the Euclidean norm of the body linear acceleration |
|  TBodyAccJerkMag.Std  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the Euclidean norm of the body linear acceleration |
|  TBodyGyroMag.Mean  |  numeric  | [time](#time-domain-derivation) | Mean of the Euclidean norm of the body gyroscope signal |
|  TBodyGyroMag.Std  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the Euclidean norm of the body gyroscope signal |
|  TBodyGyroJerkMag.Mean  |  numeric  | [time](#time-domain-derivation) | Mean of the Euclidean norm of the body angular velocity |
|  TBodyGyroJerkMag.Std  |  numeric  | [time](#time-domain-derivation) | Population standard deviation of the Euclidean norm of the body angular velocity |
|  FBodyAcc.Mean.X  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the body acceleration in the X axis |
|  FBodyAcc.Mean.Y  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the body acceleration in the Y axis |
|  FBodyAcc.Mean.Z  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the body acceleration in the Z axis |
|  FBodyAcc.Std.X  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the body acceleration in the X axis |
|  FBodyAcc.Std.Y  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the body acceleration in the Y axis |
|  FBodyAcc.Std.Z  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the body acceleration in the Z axis |
|  FGravityAcc.Mean.X  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the gravity acceleration in the X axis |
|  FGravityAcc.Mean.Y  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the gravity acceleration in the Y axis |
|  FGravityAcc.Mean.Z  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the gravity acceleration in the Z axis |
|  FGravityAcc.Std.X  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the gravity acceleration in the X axis |
|  FGravityAcc.Std.Y  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the gravity acceleration in the Y axis |
|  FGravityAcc.Std.Z  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the gravity acceleration in the Z axis |
|  FBodyAccJerk.Mean.X  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the body linear acceleration in the X axis derived from the body acceleration |
|  FBodyAccJerk.Mean.Y  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the body linear acceleration in the Y axis derived from the body acceleration |
|  FBodyAccJerk.Mean.Z  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the body linear acceleration in the Z axis derived from the body acceleration |
|  FBodyAccJerk.Std.X  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the body linear acceleration in the X axis derived from the body acceleration |
|  FBodyAccJerk.Std.Y  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the body linear acceleration in the Y axis derived from the body acceleration |
|  FBodyAccJerk.Std.Z  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the body linear acceleration in the Z axis derived from the body acceleration |
|  FBodyGyro.Mean.X  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the body gyroscope  X axis signal |
|  FBodyGyro.Mean.Y  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the body gyroscope  Y axis signal |
|  FBodyGyro.Mean.Z  |  numeric  | [frequency](#frequency-domain-derivation) | of the body gyroscope Z axis signal |
|  FBodyGyro.Std.X  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the body gyroscope X axis signal |
|  FBodyGyro.Std.Y  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the body gyroscope Y axis signal |
|  FBodyGyro.Std.Z  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the body gyroscope Z axis signal |
|  FBodyGyroJerk.Mean.X  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the angular velocity in the X axis |
|  FBodyGyroJerk.Mean.Y  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the angular velocity in the Y axis |
|  FBodyGyroJerk.Mean.Z  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the angular velocity in the Z axis |
|  FBodyGyroJerk.Std.X  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the angular velocity in the X axis |
|  FBodyGyroJerk.Std.Y  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the angular velocity in the Y axis |
|  FBodyGyroJerk.Std.Z  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the angular velocity in the Z axis |
|  FBodyAccMag.Mean  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the Euclidean norm of the body acceleration |
|  FBodyAccMag.Std  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the Euclidean norm of the body acceleration |
|  FGravityAccMag.Mean  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the Euclidean norm of the gravity acceleration |
|  FGravityAccMag.Std  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the Euclidean norm of the gravity acceleration |
|  FBodyAccJerkMag.Mean  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the Euclidean norm of the body linear acceleration |
|  FBodyAccJerkMag.Std  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the Euclidean norm of the body linear acceleration |
|  FBodyGyroMag.Mean  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the Euclidean norm of the body gyroscope signal |
|  FBodyGyroMag.Std  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the Euclidean norm of the body gyroscope signal |
|  FBodyGyroJerkMag.Mean  |  numeric  | [frequency](#frequency-domain-derivation) | Mean of the Euclidean norm of the body angular velocity |
|  FBodyGyroJerkMag.Std  |  numeric  | [frequency](#frequency-domain-derivation) | Population standard deviation of the Euclidean norm of the body angular velocity |

## The tidy.data.1.summary.csv dataset

The summary dataset consists of all the same variables as described in [the table above](#variables-table) with the exception of the `Activity`, `Subject`, and `Set` variables.

Each variable was derived from the `tidy.data.1.csv` dataset by grouping by `Activity` and `Subject` and taking the arithmetic mean.
