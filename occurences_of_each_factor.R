# Create a list of a factor. Find the occurrences of each factor in the list

# Create a list containing a factor
my_list <- list(
  fruits = factor(c("apple", "orange", "apple", "banana", "apple")),
  colors = factor(c("red", "blue", "red", "green", "red"))
)

# Find the occurrences of each factor in the list
factor_occurrences <- lapply(my_list, table)

# Print the occurrences of each factor
cat("Occurrences of each factor in the list:\n")
print(factor_occurrences)
