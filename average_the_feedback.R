# It is always good to store numerical values rather than textual data. However, while input or 
# output the textual values are easier to understand. An example, for this is as follows in R:
# > Fivepointscale=c(1:5)
# > names(Fivepointscale) = c("Not Satisfactory", "Satisfactory", "Fair", "Good", "Very 
# Good")
# > Feedback = Fivepointscale[c("Good", "Satisfactory")]
# Create a 7-point scale of information input and use this scale to input feedback of 5 students 
# about a question like “Feedback of experience of using an application (Bad, Somewhat bad,not good, ok, good, very good, excellent)”. Find the average of the feedback


# Create a 7-point scale for feedback
Sevenpointscale <- c("Bad", "Somewhat bad", "Not good", "OK", "Good", "Very good", "Excellent")

# Input feedback of 5 students using the 7-point scale
# Let's assume the feedback for each student is as follows:
student1_feedback <- "Good"
student2_feedback <- "Very good"
student3_feedback <- "OK"
student4_feedback <- "Not good"
student5_feedback <- "Good"

# Calculate the average feedback
# To calculate the average, we need to convert the feedback to numerical values first
# We can use match() to find the indices of the feedback in the Sevenpointscale vector
feedback_values <- match(c(student1_feedback, student2_feedback, student3_feedback, student4_feedback, student5_feedback), Sevenpointscale)

# Calculate the average feedback value
average_feedback <- mean(feedback_values)

# Print the feedback values and the average feedback
cat("Feedback values of students:", c(student1_feedback, student2_feedback, student3_feedback, student4_feedback, student5_feedback), "\n")
cat("Feedback values (numerical):", feedback_values, "\n")
cat("Average feedback:", average_feedback, "\n")

# Output:
# Feedback values of students: Good Very good OK Not good Good 
# Feedback values (numerical): 5 6 4 3 5 
# Average feedback: 4.6 
