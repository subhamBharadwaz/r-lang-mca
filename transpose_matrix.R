# Perform transpose of a matrix.

# Create a sample 3x4 matrix
my_matrix <- matrix(1:12, nrow = 3, ncol = 4)

# Print the original matrix
cat("Original Matrix:\n")
print(my_matrix)

# Transpose the matrix using t()
transposed_matrix <- t(my_matrix)

# Print the transposed matrix
cat("Transposed Matrix:\n")
print(transposed_matrix)
