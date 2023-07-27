# Assuming that the problem, as given above, does not have any categories. Perform k-mean 
# clustering on the data with k=5.

install.packages("dplyr")

# Load required library
library(dplyr)

# Step 1: Create the sample dataset (similar to the previous example)
set.seed(123) # For reproducibility
customers <- data.frame(
  CustomerID = 1:100, 
  FamilyIncome = round(runif(100, min = 30000, max = 120000), -3), 
  TotalAmountSpent = round(runif(100, min = 100, max = 2000), 2),
  IsSubscriber = sample(c(0, 1), 100, replace = TRUE)
)

# Step 2: Select the variables to be used for clustering
cluster_data <- customers %>%
  select(FamilyIncome, TotalAmountSpent, IsSubscriber)

# Step 3: Perform k-means clustering with k=5
k <- 5
kmeans_model <- kmeans(cluster_data, centers = k)

# Step 4: Add the cluster labels to the original dataset
customers$ClusterLabel <- as.factor(kmeans_model$cluster)

# Step 5: View the cluster centers (average values for each cluster)
cluster_centers <- as.data.frame(kmeans_model$centers)
colnames(cluster_centers) <- c("AverageFamilyIncome", "AverageTotalAmountSpent", "AverageIsSubscriber")
print(cluster_centers)

# Step 6: View the distribution of customers across clusters
cluster_distribution <- table(customers$ClusterLabel)
print(cluster_distribution)
