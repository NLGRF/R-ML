install.packages("rpart")
install.packages("rpart.plot")
library(rpart)
library(rpart.plot)

# train a decision tree
set.seed(123)
dt_model <- rpart(Class ~ ., data = train_df, method = "class")

# find the best cp hyperparameter
dt_model$cptable

#           CP nsplit rel error    xerror       xstd
# 1 0.78787879      0 1.0000000 1.0000000 0.06299647
# 2 0.05454545      1 0.2121212 0.2242424 0.03540970
# 3 0.01000000      2 0.1575758 0.1696970 0.03111626

# prune our model for higher accuracy
dt_model_final <- prune(dt_model, cp = 0.01000000)

# plot model
rpart.plot(dt_model_final)

# prediction
p <- predict(dt_model_final, newdata=test_df, type="class")
table(test_df$Class, p)

#             benign malignant
# benign       124         7
# malignant      4        70
