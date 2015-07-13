library(dplyr)
#Download and unzip the data 
filename<-"getdata-projectfiles-UCI HAR Dataset.zip"
if(!file.exists(filename)){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                filename,method = "curl")
}
rootfilename<-"UCI HAR Dataset"
if(!file.exists(rootfilename)){
  unzip(filename)
}
#Reading the data
## Activity
activity<-read.table(paste0(rootfilename,"/activity_labels.txt"),header = FALSE)
colnames(activity)<-c('activityId','activityType')
##Feature
features<-read.table(paste0(rootfilename,"/features.txt"),header = FALSE)
colnames(features)<-c('featureId','feature')
##Train
subject_train<-read.table(paste0(rootfilename,"/train/subject_train.txt"),header = FALSE)
x_train<- read.table(paste0(rootfilename,"/train/X_train.txt"),header = FALSE)
y_train<-read.table(paste0(rootfilename,"/train/y_train.txt"),header = FALSE)
colnames(subject_train)<-"subjectId"
colnames(x_train)<-features[,2]
colnames(y_train)<-"activityId"
##test
subject_test<-read.table(paste0(rootfilename,"/test/subject_test.txt"),header = FALSE)
x_test<-read.table(paste0(rootfilename,"/test/X_test.txt"),header = FALSE)
y_test<-read.table(paste0(rootfilename,"/test/y_test.txt"),header = FALSE)
colnames(subject_test)<-"subjectId"
colnames(x_test)<-features[,2]
colnames(y_test)<-"activityId"

#Step 1 - Merges the training and the test sets to create one data set.
training_data<-cbind(y_train,subject_train,x_train)
test_data<-cbind(y_test,subject_test,x_test)
data<-rbind(training_data,test_data)

#Step 2- Extracts only the measurements on the mean and standard deviation for each measurement. 
selectColumn<-grep(".*mean.*|.*std.*|.*activity.*|.*subject.*", colnames(data))
data<-data[,selectColumn]

#Step 3 - Uses descriptive activity names to name the activities in the data set
#Merge Activity with the data by activityId
data<-merge(data,activity,by="activityId",all.x = TRUE)

#Step 4 - Appropriately labels the data set with descriptive variable names. 
col<-colnames(data)
for(index in 1:length(col)){
  col[index]<-gsub("\\()|-","",col[index])
  col[index]<-gsub("mean","Mean",col[index])
  col[index]<-gsub("std","StdDev",col[index])
  col[index]<-gsub("Mag","Magnitude",col[index])
  col[index]<-gsub("tBody","tB",col[index])
  col[index]<-gsub("tGravity","tG",col[index])
  col[index]<-gsub("fBody","fB",col[index])
}
colnames(data)<-col
#Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#tidy_data<-select(data,-(activityType))
tidy_data<-aggregate(select(data,-activityId,-subjectId,-activityType),by=list(activityId=data$activityId,activityType=data$activityType,subjectId=data$subjectId),mean)
write.table(tidy_data,"./tidy_data.txt",row.name=FALSE,sep = ",")
