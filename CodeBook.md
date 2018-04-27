# Code book for Getting and Cleaning Data course project

This code book is divided into two major parts the first is the study design which that has a description of how the data was colleced
and this second part describes the data different variables.

# Study Design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on 
the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a
constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding
windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion 
components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to
have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features
was obtained by calculating variables from the time and frequency domain.

# Variables

Each row has subject and activity and 79 values represent the mean of diffenret signal measurements.

- subject: integer, ranges from 1 to 30

-activity: there are 6 possible activities 
           WALKING: subject was walking
           WALKING_UPSTAIRS: subject was walking upstairs
           WALKING_DOWNSTAIRS: subject was walking downstairs
           SITTING: subject was sitting
           STANDING: subject was standing
           LAYING: subject was laying
           
## Mean of Measurments

The measurements are divided into two domains: 
time: variable starts with "time" word means vraiable is measured in time domain
frequency: variable starts with "frequency" word means vraiable is measured in frequency domain.

### Time-domain signals

#### Average time-domain body acceleration in the X, Y and Z directions:

timeBodyAccelerometerMean()-X
timeBodyAccelerometerMean()-Y
timeBodyAccelerometerMean()-Z

#### Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

timeBodyAccelerometerStandardDeviation()-X
timeBodyAccelerometerStandardDeviation()-Y
timeBodyAccelerometerStandardDeviation()-Z

#### Average time-domain gravity acceleration in the X, Y and Z directions:

timeGravityAccelerometerMean()-X
timeGravityAccelerometerMean()-Y
timeGravityAccelerometerMean()-Z

#### Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

timeGravityAccelerometerStandardDeviation()-X
timeGravityAccelerometerStandardDeviation()-Y
timeGravityAccelerometerStandardDeviation()-Z

#### Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

timeBodyAccelerometerJerkMean()-X
timeBodyAccelerometerJerkMean()-Y
timeBodyAccelerometerJerkMean()-Z

#### Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

timeBodyAccelerometerJerkStandardDeviation()-X
timeBodyAccelerometerJerkStandardDeviation()-Y
timeBodyAccelerometerJerkStandardDeviation()-Z

#### Average time-domain body angular velocity in the X, Y and Z directions:

timeBodyGyroscopeMean()-X
timeBodyGyroscopeMean()-Y
timeBodyGyroscopeMean()-Z

#### Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

timeBodyGyroscopeStandardDeviation()-X
timeBodyGyroscopeStandardDeviation()-Y
timeBodyGyroscopeStandardDeviation()-Z

#### Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

timeBodyGyroscopeJerkMean()-X
timeBodyGyroscopeJerkMean()-Y
timeBodyGyroscopeJerkMean()-Z

#### Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

timeBodyGyroscopeJerkStandardDeviation()-X
timeBodyGyroscopeJerkStandardDeviation()-Y
timeBodyGyroscopeJerkStandardDeviation()-Z

#### Average and standard deviation of the time-domain magnitude of body acceleration:

timeBodyAccelerometerMagnitudeMean
timeBodyAccelerometerMagnitudeStandardDeviation

#### Average and standard deviation of the time-domain magnitude of gravity acceleration:

timeGravityAccelerometerMagnitudeMean
timeGravityAccelerometerMagnitudeStandardDeviation

#### Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

timeBodyAccelerometerJerkMagnitudeMean
timeBodyAccelerometerJerkMagnitudeStandardDeviation

#### Average and standard deviation of the time-domain magnitude of body angular velocity:

timeBodyGyroscopeMagnitudeMean
timeBodyGyroscopeMagnitudeStandardDeviation

#### Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

timeBodyGyroscopeJerkMagnitudeMean
timeBodyGyroscopeJerkMagnitudeStandardDeviation

### Frequency-domain signals

#### Average frequency-domain body acceleration in the X, Y and Z directions:

frequencyBodyAccelerometerMean()-X
frequencyBodyAccelerometerMean()-Y
frequencyBodyAccelerometerMean()-Z

#### Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

frequencyBodyAccelerometerStandardDeviation()-X
frequencyBodyAccelerometerStandardDeviation()-Y
frequencyBodyAccelerometerStandardDeviation()-Z

#### Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

frequencyBodyAccelerometerMeanFrequencyX
frequencyBodyAccelerometerMeanFrequencyY
frequencyBodyAccelerometerMeanFrequencyZ

#### Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyBodyAccelerometerJerkMean()-X
frequencyBodyAccelerometerJerkMean()-Y
frequencyBodyAccelerometerJerkMean()-Z

#### Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyBodyAccelerometerJerkStandardDeviation()-X
frequencyBodyAccelerometerJerkStandardDeviation()-Y
frequencyBodyAccelerometerJerkStandardDeviation()-Z

#### Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyBodyAccelerometerJerkMeanFrequencyX
frequencyBodyAccelerometerJerkMeanFrequencyY
frequencyBodyAccelerometerJerkMeanFrequencyZ

#### Average frequency-domain body angular velocity in the X, Y and Z directions:

frequencyBodyGyroscopeMean()-X
frequencyBodyGyroscopeMean()-Y
frequencyBodyGyroscopeMean()-Z

#### Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

frequencyBodyGyroscopeStandardDeviation()-X
frequencyBodyGyroscopeStandardDeviation()-Y
frequencyBodyGyroscopeStandardDeviation()-Z

#### Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

frequencyBodyGyroscopeMeanFrequencyX
frequencyBodyGyroscopeMeanFrequencyY
frequencyBodyGyroscopeMeanFrequencyZ

#### Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

frequencyBodyAccelerometerMagnitudeMean
frequencyBodyAccelerometerMagnitudeStandardDeviation
frequencyBodyAccelerometerMagnitudeMeanFrequency

#### Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

frequencyBodyAccelerometerJerkMagnitudeMean
frequencyBodyAccelerometerJerkMagnitudeStandardDeviation
frequencyBodyAccelerometerJerkMagnitudeMeanFrequency

#### Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

frequencyBodyGyroscopeMagnitudeMean
frequencyBodyGyroscopeMagnitudeStandardDeviation
frequencyBodyGyroscopeMagnitudeMeanFrequency

#### Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

frequencyBodyGyroscopeJerkMagnitudeMean
frequencyBodyGyroscopeJerkMagnitudeStandardDeviation
frequencyBodyGyroscopeJerkMagnitudeMeanFrequency
