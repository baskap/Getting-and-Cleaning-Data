library(dplyr)
library(tidyr)

#reading data

features <- read.delim("UCI HAR Dataset/features.txt", sep="", header=F)

activity_labels <- read.delim("UCI HAR Dataset/activity_labels.txt", sep="", header=F)
colnames(activity_labels) <- c("activity", "activity_label")

X_test <- read.delim("UCI HAR Dataset/test/X_test.txt", sep="", header=F)
Y_test <- read.delim("UCI HAR Dataset/test/y_test.txt", sep="", header=F)
subject_test<- read.delim("UCI HAR Dataset/test/subject_test.txt", sep="", header=F)

X_train<- read.delim("UCI HAR Dataset/train/X_train.txt", sep="", header=F)
Y_train<- read.delim("UCI HAR Dataset/train/y_train.txt", sep="", header=F)
subject_train<- read.delim("UCI HAR Dataset/train/subject_train.txt", sep="", header=F)

#1. Merge the training and the test sets to create one data set

dt <- rbind_list(X_test, X_train)

#2. Extract only the measurements on the mean and standard deviation for each measurement. 

col_mean_or_std <- grepl("mean",features$V2) | grepl("std",features$V2)
dt <- dt[,col_mean_or_std]

#3. Use descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 

colnames(dt) <- features$V2[col_mean_or_std]
dt$activity <- c(Y_test$V1,Y_train$V1)
dt$subject <- c(subject_test$V1,subject_train$V1)

dt <- merge(dt,activity_labels) %>% select(-(activity))

#5, From the data set in step 4, creates a second, 
#independent tidy data set with the average of each variable for each activity and each subject.

dt <- dt %>% gather(feature, value,-activity_label ,-subject ) %>%
      group_by(subject,activity_label,feature) %>%
      summarize(mean = mean(value)) %>%
      arrange(subject, activity_label, feature)

write.table(dt,'tidy_data_set.txt',row.name=FALSE)
