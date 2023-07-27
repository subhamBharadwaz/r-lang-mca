# Identify a dataset that has rainfall data along with various related factors like temperature, 
# pressure, etc. Create first a decision tree to determine the possibility of rainfall or absence of 
# it. Also, use random forest to do the same. Compare the results of decision tree and random 
# forest


install.packages("randomForest")
# Load required libraries
library(rpart)
library(randomForest)

# Step 1: Load the dataset (replace 'your_dataset.csv' with the actual file path)
# For example: dataset <- read.csv("path_to_your_dataset.csv")

# For demonstration purposes, let's assume you have a data frame 'dataset' with columns: Rainfall, Temperature, Pressure, Humidity, etc.

# Step 2: Split the data into training and testing sets
set.seed(123)  # For reproducibility
train_indices <- sample(1:nrow(dataset), 0.7 * nrow(dataset))  # 70% for training, 30% for testing
train_data <- dataset[train_indices, ]
test_data <- dataset[-train_indices, ]

# Step 3: Create a decision tree model
decision_tree_model <- rpart(Rainfall ~ Temperature + Pressure + Humidity, data = train_data)

# Step 4: Create a random forest model
random_forest_model <- randomForest(Rainfall ~ Temperature + Pressure + Humidity, data = train_data)

# Step 5: Make predictions on the test data using both models
predictions_decision_tree <- predict(decision_tree_model, newdata = test_data, type = "class")
predictions_random_forest <- predict(random_forest_model, newdata = test_data)

# Step 6: Compare the results
# For binary classification, you can use confusion matrix or other metrics to evaluate model performance

# For example, using confusion matrix:
confusion_matrix_decision_tree <- table(predictions_decision_tree, test_data$Rainfall)
confusion_matrix_random_forest <- table(predictions_random_forest, test_data$Rainfall)

# You can then calculate accuracy, precision, recall, F1-score, etc., to compare the performance of decision tree and random forest models.

