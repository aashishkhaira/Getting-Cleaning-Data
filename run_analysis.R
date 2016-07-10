# Step 1. Merges the training and the test sets to create one data set.
#1.Concatenate the data tables by rows
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)
#2.set names to variables
names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(unzip_data, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2
#3.Merge columns to get the data frame Data for all data
dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataCombine)
#Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#1.Subset Name of Features by measurements on the mean and standard deviation  i.e taken Names of Features with "mean()" or "std()"
subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
#2. Subset the data frame Data by seleted names of Features
selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)
#3. Check the structures of the data frame Data
str(Data)
#Step3. Uses descriptive activity names to name the activities in the data set
#1.Read descriptive activity names from "activity_labels.txt"
activityLabels <- read.table(file.path(unzip_data, "activity_labels.txt"),header = FALSE)
#2. facorize Variale activity in the data frame Data using descriptive activity names
#3. check
head(Data$activity,30)
#Step4. Appropriately labels the data set with descriptive variable names.
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))
#check
names(Data)



