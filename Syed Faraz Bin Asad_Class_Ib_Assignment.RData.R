# Script: data_conversions.R
# Purpose: Set working directory, perform basic data type conversions, and save results

# Step 1: Set the working directory
# Replace with your actual project folder path (use / or \\ for Windows)
setwd("C:/Users/92318/OneDrive/Documents/MEGA X")

# Verify the working directory
cat("Current working directory:", getwd(), "\n\n")

# Step 2: Create a sample dataset
data <- data.frame(
  id = c(1, 2, 3, 4),                      # Numeric
  name = c("Alice", "Bob", "Charlie", "Diana"),  # Character
  score = c("85", "92", "78", "95"),       # Character (to be converted to numeric)
  active = c(TRUE, FALSE, TRUE, FALSE)     # Logical
)

# Display the original dataset
cat("Original dataset:\n")
print(data)

# Check initial data types
cat("\nInitial data types:\n")
str(data)

# Step 3: Perform data type conversions

# Conversion 1: Character to numeric (score column)
data$score <- as.numeric(data$score)
cat("\nAfter converting 'score' to numeric:\n")
str(data)

# Conversion 2: Character to factor (name column)
data$name <- as.factor(data$name)
cat("\nAfter converting 'name' to factor:\n")
str(data)

# Conversion 3: Numeric to character (id column)
data$id <- as.character(data$id)
cat("\nAfter converting 'id' to character:\n")
str(data)

# Conversion 4: Logical to numeric (active column, TRUE=1, FALSE=0)
data$active <- as.numeric(data$active)
cat("\nAfter converting 'active' to numeric:\n")
str(data)

# Step 4: Save the modified dataset to a CSV file
write.csv(data, "converted_data.csv", row.names = FALSE)
cat("\nData saved as 'converted_data.csv' in the working directory:\n")
cat(getwd(), "\n")

# Optional: Basic error checking
# Check for NAs introduced during numeric conversion (none expected here)
if (any(is.na(data$score))) {
  cat("\nWarning: Some values in 'score' could not be converted to numeric.\n")
} else {
  cat("\nNo NAs detected in 'score' after conversion.\n")
}

