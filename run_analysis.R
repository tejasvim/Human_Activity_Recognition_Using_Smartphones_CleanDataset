library(data.table)
library(dplyr)
setwd("./UCI HAR Dataset")

features<- read.table("features.txt")    # features
activity_names<- read.table("activity_labels.txt", col.names = c("activity_num", "activity_name"))  # Activity names

setwd("./train")

features_header<- features[,2]      #headers for train and test

# train x, y and subject datasets; assign the column names using feature file
train_set<- read.table("X_train.txt")
        colnames(train_set) <-  features_header
train_labels<- read.table("y_train.txt", col.names = c("activity_num"))
train_subject<- read.table("subject_train.txt", col.names = "subject_num")

setwd("../test")

# test x and y datasets; assign the column names using feature file
test_set<- read.table("X_test.txt")
        colnames(test_set) <- features_header
test_labels<- read.table("y_test.txt", col.names = c("activity_num"))
test_subject<- read.table("subject_test.txt", col.names = "subject_num")

train_test_set<- rbind(train_set, test_set)  # Merge test and train sets
train_test_label<- rbind(train_labels, test_labels)  # Merge test and train labels
train_test_subject<- rbind(train_subject, test_subject)  # Merge test and train subjects

# Select columns with mean and std dev
train_test_set<- subset(train_test_set, select = grep("mean|std", names(train_test_set)))

#Include activity and subject fields
final_db<- cbind(train_test_set, train_test_label)
final_db<- cbind(final_db, train_test_subject)
final_db<- merge(final_db, activity_names, by.x= "activity_num", by.y = "activity_num") # Merge to get activity names
names(final_db)

#Rename the column headers
colnames(final_db)<- gsub("^t", "time", colnames(final_db))
colnames(final_db)<- gsub("^f", "frequency", colnames(final_db))
colnames(final_db)<- gsub("BodyBody", "Body", colnames(final_db))
colnames(final_db)<- gsub("\\(\\)", "", colnames(final_db))

#Second dataset with avg of each variable for each activity and subject
final_tidy_data<- final_db %>% group_by(activity_num, activity_name, subject_num) %>% summarise_all(funs(mean))
colnames(final_tidy_data)<- gsub("^", "mean_", colnames(final_tidy_data))
colnames(final_tidy_data)<- gsub("mean_activity_num", "activity_num", colnames(final_tidy_data))
colnames(final_tidy_data)<- gsub("mean_activity_name", "activity_name", colnames(final_tidy_data))
colnames(final_tidy_data)<- gsub("mean_subject_num", "subject_num", colnames(final_tidy_data))

setwd("../")
write.table(final_db, "test_train_merged_db.txt", row.names = FALSE)
write.table(final_tidy_data, "tidy_dataset.txt", row.names = FALSE)