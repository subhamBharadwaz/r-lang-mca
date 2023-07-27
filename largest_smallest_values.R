# Write function to find the largest and smallest values in a 3-dimensional array of size 3*3*3. 
# You should use parameter passing

# Function to find the largest and smallest values in a 3-dimensional array
find_largest_smallest_values <- function(arr) {
  # Check if the input is a 3-dimensional array of size 3x3x3
  if (!is.array(arr) || !identical(dim(arr), c(3, 3, 3))) {
    stop("Input array must be a 3-dimensional array of size 3x3x3.")
  }
  
  # Find the largest and smallest values in the array
  largest_value <- max(arr)
  smallest_value <- min(arr)
  
  # Return the results as a named list
  result <- list(largest = largest_value, smallest = smallest_value)
  return(result)
}

# Create a sample 3-dimensional array of size 3x3x3
my_array <- array(1:27, dim = c(3, 3, 3))

# Call the function and pass the array as an argument
result <- find_largest_smallest_values(my_array)

# Print the results
cat("3-Dimensional Array:\n")
print(my_array)

cat("Largest Value:", result$largest, "\n")
cat("Smallest Value:", result$smallest, "\n")

