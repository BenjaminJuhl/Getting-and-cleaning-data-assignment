# Script to tidy some data from the UCI HAR Dataset and run a basic analysis
require(dplyr)

# read the train dataset
train.original <- read.table("UCI HAR Dataset/train/X_train.txt",sep="",header=FALSE)
train.labels <- read.table("UCI HAR Dataset/train/Y_train.txt",sep="",header=FALSE,col.names = "activity")
train.subjects <- read.table("UCI HAR Dataset/train/subject_train.txt",sep="",header=FALSE,col.names = "subject")

#read the test dataset
test.original <- read.table("UCI HAR Dataset/test/X_test.txt",sep="",header=FALSE)
test.labels <- read.table("UCI HAR Dataset/test/Y_test.txt",sep="",header=FALSE,col.names = "activity")
test.subjects <- read.table("UCI HAR Dataset/test/subject_test.txt",sep="",header=FALSE,col.names = "subject")

# get the original variable names from the features.txt file and apply
# them to both datasets 
features <- read.table("UCI HAR Dataset/features.txt",sep="",header=FALSE)
names(train.original) <- features[,2]
names(test.original) <- features[,2]
rm(features)

# combine the three separate tables to one table separately for each dataset
train.data <- cbind(train.subjects,train.labels,train.original)
test.data <- cbind(test.subjects,test.labels,test.original)
rm(train.original,train.labels,train.subjects,test.original,test.labels,test.subjects)

# combine the train and test table to a single table
all.data <- rbind(train.data,test.data)
rm(train.data,test.data)

# replace the activity numeric values with descriptive levels from the
# activity_labels.txt file
activities <- read.table("UCI HAR Dataset/activity_labels.txt",sep="",header=FALSE)
all.data[,2] <- as.factor(all.data[,2])
# A simple assignment works, as the levels function has the levels ordered
# in the same order as the activities table
levels(all.data[,2]) <- activities[,2]
rm(activities)

# only consider the mean() and std() variables for the tidy dataset
colindex <- grep("subject|activity|mean\\()|std\\()",names(all.data))
tidy.data <- all.data[,colindex]
rm(all.data)

# make variable names more human readable
labels <- names(tidy.data)
labels <- sub("\\()","",labels)
labels <- gsub("-",".",labels)
labels <- sub("^t","timedomain.",labels)
labels <- sub("^f","frequencydomain.",labels)
labels <- sub("Mag",".magnitude",labels)
labels <- sub("Jerk",".jerk",labels)
labels <- sub("Acc",".acceleration",labels)
labels <- gsub("Body","body",labels)
labels <- gsub("Gyro","gyro",labels)
labels <- gsub("Gravity","gravity",labels)
names(tidy.data) <- labels # the tidy dataset is complete
rm(labels,colindex)

# generate an independent dataset 
mean.data <- summarize_each(group_by(tidy.data,subject,activity),funs(mean))

# write both datasets to files
write.table(tidy.data,"UCI HAR tidy data.txt",row.name=FALSE)
write.table(mean.data,"UCI HAR subject activity means.txt",row.name=FALSE)
