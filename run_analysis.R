## Loads the plyr and dplyr packages

library(plyr)
library(dplyr)

## Downloads and unzipes the UCI HAR dataset if not present 

ZipFileName <- "UCI_HAR_dataset.zip"
ZipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists(ZipFileName)){
        download.file(ZipUrl, ZipFileName)
}

if (!file.exists("UCI HAR Dataset")) { 
        unzip(ZipFileName) 
}

## Reads the Train and Test data into R 

TrainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
TestData <- read.table("./UCI HAR Dataset/test/X_test.txt")

## Reads the Activity IDs for the Train and Test datasets

TrainACT <- read.table("./UCI HAR Dataset/train/y_train.txt")
TestACT <- read.table("./UCI HAR Dataset/test/y_test.txt")

## Reads the Sbuject IDs for the Train and Test datasets

TrainID <- read.table("./UCI HAR Dataset/train/subject_train.txt")
TestID <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Binds the ID ACT and Data for the Train and Test datasets

TrainDF <- bind_cols(TrainID, TrainACT, TrainData)
TestDF <- bind_cols(TestID, TestACT, TestData)

## Reads features dataset and creates character vector of the datasets'variable
## names

varNames <- read.table("./UCI HAR Dataset/features.txt")
varNames <- as.character(varNames[, 2])

## Names the variables in each dataset

colnames(TrainDF) <- c("subject id", "activity id", varNames)
colnames(TestDF) <- c("subject id", "activity id", varNames)

## Deals with any duplicating or "illegal" variable names and prepase the 
## sets for merging.

colnames(TestDF) <- make.names(names(TestDF), unique = TRUE, allow_ = TRUE)
colnames(TrainDF) <- make.names(names(TrainDF), unique = TRUE, allow_ = TRUE)

## Merges the two datasets

CombinedData <- bind_rows(TrainDF, TestDF)

## Renames the dataset variable names

colnames(CombinedData) <- c("subject_id", "activity_id", varNames)

## Extracts only the measurements on the mean and standard deviation for each 
## measurement (including the subject and activity id's)

ExtractedData <- CombinedData[, grepl("mean[(]|std|subject|activity", 
                                      names(CombinedData))]

## Uses descriptive activity names to name the activities in the data set

ExtractedData[["activity_id"]] <- mapvalues(ExtractedData$activity, 
                                            c("1", "2", "3", "4", "5", "6"), 
                                            c("walking", "walking upstairs", 
                                              "walking downstairs", "sitting", 
                                              "standing", "laying"))

ExtractedData[["activity_id"]] <- as.factor(ExtractedData[["activity_id"]])

## Updates varNames to match ExtractedData

varNames <- colnames(ExtractedData) 

## Cleans up the names in colNames

for (i in 1:length(varNames))
{
        varNames[i] = gsub("\\()","",varNames[i])
        varNames[i] = gsub("-std$","StdDev",varNames[i])
        varNames[i] = gsub("-mean","Mean",varNames[i])
        varNames[i] = gsub("^(t)","time",varNames[i])
        varNames[i] = gsub("^(f)","freq",varNames[i])
        varNames[i] = gsub("([Gg]ravity)","Gravity",varNames[i])
        varNames[i] = gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",varNames[i])
        varNames[i] = gsub("[Gg]yro","Gyro",varNames[i])
        varNames[i] = gsub("AccMag","AccelerationMagnitude",varNames[i])
        varNames[i] = gsub("([Bb]odyaccjerkmag)","BodyAccelerationJerkMagnitude",varNames[i])
        varNames[i] = gsub("JerkMag","JerkMagnitude",varNames[i])
        varNames[i] = gsub("GyroMag","GyroMagnitude",varNames[i])
}

## Updates tidy column names to the ExtractedData dataset

colnames(ExtractedData) <- varNames

## Groups the dataset by subject and activity id's and assigns the result to
## seperate dataset

GroupData <- group_by(ExtractedData, subject_id, activity_id)

## second, independent tidy data set with the average of each variable for 
## each activity and each subject.

SummData <- summarise_each(GroupData, funs(mean))

## Writes the final SummData dataset in a .csv file in the script's directory 
## called "summ_data.csv

write.csv(SummData, file = "summ_data.csv")






