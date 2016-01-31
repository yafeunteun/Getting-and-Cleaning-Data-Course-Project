# Getting-and-Cleaning-Data-Course-Project
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set.
It's part of the Courser data cleaning course : https://www.coursera.org/learn/data-cleaning/home/welcome

How does it work ? 
==================

The project consists of 

- a data set to clean : data_in/
- a tidy data set : data_out/
- a R script : run_analysis.R

This last file uses the files in data_in to produces the data set in data_out/ 
Here are the transformations performed : 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Writes the tidy data to the two files contained in data_out/
