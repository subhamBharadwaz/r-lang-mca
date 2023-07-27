# The marks of a class of 50 students are recorded as the final percentage of marks. Assuming 
# that the percentage data is normally distributed. In addition, gender data is also stored. Create 
# the data for the class and draw side by side box plot of Girls and Boys marks. Explain the 
# output of the boxplots

# Step 1: Set the seed for reproducibility
set.seed(123)

# Step 2: Generate sample data for marks assuming normal distribution
final_percentage <- rnorm(50, mean = 75, sd = 10)  # Mean = 75, Standard deviation = 10

# Step 3: Generate random data for gender
gender <- sample(c("Boys", "Girls"), size = 50, replace = TRUE)

# Step 4: Create a data frame to store the class data
class_data <- data.frame(Gender = gender, Marks = final_percentage)

# Step 5: Draw side by side box plot of Girls and Boys marks
boxplot(Marks ~ Gender, data = class_data, col = c("pink", "lightblue"), main = "Final Percentage Marks", xlab = "Gender", ylab = "Percentage Marks")
