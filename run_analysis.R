#Load plyr package

library(plyr)

#Set working directory to the Dataset File

setwd("C:/Users/Benjamin Towles/Desktop/UCI HAR Dataset")

#Load the files within the UCI HAR Dataset folder

features <- read.table("./features.txt")
activityLabels <- read.table("./activity_labels.txt")

subjectTrain <- read.table("./train/subject_train.txt")
xTrain <- read.table("./train/X_train.txt")
yTrain <- read.table("./train/y_train.txt")

subjectTest <- read.table("./test/subject_test.txt")
xTest <- read.table("./test/X_test.txt")
yTest <- read.table("./test/y_test.txt")

#Label the loaded data appropriately

colnames(activityLabels) <- c("Activity Index", "Activity")

colnames(subjectTrain) <- "Subject Index"
colnames(xTrain) <- features[,2]
colnames(yTrain) <- "Activity Index"

colnames(subjectTest) <- "Subject Index"
colnames(xTest) <- features[,2]
colnames(yTest) <- "Activity Index"

#Merge the Train and Test data

train <- cbind(yTrain,subjectTrain,xTrain)
test <- cbind(yTest,subjectTest,xTest)
data <- rbind(train,test)

#Extract the mean and standard deviation data points

colNames <- colnames(data)
neededNames <- c(1,2,grep("mean\\(\\)|std\\(\\)",colNames))
dataMeanStd <- data[neededNames]

#Replace the Activity Index column with the Activity Labels 
#dataset through merging

dataMeanStd <- merge(activityLabels,dataMeanStd,by='Activity Index',all.x=TRUE);
dataLabeled <- dataMeanStd[,names(data) != 'Activity Index'];

#Clean up the variable names

names(dataLabeled) <- gsub("^t", "time", names(dataLabeled))
names(dataLabeled) <- gsub("^f", "frequency", names(dataLabeled))
names(dataLabeled) <- gsub("Acc", "Accelerometer", names(dataLabeled))
names(dataLabeled) <- gsub("Gyro", "Gyroscope", names(dataLabeled))
names(dataLabeled) <- gsub("Mag", "Magnitude", names(dataLabeled))
names(dataLabeled) <- gsub("BodyBody", "Body", names(dataLabeled))

#Summarize and sort the data by the mean of each variable and subject

tidyData <- aggregate(dataLabeled[,names(dataLabeled) != c('Activity','Subject Index')],by=list(Activity=dataLabeled$Activity,"Subject Index" = dataLabeled$"Subject Index"),mean)

#Write the table

write.table(tidyData, './tidyData.txt',row.names=FALSE)







