library(dplyr)

##  1. Merge the training and the test sets to create one data set.
##
##  2. Extract only the measurements on the mean
##     and standard deviation for each measurement.

features <- read.table("features.txt", stringsAsFactors=FALSE)
features <- features[,2]
match_vector <- grepl("-mean\\(\\)|-meanFreq\\(\\)|-std\\(\\)", features)

train_table <- read.table("train/X_train.txt")
train_table <- train_table[,match_vector]
activity <- read.table("train/y_train.txt")
subject  <- read.table("train/subject_train.txt")
train_table$activity <- activity[,1]
train_table$subject  <- subject[,1]

test_table <- read.table("test/X_test.txt")
test_table <- test_table[,match_vector]
activity <- read.table("test/y_test.txt")
subject  <- read.table("test/subject_test.txt")
test_table$activity <- activity[,1]
test_table$subject  <- subject[,1]

data_table <- rbind(train_table, test_table)
data_table$subject <- as.factor(data_table$subject)


##  3. Use descriptive activity names to name the activities in the data set.

activity_name <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
activity_name <- tolower(activity_name[,2])
activ_subst   <- function(x) { activity_name[x] }

data_table$activity <- as.factor(sapply(data_table[,"activity"], activ_subst))


##  4. Appropriately label the data set with descriptive variable names.
##
##  There is a bunch of mispints in the list of features. Some of features
##  have wrong names, such as 'fBodyBodyAccJerkMag' with duplicate of 'Body'.
##  See naming scheme for feature names at the document 'features_info.txt'
##  in original dataset.
##  Let's fix wrong names at the phase of variable names transformation.

features <- features[match_vector]

features <- gsub("BodyBody", "Body", features)
features <- tolower(features)
features <- gsub("-", "_", features)
features <- gsub("\\(\\)", "", features)
features <- gsub(",", "", features)
features <- c(features, "activity", "subject")

names(data_table) <- features


##  5. From the data set in step 4, create a second, independent
##     tidy data set with the average of each variable
##     for each activity and each subject.

tidy_table <- data_table %>%
    group_by(activity, subject) %>%
    summarise_each(funs(mean))

write.table(tidy_table, "tidy_data.txt", row.names=FALSE)
