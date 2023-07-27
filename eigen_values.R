# Find the eigen values and eigen vectors of a symmetric matrix

# Create a sample symmetric matrix
symmetric_matrix <- matrix(c(2, 1, 1, 3), nrow = 2, byrow = TRUE)

# Print the original symmetric matrix
cat("Symmetric Matrix:\n")
print(symmetric_matrix)

# Find the eigenvalues and eigenvectors using eigen()
eigen_result <- eigen(symmetric_matrix)

# Extract the eigenvalues and eigenvectors from the result
eigenvalues <- eigen_result$values
eigenvectors <- eigen_result$vectors

# Print the eigenvalues and eigenvectors
cat("Eigenvalues:\n")
print(eigenvalues)

cat("Eigenvectors:\n")
print(eigenvectors)
