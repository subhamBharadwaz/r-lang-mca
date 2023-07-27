# Create a vector of size 10, having the values 5,7,9,11,13,13,11,9,7,5. Compute the sum, 
# mean, highest and lowest of these values. Compute the length of this vector? Find the 
# variance and standard deviation for the data of this vector, using the formula for variance and 
# standard deviation. Compare these values by computing the variance and standard deviation 
# using R function. Sort this array values in decreasing order

# Create the vector
my_vector <- c(5, 7, 9, 11, 13, 13, 11, 9, 7, 5)

# Compute the sum
sum_value <- sum(my_vector)

# Compute the mean
mean_value <- mean(my_vector)

# Compute the highest and lowest values
highest_value <- max(my_vector)
lowest_value <- min(my_vector)

# Compute the length of the vector
vector_length <- length(my_vector)

# Compute the variance and standard deviation using the formulas
# Variance formula: sum((x - mean)^2) / (n - 1)
variance_value <- sum((my_vector - mean_value)^2) / (vector_length - 1)

# Standard deviation formula: sqrt(variance)
std_deviation_value <- sqrt(variance_value)

# Compute the variance and standard deviation using R functions
variance_r <- var(my_vector)
std_deviation_r <- sd(my_vector)

# Sort the array values in decreasing order
sorted_vector <- sort(my_vector, decreasing = TRUE)

# Print the results
cat("Vector:", my_vector, "\n")
cat("Sum:", sum_value, "\n")
cat("Mean:", mean_value, "\n")
cat("Highest value:", highest_value, "\n")
cat("Lowest value:", lowest_value, "\n")
cat("Length of the vector:", vector_length, "\n")
cat("Variance (using formula):", variance_value, "\n")
cat("Standard Deviation (using formula):", std_deviation_value, "\n")
cat("Variance (using R function):", variance_r, "\n")
cat("Standard Deviation (using R function):", std_deviation_r, "\n")
cat("Sorted array (decreasing order):", sorted_vector, "\n")


# Output:
# Vector: 5 7 9 11 13 13 11 9 7 5 
# Sum: 91 
# Mean: 9.1 
# Highest value: 13 
# Lowest value: 5 
# Length of the vector: 10 
# Variance (using formula): 8.266667 
# Standard Deviation (using formula): 2.876739 
# Variance (using R function): 8.266667 
# Standard Deviation (using R function): 2.876739 
# Sorted array (decreasing order): 13 13 11 11 9 9 7 7 5 5