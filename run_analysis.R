#################################################################################
#                                                                               #
# Getting and Cleaning Data Course Project                                      # 
#===============================================================================#
# The purpose of this scrip is to prepare tidy data from the given data set     #
# that can be ue for later analysis. This script does the following :           #
#                                                                               #
# 1. Merges the training and the test sets to create one data set.              #
# 2. Extracts only the measurements on the mean and standard deviation for each #
# measurements.                                                                 #  
# 3. Uses descriptive activity names to name the activities in the data set     #
# 4. Appropriately labels the data set with descriptive variables names.        #
# 5. From the data set in step 4, creates a second, independent tidy data set   #
# with the average of each variable for each activity and each subject.         #
#                                                                               #
#################################################################################


# Load required packages
library(dplyr)
library(data.table)

# Load files in memory 
X_test <- fread("data_in/test/X_test.txt")
y_test <- fread("data_in/test/y_test.txt")

X_train <- fread("data_in/train/X_train.txt")
y_train <- fread("data_in/train/y_train.txt")
  
activity_labels <- fread("data_in/activity_labels.txt")

subject_train <- fread("data_in/train/subject_train.txt")
subject_test <- fread("data_in/test/subject_test.txt")

features <- fread("data_in/features.txt")

# Merges the training and the test sets to create one data set.
X_total <- bind_rows(X_train, X_test)
y_total <- bind_rows(y_train, y_test)
subject_total <- bind_rows(subject_train, subject_test)

# free memory
rm(X_test, y_test)
rm(X_train, y_train)
rm(subject_test, subject_train)

# Uses descriptive activity names to name the activities in the data set
y_total <- mutate(y_total, V1=activity_labels$V2[V1])
rm(activity_labels)


# Extract only the measurements on the mean and standard deviation
meanLabels <- features[grepl("mean[(]", features$V2),]
stdLabels <- features[grepl("std[(]", features$V2),]
temp1 <-  select(X_total, meanLabels$V1) 
colnames(temp1) <- meanLabels$V2
temp2 <-  select(X_total, stdLabels$V1) 
colnames(temp2) <- stdLabels$V2

# Merge mean measurements and std measurements
X_mean_std_total <- bind_cols(temp1, temp2)

# free memory
rm(temp1, temp2)
rm(meanLabels, stdLabels)

# Appropriately rename variables
y_total <- rename(y_total, activity=V1)
subject_total <- rename(subject_total, subject=V1)

# Perform some small cleaning
## subject variable shouldn't be used to do some mathematical operations.
total$subject <- factor(total$subject)
## Order columns by name 
total <- select(total, order(colnames(total)))

# Merge measurements records with corresponding activity labels and subject ids
total <- bind_cols(subject_total, y_total, X_mean_std_total)

# Create a second, independent tidy data set with the average of each variable for each activity and each subject.
total_by_activity_subject <- group_by(total, activity,subject) %>% summarise_each(funs(mean))

# Write resulting data sets to files 
write.table(total, file="./data_out/mean_and_std_measurements.txt")
write.table(total_by_activity_subject, file="./data_out/avg_mean_and_std_measurements.txt")
