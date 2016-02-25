#Getting and Cleaning Data Project Codebook

##Variables Within Script

***

* xTrain, yTrain, subjectTrain, xTest, yTest, and subjectTest contain data loaded from the UCI HAR Dataset.
* train is the merged xTrain, yTrain, and subjectTrain data sets.
* test is the merged xTest, yTest, and subjectTest data sets.
* data is test and train merged together.
* features is the list of correct names for the "x" data sets.
* activityLabels is the list of activity names corresponding to the Activity Index within data
* colNames is the list of column names for data while neededNames contains the column names corresponding to the mean and standard deviation data points.
* dataMeanStd is the subset of data that only contains the mean and standard deviation points.
* dataLabeled is the dataMeanStd data set with the Activity Index column removed.
* tidyData is the dataLabeled data set in which the data points with the same Activity and Subject Index data points are averaged together.

##Variables Within the Dataset

***

* "timeBodyAccelerometer-mean()-X"                
* "timeBodyAccelerometer-mean()-Y"                
* "timeBodyAccelerometer-mean()-Z"                
* "timeBodyAccelerometer-std()-X"                 
* "timeBodyAccelerometer-std()-Y"                 
* "timeBodyAccelerometer-std()-Z"                 
* "timeGravityAccelerometer-mean()-X"             
* "timeGravityAccelerometer-mean()-Y"             
* "timeGravityAccelerometer-mean()-Z"             
* "timeGravityAccelerometer-std()-X"              
* "timeGravityAccelerometer-std()-Y"              
* "timeGravityAccelerometer-std()-Z"              
* "timeBodyAccelerometerJerk-mean()-X"            
* "timeBodyAccelerometerJerk-mean()-Y"            
* "timeBodyAccelerometerJerk-mean()-Z"            
* "timeBodyAccelerometerJerk-std()-X"             
* "timeBodyAccelerometerJerk-std()-Y"             
* "timeBodyAccelerometerJerk-std()-Z"             
* "timeBodyGyroscope-mean()-X"                    
* "timeBodyGyroscope-mean()-Y"                    
* "timeBodyGyroscope-mean()-Z"                    
* "timeBodyGyroscope-std()-X"                     
* "timeBodyGyroscope-std()-Y"                     
* "timeBodyGyroscope-std()-Z"                     
* "timeBodyGyroscopeJerk-mean()-X"                
* "timeBodyGyroscopeJerk-mean()-Y"                
* "timeBodyGyroscopeJerk-mean()-Z"                
* "timeBodyGyroscopeJerk-std()-X"                 
* "timeBodyGyroscopeJerk-std()-Y"                 
* "timeBodyGyroscopeJerk-std()-Z"                 
* "timeBodyAccelerometerMagnitude-mean()"         
* "timeBodyAccelerometerMagnitude-std()"          
* "timeGravityAccelerometerMagnitude-mean()"      
* "timeGravityAccelerometerMagnitude-std()"       
* "timeBodyAccelerometerJerkMagnitude-mean()"     
* "timeBodyAccelerometerJerkMagnitude-std()"      
* "timeBodyGyroscopeMagnitude-mean()"             
* "timeBodyGyroscopeMagnitude-std()"              
* "timeBodyGyroscopeJerkMagnitude-mean()"         
* "timeBodyGyroscopeJerkMagnitude-std()"          
* "frequencyBodyAccelerometer-mean()-X"           
* "frequencyBodyAccelerometer-mean()-Y"           
* "frequencyBodyAccelerometer-mean()-Z"           
* "frequencyBodyAccelerometer-std()-X"            
* "frequencyBodyAccelerometer-std()-Y"            
* "frequencyBodyAccelerometer-std()-Z"            
* "frequencyBodyAccelerometerJerk-mean()-X"       
* "frequencyBodyAccelerometerJerk-mean()-Y"       
* "frequencyBodyAccelerometerJerk-mean()-Z"       
* "frequencyBodyAccelerometerJerk-std()-X"        
* "frequencyBodyAccelerometerJerk-std()-Y"        
* "frequencyBodyAccelerometerJerk-std()-Z"        
* "frequencyBodyGyroscope-mean()-X"               
* "frequencyBodyGyroscope-mean()-Y"               
* "frequencyBodyGyroscope-mean()-Z"               
* "frequencyBodyGyroscope-std()-X"                
* "frequencyBodyGyroscope-std()-Y"                
* "frequencyBodyGyroscope-std()-Z"                
* "frequencyBodyAccelerometerMagnitude-mean()"    
* "frequencyBodyAccelerometerMagnitude-std()"     
* "frequencyBodyAccelerometerJerkMagnitude-mean()"
* "frequencyBodyAccelerometerJerkMagnitude-std()" 
* "frequencyBodyGyroscopeMagnitude-mean()"        
* "frequencyBodyGyroscopeMagnitude-std()"         
* "frequencyBodyGyroscopeJerkMagnitude-mean()"    
* "frequencyBodyGyroscopeJerkMagnitude-std()"  