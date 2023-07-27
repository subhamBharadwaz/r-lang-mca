# Find the inverse of a matrix.

# Create a sample square matrix (make sure it is invertible)
my_matrix <- matrix(c(2, 1, 1, 3), nrow = 2)

# Print the original matrix
cat("Original Matrix:\n")
print(my_matrix)

# Find the inverse of the matrix using solve()
inverse_matrix <- solve(my_matrix)

# Print the inverse matrix
cat("Inverse Matrix:\n")
print(inverse_matrix)
