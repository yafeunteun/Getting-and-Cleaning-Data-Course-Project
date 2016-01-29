#####################################
# 
#
#
#
#####################################


## Load required packages
library(dplyr)
library(data.table)

## Load files in memory 
X_test <- fread("./test/X_test.txt")
y_test <- fread("./test/y_test.txt")
body_acc_x_test <- fread("./test/Inertial Signals/body_acc_x_test.txt")
body_acc_y_test <- fread("./test/Inertial Signals/body_acc_y_test.txt")
body_acc_z_test <- fread("./test/Inertial Signals/body_acc_z_test.txt")
body_gyro_x_test <- fread("./test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_y_test <- fread("./test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_z_test <- fread("./test/Inertial Signals/body_gyro_z_test.txt")
total_acc_x_test <- fread("./test/Inertial Signals/total_acc_x_test.txt")
total_acc_y_test <- fread("./test/Inertial Signals/total_acc_y_test.txt")
total_acc_z_test <- fread("./test/Inertial Signals/total_acc_z_test.txt")

X_train <- fread("./train/X_train.txt")
y_train <- fread("./train/y_train.txt")
body_acc_x_train <- fread("./train/Inertial Signals/body_acc_x_train.txt")
body_acc_y_train <- fread("./train/Inertial Signals/body_acc_y_train.txt")
body_acc_z_train <- fread("./train/Inertial Signals/body_acc_z_train.txt")
body_gyro_x_train <- fread("./train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_y_train <- fread("./train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_z_train <- fread("./train/Inertial Signals/body_gyro_z_train.txt")
total_acc_x_train <- fread("./train/Inertial Signals/total_acc_x_train.txt")
total_acc_y_train <- fread("./train/Inertial Signals/total_acc_y_train.txt")
total_acc_z_train <- fread("./train/Inertial Signals/total_acc_z_train.txt")  

activity_labels <- fread("./activity_labels.txt")


# Merges the training and the test sets to create one data set.
X_total <- bind_rows(X_train, X_test)
y_total <- bind_rows(y_train, y_test)
body_acc_x_total <- bind_rows(body_acc_x_train, body_acc_x_test)
body_acc_y_total <- bind_rows(body_acc_y_train, body_acc_y_test)
body_acc_z_total <- bind_rows(body_acc_z_train, body_acc_z_test)
body_gyro_x_total <- bind_rows(body_gyro_x_train, body_gyro_x_test)
body_gyro_y_total <- bind_rows(body_gyro_y_train, body_gyro_y_test)
body_gyro_z_total <- bind_rows(body_gyro_z_train, body_gyro_z_test)
total_acc_x_total <- bind_rows(total_acc_x_train, total_acc_x_test)
total_acc_y_total <- bind_rows(total_acc_y_train, total_acc_y_test)
total_acc_z_total <- bind_rows(total_acc_z_train, total_acc_z_test)

# free memory
rm(X_test, y_test, body_acc_x_test, body_acc_y_test, body_acc_z_test, body_gyro_x_test, body_gyro_y_test, body_gyro_z_test, total_acc_x_test, total_acc_y_test, total_acc_z_test)
rm(X_train, y_train, body_acc_x_train, body_acc_y_train, body_acc_z_train, body_gyro_x_train, body_gyro_y_train, body_gyro_z_train, total_acc_x_train, total_acc_y_train, total_acc_z_train)

# Uses descriptive activity names to name the activities in the data set
y_total <- mutate(y_total, V1=activity_labels$V2[V1])
rm(activity_labels)

