#Script Summary

***

The run_analysis.R script takes the files from the UCI HAR Dataset and presents an average of the Mean and Standard Deviations
points within the data set in a tidy and comprehensive table through the following steps:

* First, the working directory is set to the UCI HAR Dataset folder (this must be changed to your corresponding working directory)
* Then, the files are loaded and merged into one dataset.
* The mean and standard deviation files are then extracted from the dataset, and given correct labels.
* Then, the activity indicies are labeled with their proper activity labels.
* Finally, the average of the columns is taken with respects to their corresponding subject indicies to produce 180 observations in total in the final tidy data set.