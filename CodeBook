# STUDY DESIGN
The study design comes from the "Human Activity Recognition Using Smartphones Dataset
Version 1.0" study. These experiments used a group of 30 volunteers that wore a Samsung Galaxy S II smartphone on the waist while  performing six different activities - walking, walking upstairs, walking downstairs, sitting, standing, and laying. Motion data was captured during these activities using the phone's 3-axial accelerometer and gyroscope, and sampling at a rate of 50Hz. The subjects were randomly split into two groups - a training group (11 subjects) and a test group (9 subjects).

The raw sensor data used in this study was pre-processed with noise filters, and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Feature vector attributes:
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

For this project, the pre-processed smartphone datasets were downloaded and unpacked to the R environment. These datasets included the motion data, an activity index file, the motion data column header index, and the subject file (i.e. 30 total subjects) with each of these files categorized as either a dataset from those subjects part of the training group and those that are part of the test group. The training and test files had their columns named by matching up the column index files to the motion data files. Then these files were merged to with the subject file to create one datafile for the entire experiment. From this file, a cleaner and more tidy file was created. 

# CODE BOOK
**Variable***           **Value/Units**
Subject                 The test subject (an individual person) identified by a number, 1 to 30.
Activity                The 6 activities performed - walking, walking upstairs, walking downstairs, sitting, standing, and laying
tBodyAcc.mean-XYZ       timeseries average of body linear accelerations - 3 vectors, X, Y, Z plane 
tGravityAcc.mean -XYZ   timeseries average of body gravity accelerations - 3 vectors, X, Y, Z plane
tBodyAccJerk.mean-XYZ   timeseries average of body linear jerk signals - 3 vectors, X, Y, Z plane
tBodyGyro.mean-XYZ      timeseries average of body angular velocity - 3 vectors, X, Y, Z plane
tBodyGyroJerk.mean-XYZ  timeseries average of body angular jerk signals - 3 vectors, X, Y, Z plane
tBodyAccMag.mean        timeseries average of body linear acceleration magnitudes - 3 vectors, X, Y, Z plane
tGravityAccMag.mean     timeseries average of body gravity acceleration magnitudes - 3 vectors, X, Y, Z plane
tBodyAccJerkMag.mean    timeseries average of body linear jerk signal magnitudes - 3 vectors, X, Y, Z plane
tBodyGyroMag.mean       timeseries average of body angular velocity magnitudes - 3 vectors, X, Y, Z plane
tBodyGyroJerkMag.mean   timeseries average of body angular jerk signal magnitudes - 3 vectors, X, Y, Z plane
fBodyAcc.mean-XYZ       frequency domain average of body linear accelerations - 3 vectors, X, Y, Z plane
fBodyAccJerk.mean-XYZ   frequency domain average of body linear jerk signals - 3 vectors, X, Y, Z plane
fBodyGyro.mean-XYZ      frequency domain average of body angular velocity - 3 vectors, X, Y, Z plane
fBodyAccMag.mean        frequency domain average of body linear acceleration magnitudes - 3 vectors, X, Y, Z plane
fBodyAccJerkMag.mean    frequency domain average of body linear jerk signal magnitudes - 3 vectors, X, Y, Z plane
fBodyGyroMag.mean       frequency domain average of body angular velocity magnitudes - 3 vectors, X, Y, Z plane
fBodyGyroJerkMag.mean   frequency domain average of body angular jerk signal magnitudes - 3 vectors, X, Y, Z plane
tBodyAcc.mean-XYZ       timeseries standard deviation of body linear accelerations - 3 vectors, X, Y, Z plane 
tGravityAcc.mean -XYZ   timeseries standard deviation of body gravity accelerations - 3 vectors, X, Y, Z plane
tBodyAccJerk.mean-XYZ   timeseries standard deviation of body linear jerk signals - 3 vectors, X, Y, Z plane
tBodyGyro.mean-XYZ      timeseries standard deviation of body angular velocity - 3 vectors, X, Y, Z plane
tBodyGyroJerk.mean-XYZ  timeseries standard deviation of body angular jerk signals - 3 vectors, X, Y, Z plane
tBodyAccMag.mean        timeseries standard deviation of body linear acceleration magnitudes - 3 vectors, X, Y, Z plane
tGravityAccMag.mean     timeseries standard deviation of body gravity acceleration magnitudes - 3 vectors, X, Y, Z plane
tBodyAccJerkMag.mean    timeseries standard deviation of body linear jerk signal magnitudes - 3 vectors, X, Y, Z plane
tBodyGyroMag.mean       timeseries standard deviation of body angular velocity magnitudes - 3 vectors, X, Y, Z plane
tBodyGyroJerkMag.mean   timeseries standard deviation of body angular jerk signal magnitudes - 3 vectors, X, Y, Z plane
fBodyAcc.mean-XYZ       frequency domain standard deviation of body linear accelerations - 3 vectors, X, Y, Z plane
fBodyAccJerk.mean-XYZ   frequency domain standard deviation of body linear jerk signals - 3 vectors, X, Y, Z plane
fBodyGyro.mean-XYZ      frequency domain standard deviation of body angular velocity - 3 vectors, X, Y, Z plane
fBodyAccMag.mean        frequency domain standard deviation of body linear acceleration magnitudes - 3 vectors, X, Y, Z plane
fBodyAccJerkMag.mean    frequency domain standard deviation of body linear jerk signal magnitudes - 3 vectors, X, Y, Z plane
fBodyGyroMag.mean       frequency domain standard deviation of body angular velocity magnitudes - 3 vectors, X, Y, Z plane
fBodyGyroJerkMag.mean   frequency domain standard deviation of body angular jerk signal magnitudes - 3 vectors, X, Y, Z plane
