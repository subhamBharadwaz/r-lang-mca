# Find the details of all the vectors and other variables. Also find the data type of all variables. 
# (Hint: use summary() and typeof(), you can also use stem().)

# Create some sample data (replace this with your actual data)
vector1 <- c(10, 15, 20, 25, 30)
vector2 <- c("Apple", "Banana", "Orange", "Mango")
variable1 <- 42
variable2 <- "Hello, World!"

# Display the details of all vectors and other variables
cat("Summary of Vector 1:\n")
print(summary(vector1))

cat("\nData Type of Vector 1:\n")
print(typeof(vector1))

cat("\nStem-and-Leaf Plot of Vector 1:\n")
stem(vector1)

cat("\nSummary of Vector 2:\n")
print(summary(vector2))

cat("\nData Type of Vector 2:\n")
print(typeof(vector2))

cat("\nSummary of Variable 1:\n")
print(summary(variable1))

cat("\nData Type of Variable 1:\n")
print(typeof(variable1))

cat("\nSummary of Variable 2:\n")
print(summary(variable2))

cat("\nData Type of Variable 2:\n")
print(typeof(variable2))


