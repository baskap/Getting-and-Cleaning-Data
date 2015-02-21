==================================================================
The Course Project in Getting and Cleaning Dataset
Peer Assessment
==================================================================

Data in this dataset was computed using dataset from the "Human Activity Recognition Using Smartphones Dataset"
A full description of  the "Human Activity Recognition Using Smartphones Dataset" 
is available at the site where the data can be obtained:

https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Tidy data set (tidy_data_set.txt) contains mean values for every activity and subject 
and feature that measure mean or standard deviation. 
You can find description of featuers in file 'features_info.txt'.
Tidy data set contains 4 columns of data: "subject", "activity_label", "feature" and mean"

For each record it is provided:
======================================
 
- An identifier of the subject who carried out the experiment - column  "subject"
- An activity label - column "activity_label"
- Name of feature column "feature"
- Average value for each combination of subject, activity and feature - column "mean"

You should have unziped 'UCI HAR Dataset.zip' in current working directory
for script 'run_analysis.R' to execute properly.

The dataset includes the following files:
=========================================

- 'README.txt'
- 'tidy_data_set.txt' - tidy data set of features 79 features and its average values for every subject and its activity.
  It has 14220 rows (30 subjects x 6 activities x 79 features)
- 'code book.txt'
- 'run_analysis.R'

License:
========
Use of  Human Activity Recognition Using Smartphones Dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. 
Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
