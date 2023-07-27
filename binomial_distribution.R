# A class has a student strength of 50 students. The marks obtained (out of 100) by the students 
# of the class are as per the binomial distribution. You should create the sample data of marks 
# for the 50 students using binomial distribution. Convert these marks to grades as follows:
#  <40 D
# =>40 but < 60 C
# =>60 but < 80 B
# => 80 A
# Also, create random data for seriousness towards studies having the categories: Very Serious, 
# Serious, Not Serious. Use chi-square testing to determine, if there is a relation between the 
# seriousness towards learning to Grades of student, as per your data. Show and explain the 
# results.

# Step 1: Set the seed for reproducibility
set.seed(123)

# Step 2: Generate sample data for marks using binomial distribution
marks <- rbinom(50, size = 100, prob = 0.7)  # Assuming success probability of 0.7

# Step 3: Convert marks to grades
grades <- cut(marks, breaks = c(0, 40, 60, 80, 100), labels = c("D", "C", "B", "A"))

# Step 4: Generate random data for seriousness towards studies
seriousness <- sample(c("Very Serious", "Serious", "Not Serious"), size = 50, replace = TRUE)

# Step 5: Create a contingency table for chi-square testing
contingency_table <- table(grades, seriousness)

# Step 6: Perform chi-square test
chi_sq_test <- chisq.test(contingency_table)

# Step 7: Print the results
cat("Sample Data for Marks (First 10 students):\n")
print(marks[1:10])

cat("\nGrades (First 10 students):\n")
print(grades[1:10])

cat("\nRandom Data for Seriousness (First 10 students):\n")
print(seriousness[1:10])

cat("\nContingency Table:\n")
print(contingency_table)

cat("\nChi-Square Test Results:\n")
print(chi_sq_test)
