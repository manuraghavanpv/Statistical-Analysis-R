# Step 1: Create a contingency table
# Suppose we have observed frequencies of car colors (red, blue, green) in two different cities (City A, City B)
# Create a data frame with the observed frequencies
data <- data.frame(
  City = c(rep("City A", 100), rep("City B", 120)),
  Car_Color = c(sample(c("Red", "Blue", "Green"), 100, replace = TRUE), 
                sample(c("Red", "Blue", "Green"), 120, replace = TRUE))
)

# Create a contingency table
contingency_table <- table(data$City, data$Car_Color)
print(contingency_table)

# Step 2: Conduct the chi-square test for homogeneity
# Use the chisq.test() function with the argument correct = FALSE to perform the chi-square test
chi_sq_test <- chisq.test(contingency_table, correct = FALSE)

# Step 3: Interpret the results
# Print the results of the chi-square test
print(chi_sq_test)