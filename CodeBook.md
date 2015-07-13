#Getting and Cleaning Data : Final Project

#Code Book

-subjectId: The ID of the test subjects
-activityId: The ID of activities
-activityType: The type of activity performed when the corresponding measurements were taken
-feature: A description of every feauture measured
-featureId: The ID of every feature

###Measurements

The measures are indicated in the feature.txt and come from the accelerometer and gyroscope 3-axial raw signals.
The prefix t denote Time
The prefix f denote frequency domain signals
B denote Body 
G deote Gravity
XYZ denote the 3-axials
Acc denote Acceleration signals
SrdDev denote Standar Deviation
Jerk denote Jark signals
Gyro denote Gyroscope

- tBAccMeanX
- tBAccMeanY
- tBAccMeanZ
- tBAccStdDevX
- tBAccStdDevY
- tBAccStdDevZ
- tGAccMeanX
- tGAccMeanY
- tGAccMeanZ
- tGAccStdDevX
- tGAccStdDevY
- tGAccStdDevZ
- tBAccJerkMeanX
- tBAccJerkMeanY
- tBAccJerkMeanZ
- tBAccJerkStdDevX
- tBAccJerkStdDevY
- tBAccJerkStdDevZ
- tBGyroMeanX
- tBGyroMeanY
- tBGyroMeanZ
- tBGyroStdDevX
- tBGyroStdDevY
- tBGyroStdDevZ
- tBGyroJerkMeanX
- tBGyroJerkMeanY
- tBGyroJerkMeanZ
- tBGyroJerkStdDevX
- tBGyroJerkStdDevY
- tBGyroJerkStdDevZ
- tBAccMagnitudenitudeMean
- tBAccMagnitudenitudeStdDev
- tGAccMagnitudenitudeMean
- tGAccMagnitudenitudeStdDev
- tBAccJerkMagnitudenitudeMean
- tBAccJerkMagnitudenitudeStdDev
- tBGyroMagnitudenitudeMean
- tBGyroMagnitudenitudeStdDev
- tBGyroJerkMagnitudenitudeMean
- tBGyroJerkMagnitudenitudeStdDev
- fBAccMeanX
- fBAccMeanY
- fBAccMeanZ
- fBAccStdDevX
- fBAccStdDevY
- fBAccStdDevZ
- fBAccMeanFreqX
- fBAccMeanFreqY
- fBAccMeanFreqZ
- fBAccJerkMeanX
- fBAccJerkMeanY
- fBAccJerkMeanZ
- fBAccJerkStdDevX
- fBAccJerkStdDevY
- fBAccJerkStdDevZ
- fBAccJerkMeanFreqX
- fBAccJerkMeanFreqY
- fBAccJerkMeanFreqZ
- fBGyroMeanX
- fBGyroMeanY
- fBGyroMeanZ
- fBGyroStdDevX
- fBGyroStdDevY
- fBGyroStdDevZ
- fBGyroMeanFreqX
- fBGyroMeanFreqY
- fBGyroMeanFreqZ
- fBAccMagnitudenitudeMean
- fBAccMagnitudenitudeStdDev
- fBAccMagnitudenitudeMeanFreq
- fBBodyAccJerkMagnitudenitudeMean
- fBBodyAccJerkMagnitudenitudeStdDev
- fBBodyAccJerkMagnitudenitudeMeanFreq
- fBBodyGyroMagnitudenitudeMean
- fBBodyGyroMagnitudenitudeStdDev
- fBBodyGyroMagnitudenitudeMeanFreq
- fBBodyGyroJerkMagnitudenitudeMean
- fBBodyGyroJerkMagnitudenitudeStdDev
- fBBodyGyroJerkMagnitudenitudeMeanFreq

You can find more information about the measurements in the features_info.txt file.

###Activity Labels

The labels indicated what the subjet was doing during the test

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

###Tidy Dataset

In the tidy_data.txt file, you can see the average of every variable