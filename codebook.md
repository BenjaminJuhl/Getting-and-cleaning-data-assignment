# Codebook

The files "UCI HAR tidy data.txt"" and "UCI HAR subject activity means.txt" , respecitively the data frames tidy.data and mean.data, feature the same variables. However, in the "UCI HAR subject activity means.txt" file and mean.data data frame the values for all variables except subject and activity are the mean of all observations of a specific subject-activity pair for that variable. The means were calculated with the mean() function after grouping the data by subject and activity.

## Variables

- subject

An identifier of the subject who carried out the experiment. It ranges from 1 to 30, no unit.
        
- activity

A description of the activity performed during the observation. Original values (ranging from 1 to 6) were replaced with descriptive terms according to the activity_labels.txt file in the original data set. featured activities: WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING
        
- timedomain.body.acceleration.mean.X, timedomain.body.acceleration.mean.Y, timedomain.body.acceleration.mean.Z, timedomain.gravity.acceleration.mean.X, timedomain.gravity.acceleration.mean.Y, timedomain.gravity.acceleration.mean.Z, timedomain.body.acceleration.jerk.mean.X, timedomain.body.acceleration.jerk.mean.Y, timedomain.body.acceleration.jerk.mean.Z, timedomain.bodygyro.mean.X, timedomain.bodygyro.mean.Y, timedomain.bodygyro.mean.Z, timedomain.bodygyro.jerk.mean.X, timedomain.bodygyro.jerk.mean.Y, timedomain.bodygyro.jerk.mean.Z, timedomain.body.acceleration.magnitude.mean, timedomain.gravity.acceleration.magnitude.mean, timedomain.body.acceleration.jerk.magnitude.mean, timedomain.bodygyro.magnitude.mean, timedomain.bodygyro.jerk.magnitude.mean

Means of time domain signals were captured at a constant bitrate of 50 Hz. Median and a 3rd order Low pass Butterworth filter were used to remove noise. Signals were split into body and gravity acceleration. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals for the X,Y, and Z axis.  Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. Axial acceleration is measured in standard gravity units 'g'. Mean, stad, and magnitude also have this unit.

- timedomain.body.acceleration.std.X, timedomain.body.acceleration.std.Y, timedomain.body.acceleration.std.Z, timedomain.gravity.acceleration.std.X, timedomain.gravity.acceleration.std.Y, timedomain.gravity.acceleration.std.Z, timedomain.body.acceleration.jerk.std.X, timedomain.body.acceleration.jerk.std.Y, timedomain.body.acceleration.jerk.std.Z, timedomain.bodygyro.std.X, timedomain.bodygyro.std.Y, timedomain.bodygyro.std.Z, timedomain.bodygyro.jerk.std.X, timedomain.bodygyro.jerk.std.Y, timedomain.bodygyro.jerk.std.Z, timedomain.body.acceleration.magnitude.std, timedomain.gravity.acceleration.magnitude.std, timedomain.body.acceleration.jerk.magnitude.std, timedomain.bodygyro.magnitude.std, timedomain.bodygyro.jerk.magnitude.std

Standard deviations (std) for the respective means. Axial acceleration is measured in standard gravity units 'g'. Mean, stad, and magnitude also have this unit.
        
- frequencydomain.body.acceleration.mean.X, frequencydomain.body.acceleration.mean.Y, frequencydomain.body.acceleration.mean.Z, frequencydomain.body.acceleration.std.X, frequencydomain.body.acceleration.std.Y, frequencydomain.body.acceleration.std.Z, frequencydomain.body.acceleration.jerk.mean.X, frequencydomain.body.acceleration.jerk.mean.Y, frequencydomain.body.acceleration.jerk.mean.Z, frequencydomain.body.acceleration.jerk.std.X, frequencydomain.body.acceleration.jerk.std.Y, frequencydomain.body.acceleration.jerk.std.Z, frequencydomain.bodygyro.mean.X, frequencydomain.bodygyro.mean.Y, frequencydomain.bodygyro.mean.Z, frequencydomain.bodygyro.std.X, frequencydomain.bodygyro.std.Y, frequencydomain.bodygyro.std.Z, frequencydomain.body.acceleration.magnitude.mean, frequencydomain.body.acceleration.magnitude.std, frequencydomain.bodybody.acceleration.jerk.magnitude.mean, frequencydomain.bodybody.acceleration.jerk.magnitude.std, frequencydomain.bodybodygyro.magnitude.mean, frequencydomain.bodybodygyro.magnitude.std, frequencydomain.bodybodygyro.jerk.magnitude.mean, frequencydomain.bodybodygyro.jerk.magnitude.std

A Fast Fourier Transform (FFT) was applied to some of the timedomain signals to produce thse frequency domain signals. Axial acceleration is measured in standard gravity units 'g'. Mean, stad, and magnitude also have this unit.

