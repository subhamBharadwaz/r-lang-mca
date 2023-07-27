# Create a long string of words separated by punctuation marks. Replace all the punctuation 
# marks in the string using gsub("[[:punct:]]", "", stringName) function. Find the number of 
# words in the string without punctuation marks. Find the number of distinct words and its 
# count, if possible.

# Create a long string of words separated by punctuation marks
long_string <- "This is a long string, with lots of words! It includes commas, periods. And some more punctuation marks?"

# Replace all punctuation marks with an empty string using gsub()
cleaned_string <- gsub("[[:punct:]]", "", long_string)

# Find the number of words in the string without punctuation marks
word_count_without_punctuation <- length(strsplit(cleaned_string, "\\s+")[[1]])

# Find the number of distinct words and their counts
words_vector <- strsplit(cleaned_string, "\\s+")
distinct_words_count <- table(unlist(words_vector))

# Print the cleaned string and the results
cat("Original long string:", long_string, "\n")
cat("Cleaned string (without punctuation marks):", cleaned_string, "\n")
cat("Number of words without punctuation marks:", word_count_without_punctuation, "\n")
cat("Distinct words and their counts:\n")
print(distinct_words_count)
