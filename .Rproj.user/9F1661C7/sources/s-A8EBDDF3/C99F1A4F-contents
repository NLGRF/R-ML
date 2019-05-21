install.packages("randomForest")
library(randomForest)

# build random forest model
set.seed(123)
rf_model <- randomForest(Class ~ ., data = train_df)

# print model
print(rf_model)

# predict test data and compute accuracy
p <- predict(rf_model, newdata = test_df)
table(test_df$Class, p)

#            p
#            benign malignant
# benign       127         4
# malignant      1        73
