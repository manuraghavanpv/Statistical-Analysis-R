# Step 1: Define the observed frequencies
# Suppose we have observed frequencies of eye colors: brown (50), blue (30), green (20), and other (10)
observed <- c(50, 30, 20, 10)

# Step 2: Define the expected frequencies (hypothesized distribution)
# Let's assume a hypothesized distribution where brown is expected to be 40%, blue 30%, green 20%, and other 10%
total <- sum(observed)
expected <- total * c(0.4, 0.3, 0.2, 0.1)

# Step 3: Conduct the chi-square test for goodness of fit
# Use the chisq.test() function to perform the chi-square test
chi_sq_test <- chisq.test(observed, p = c(0.4, 0.3, 0.2, 0.1))

# Step 4: Interpret the results
# Print the results of the chi-square test
print(chi_sq_test)