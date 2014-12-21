# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation
#    for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.

# 1.1. Read datasets
test.measurement <- read.table('test/X_test.txt')
train.measurement <- read.table('train/X_train.txt')
# 1.2. Merge datasets
all.measurement <- rbind(train.measurement,test.measurement)

# 2.1. Read feature names
feature <- read.table('features.txt',col.names=c('id','name'))
# 2.2. Find the ids of mean and std
colid <- grep('std[:(:]|mean[:(:]',feature$name)
# 2.3. Extract the measurements on the mean and std
df <- data.frame(all.measurement[,colid])

# 3.1. Read activity name
activity <- read.table('activity_labels.txt',col.names=c('id','name'))
# 3.2. Read activity ids and merge
test.activity <- read.table('test/y_test.txt')
train.activity <- read.table('train/y_train.txt')
all.activity <- rbind(train.activity,test.activity)
# 3.3. Assign activity names to the dataset
df$activity <- sapply(all.activity[,1], function(id) as.character(activity$name[id]))

# 4.1. Assign descriptive variable names
colnames(df)[1:length(colid)] <- sapply(feature$name[colid],as.character)
# 4.2. Read subject data
test.subject <- read.table('test/subject_test.txt')
train.subject <- read.table('train/subject_train.txt')
all.subject <- rbind(train.subject,test.subject)
# 4.3. Add column of subject
df$subject <- all.subject[,1]

# 5.1. Average of each variable for each activity and each subject
df2 <- aggregate(df[,1:(ncol(df)-2)],list(activity=df$activity,subject=df$subject),mean)
write.table(df2,'average_for_activity_subject.txt',row.names=FALSE)


