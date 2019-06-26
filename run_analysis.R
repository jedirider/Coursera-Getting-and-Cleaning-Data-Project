#Read testing, training, and supporting files:
features <- read.table("./UCI HAR Dataset/features.txt")
actlab <- read.table("./UCI HAR Dataset/activity_labels.txt")
x_test <- read.table("./UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subj_test <-read.table("./UCI HAR Dataset/test/subject_test.txt",col.names = "Test Subject")
x_train <- read.table("./UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subj_train <-read.table("./UCI HAR Dataset/train/subject_train.txt",col.names = "Training Subject")

#Add column names to data files using supporting files:
colnames(x_test) <-features[,2]
colnames(y_test) <- "Activity"
colnames(subj_test) <- "Subject"
colnames(x_train) <-features[,2]
colnames(y_train) <- "Activity"
colnames(subj_train) <- "Subject"
colnames(actlab) <- c("Activity", "ActivityType")

#Merge the data (Assignment task #1)
merge_test <- cbind(y_test, x_test, subj_test)
merge_train <- cbind(y_train, x_train, subj_train)
oneDataSet <- rbind(merge_test, merge_train)

#Extract the mean and standard deviation for each measurement (Assignment task #2)
columns <-colnames(oneDataSet)
extractMeanStd <- (grepl("Activity" , columns) | grepl("Subject" , columns) | grepl("mean.." , columns) | grepl("std.." , columns))
dataMeanStd <- oneDataSet[ , extractMeanStd == TRUE]

#Create descriptive activity names to name the activities in data set (Assignment task #3)
activitytype <- merge(dataMeanStd, actlab, by="Activity", all.x=TRUE)

#Labels the data set with descriptive variable names (Assignment task #4)
names(activitytype)<-gsub("Acc", "Accelerometer", names(activitytype))
names(activitytype)<-gsub("Gyro", "Gyroscope", names(activitytype))
names(activitytype)<-gsub("BodyBody", "Body", names(activitytype))
names(activitytype)<-gsub("Mag", "Magnitude", names(activitytype))
names(activitytype)<-gsub("^t", "Time", names(activitytype))
names(activitytype)<-gsub("^f", "Frequency", names(activitytype))
names(activitytype)<-gsub("tBody", "TimeBody", names(activitytype))
names(activitytype)<-gsub("-mean()", "Mean", names(activitytype), ignore.case = TRUE)
names(activitytype)<-gsub("-std()", "STD", names(activitytype), ignore.case = TRUE)
names(activitytype)<-gsub("-freq()", "Frequency", names(activitytype), ignore.case = TRUE)
names(activitytype)<-gsub("angle", "Angle", names(activitytype))
names(activitytype)<-gsub("gravity", "Gravity", names(activitytype))

#From the data set in step 4, creates a second, independent tidy data set with 
#the average of each variable for each activity and each subject.
tidyData<- aggregate(. ~Subject + Activity, activitytype , mean)
tidyData<- tidyData[order(tidyData$Subject, tidyData$Activity),]
write.table(tidyData, "tidyData.txt", row.name=FALSE)

