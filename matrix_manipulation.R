# Create two matrices of 5*5 size using R, add, subtract and multiply these two matrices

# Create the first matrix (matrix A)
matrix_A <- matrix(1:25, nrow = 5, byrow = TRUE)

# Create the second matrix (matrix B)
matrix_B <- matrix(26:50, nrow = 5, byrow = TRUE)

# Addition of matrices A and B
matrix_addition <- matrix_A + matrix_B

# Subtraction of matrices A and B
matrix_subtraction <- matrix_A - matrix_B

# Multiplication of matrices A and B
matrix_multiplication <- matrix_A * matrix_B

# Print the matrices and the results of the operations
cat("Matrix A:\n")
print(matrix_A)

cat("Matrix B:\n")
print(matrix_B)

cat("Matrix Addition:\n")
print(matrix_addition)

cat("Matrix Subtraction:\n")
print(matrix_subtraction)

cat("Matrix Multiplication:\n")
print(matrix_multiplication)
