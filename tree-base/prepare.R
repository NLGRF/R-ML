# install new package
install.packages("mlbench")
library(mlbench)

# load data into R
data(BreastCancer)

# review dataset
str(BreastCancer)
head(BreastCancer)
summary(BreastCancer)

# remove ID column 
BreastCancer$Id <- NULL

# remove missing values
BreastCancer <- BreastCancer[complete.cases(BreastCancer),]

# prepare dataset
# split data into 70% train and 30% test sets
set.seed(123)
idx <- sample(nrow(BreastCancer), 0.7*nrow(BreastCancer))
train_df <- BreastCancer[idx, ]
test_df <- BreastCancer[-idx, ]
