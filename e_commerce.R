# Create or download sample data of customers of an e-commerce website. Consider it has 
# factors like family income, total amount spent last month by the customer, Is subscriber of 
# product review pages, etc. Classify the customers into the following categories:
# High spenders, medium spenders, Low spenders. You may use any two classification 


# Load required libraries
library(rpart)
library(dplyr)

# Step 1: Create a sample dataset
set.seed(123) # For reproducibility
customers <- data.frame(
  CustomerID = 1:100, 
  FamilyIncome = round(runif(100, min = 30000, max = 120000), -3), 
  TotalAmountSpent = round(runif(100, min = 100, max = 2000), 2),
  IsSubscriber = sample(c(0, 1), 100, replace = TRUE)
)

# Step 2: Create a new column for classification (High, Medium, Low spenders)
customers <- customers %>%
  mutate(
    SpendCategory = ifelse(TotalAmountSpent >= 1000, "High Spender",
                          ifelse(TotalAmountSpent >= 500, "Medium Spender", "Low Spender"))
  )

# Step 3: Split the data into training and testing sets (70% for training, 30% for testing)
train_indices <- sample(1:nrow(customers), 0.7 * nrow(customers))
train_data <- customers[train_indices, ]
test_data <- customers[-train_indices, ]

# Step 4: Create a decision tree model
decision_tree_model <- rpart(SpendCategory ~ FamilyIncome + TotalAmountSpent + IsSubscriber, data = train_data)

# Step 5: Create a logistic regression model
logistic_regression_model <- glm(SpendCategory ~ FamilyIncome + TotalAmountSpent + IsSubscriber, data = train_data, family = binomial)

# Step 6: Make predictions on the test data using both models
predictions_decision_tree <- predict(decision_tree_model, newdata = test_data, type = "class")
predictions_logistic_regression <- predict(logistic_regression_model, newdata = test_data, type = "response")

# Step 7: Compare the results
# For binary classification, you can use confusion matrix or other metrics to evaluate model performance

# For example, using confusion matrix for the decision tree model:
confusion_matrix_decision_tree <- table(predictions_decision_tree, test_data$SpendCategory)
print(confusion_matrix_decision_tree)

# For logistic regression, you may need to choose a threshold to classify into categories based on the probabilities.
# For example, if the probability is >= 0.5, classify as "High Spender", else classify as "Medium Spender" or "Low Spender".
