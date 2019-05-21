# R crash course
# create vectors
customer_name <- c("David", "Mary", "John", "Jack", "Daniel")
customer_age <- c(30, 32, 28, 20, 31)
customer_gender <- c("M", "F", "M", "M", "M")
customer_purchased <- c(TRUE, FALSE, FALSE, TRUE, TRUE)

# create a dataframe
customer_dataframe <- data.frame(customer_name,
                                 customer_age,
                                 customer_gender,
                                 customer_purchased)

# first look at dataframe
print(customer_dataframe)

# useful functions to work with dataframe
str(customer_dataframe)
head(customer_dataframe)
tail(customer_dataframe)
summary(customer_dataframe)
