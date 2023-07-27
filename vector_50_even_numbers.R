# Create a vector of first 50 even numbers, starting from 2. Also create a vector having values 
# 30 down to 1, as 30, 29, …,1

# Create a vector of the first 50 even numbers starting from 2
even_vector <- seq(from = 2, by = 2, length.out = 50)

# Create a vector of values 30 down to 1
down_vector <- 30:1

# Print the vectors
cat("Vector of first 50 even numbers:", even_vector, "\n")
cat("Vector of values 30 down to 1:", down_vector, "\n")


# Output:
# Vector of first 50 even numbers: 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98 100 
# Vector of values 30 down to 1: 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
