# Create a vector of characters of size 5, consisting of values: “This” “is” “a” “character” 
# “vector”. Find the index of value “is” in the vector using which() or match()

# Create a character vector
my_char_vector <- c("This", "is", "a", "character", "vector")

# Find the index of "is" using which()
index_is <- which(my_char_vector == "is")

# Print the index
cat("Index of 'is' in the vector:", index_is, "\n")


# Output:
# Index of 'is' in the vector: 2 
# Index of 'is' in the vector (using match()): 2 