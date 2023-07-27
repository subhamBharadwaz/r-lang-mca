# Create a vector of size 10 with 5th and 7th values as missing (store these values as NA). Use 
# the “is.na()” to find locations of missing data

# Create a vector of size 10 with missing values (NA) at the 5th and 7th positions
my_vector <- c(1, 2, 3, 4, NA, 6, NA, 8, 9, 10)

# Use is.na() to find the locations of missing data
missing_locations <- which(is.na(my_vector))

# Print the vector and the locations of missing data
cat("Vector with missing values:", my_vector, "\n")
cat("Locations of missing data (positions):", missing_locations, "\n")


# Output:
# Vector with missing values: 1 2 3 4 NA 6 NA 8 9 10 
# Locations of missing data (positions): 5 7
