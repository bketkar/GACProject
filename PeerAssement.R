## Read in the training data

HCA_X_train <- read.table("../UCI HAR Dataset/train/X_train.txt")
HCA_y_train <- read.table("../UCI HAR Dataset/train/y_train.txt")
HCA_subject_train <- read.table("../UCI HAR Dataset/train/subject_train.txt")

## Read in the test data

HCA_X_test <- read.table("../UCI HAR Dataset/test/X_test.txt")
HCA_y_test <- read.table("../UCI HAR Dataset/test/y_test.txt")
HCA_subject_test <- read.table("../UCI HAR Dataset/test/subject_test.txt")

## Rbind the training data

HCA_train <- cbind(HCA_X_train,HCA_subject_train,HCA_y_train)

## Rbind the test data

HCA_test <- cbind(HCA_X_test,HCA_subject_test,HCA_y_test)

## Rbind the training and test data together

HCA_tidy <- rbind(HCA_train,HCA_test)

HCA_tidy <- cbind(HCA_tidy[1:6],HCA_tidy[41:46],HCA_tidy[81:86],HCA_tidy[121:126],
                  HCA_tidy[161:166],HCA_tidy[201:202],HCA_tidy[214:215],
                  HCA_tidy[227:228],HCA_tidy[240:241],HCA_tidy[253:254],
                  HCA_tidy[266:271],HCA_tidy[345:350],HCA_tidy[424:429],
                  HCA_tidy[503:504],HCA_tidy[516:517],HCA_tidy[529:530],
                  HCA_tidy[541:542],HCA_tidy[562:563])

colnames(HCA_tidy) <- c("tBodyAcc_mean_X","tBodyAcc_mean_Y","tBodyAcc_mean_Z",
                        "tBodyAcc_std_X","tBodyAcc_std_Y","tBodyAcc_std_Z",
                        "tGravityAcc_mean_X","tGravityAcc_mean_Y","tGravityAcc_mean_Z",
                        "tGravityAcc_std_X","tGravityAcc_std_Y","tGravitybodyAcc_std_Z",
                        "tBodyAccJerk_mean_X","tBodyAccJerk_mean_Y","tBodyAccJerk_mean_Z",
                        "tBodyAccJerk_std_X","tBodyAccJerk_std_Y","tBodyAccJerk_std_Z",
                        "tBodyGyro_mean_X","tBodyGyro_mean_Y","tBodyGyro_mean_Z",
                        "tBodyGyro_std_X","tBodyGyro_std_Y","tBodyGyro_std_Z",
                        "tBodyGyroJerk_mean_X","tBodyGyroJerk_mean_Y","tBodyGyroJerk_mean_Z",
                        "tBodyGyroJerk_std_X","tBodyGyroJerk_std_Y","tBodyGyroJerk_std_Z",
                        "tBodyAccMag_mean","tBodyAccMag_std",
                        "tGravityAccMag_mean","tGravityAccMag_std",
                        "tBodyAccJerkMag_mean","tBodyAccJerkMag_std",
                        "tBodyGyroMag_mean","tBodyGyroMag_std",
                        "tBodyGyroJerkMag_mean","tBodyGyroJerkMag_std",
                        "fBodyAcc_mean_X","fBodyAcc_mean_Y","fBodyAcc_mean_Z",
                        "fBodyAcc_std_X","fBodyAcc_std_Y","fBodyAcc_std_Z",
                        "fBodyAccJerk_mean_X","fBodyAccJerk_mean_Y","fBodyAccJerk_mean_Z",
                        "fBodyAccJerk_std_X","fBodyAccJerk_std_Y","fBodyAccJerk_std_Z",
                        "fBodyGyro_mean_X","fBodyGyro_mean_Y","fBodyGyro_mean_Z",
                        "fBodyGyro_std_X","fBodyGyro_std_Y","fBodyGyro_std_Z",
                        "fBodyAccMag_mean","fBodyAccMag_std",
                        "fBodyBodyAccJerkMag_mean","fBodyBodyAccJerkMag_std",
                        "fBodyBodyGyroMag_mean","fBodyBodyGyroMag_std",
                        "fBodyBodyGyroJerkMag_mean","fBodyBodyGyroJerkMag_std",
                        "y_label","subject_id")


write.table(HCA_tidy,"./HCA_tidy.csv",sep=",",row.names=FALSE)
