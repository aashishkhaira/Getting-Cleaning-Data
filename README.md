                              Getting and Cleaning Data: Course Project
About the raw data

For the purposes of this project, the files in the Inertial Signals folders are not used. The files that will be used to load data are listed as follows:

•	test/subject_test.txt
•	test/X_test.txt
•	test/y_test.txt
•	train/subject_train.txt
•	train/X_train.txt
•	train/y_train.txt

About the script and the tidy dataset

1.	Values of Variable Activity consist of data from “Y_train.txt” and “Y_test.txt”
2.	values of Variable Subject consist of data from “subject_train.txt” and subject_test.txt"
3.	Values of Variables Features consist of data from “X_train.txt” and “X_test.txt”
4.	Names of Variables Features come from “features.txt”
5.	levels of Variable Activity come from “activity_labels.txt”

So we will use Activity, Subject and Features as part of descriptive variable names for data in data frame.

Steps-

1. Downloading and unzipping the data
2.Read data from the targeted files
3. Merges the training and the test sets to create one data set.
4. Extracts only the measurements on the mean and standard deviation for each measurement.
5. Appropriately labels the data set with descriptive variable names.
6. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

About the Code Book

The CODEBOOk.md file explains the transformations performed and the resulting data and variables.

References –

1. https://github.com/eriky/coursera-getting-and-cleaning-data/blob/master/README.md
2. https://github.com/Xiaodan/Coursera-Getting-and-Cleaning-Data/blob/master/README.md
3. https://github.com/mjlassila/coursera-getting-cleaning-data/blob/master/README.md
4. https://github.com/bgentry/coursera-getting-and-cleaning-data-project/blob/master/README.md
