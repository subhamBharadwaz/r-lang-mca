# Create a table of showing the States of 20 students, assume these students stay in 5 different 
# states. Now create a factor of these states and then compute the frequency of each factor 
# (Hint: You may use factor() and tapply() functions)

# Create a table of states for 20 students (Assuming 5 different states)
student_states <- sample(c("California", "Texas", "New York", "Florida", "Illinois"), size = 20, replace = TRUE)

# Convert the states to a factor
student_states_factor <- factor(student_states)

# Compute the frequency of each factor (state)
state_frequency <- tapply(student_states_factor, student_states_factor, length)

# Create a data frame to display the results
state_frequency_df <- data.frame(State = names(state_frequency), Frequency = state_frequency)

# Print the table of state frequencies
cat("Table of State Frequencies:\n")
print(state_frequency_df)
