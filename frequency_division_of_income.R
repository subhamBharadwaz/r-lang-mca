# Consider a state wise list of income of few persons. Use factor function to create a frequency 
# division of income into 5 factor classes e.g. 10000-50000; 50000-100000 etc

# Sample income data (replace with actual income values)
income <- c(25000, 75000, 40000, 85000, 60000, 95000, 30000, 55000, 70000, 80000)

# Define the income breaks for factor classes
income_breaks <- c(10000, 50000, 100000, 150000, Inf)

# Create a factor with income divided into 5 classes
income_factor <- cut(income, breaks = income_breaks, labels = c("10,000-50,000", "50,000-100,000", "100,000-150,000", "150,000+"))

# Compute the frequency of each factor class
income_frequency <- table(income_factor)

# Print the income data and frequency division
cat("Income Data:\n")
print(income)

cat("\nIncome Frequency Division:\n")
print(income_frequency)

