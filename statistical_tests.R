
anova_results <- aov(Sepal.Length ~ Species, data = iris)

# Display ANOVA results
cat("\n========================================\n")
cat("ANOVA Results: Sepal Length by Species\n")
cat("========================================\n")
print(summary(anova_results))
cat("\n")

correlation_results <- cor.test(mtcars$hp, mtcars$mpg)

# Display correlation test results
cat("\n========================================\n")
cat("Correlation Test: Horsepower vs MPG\n")
cat("========================================\n")
print(correlation_results)
cat("\n")

# Extract and display key statistics
cat("Key Statistics:\n")
cat("  Correlation coefficient (r):", round(correlation_results$estimate, 4), "\n")
cat("  P-value:", format(correlation_results$p.value, scientific = TRUE), "\n")
cat("  95% Confidence Interval: [", 
    round(correlation_results$conf.int[1], 4), ", ", 
    round(correlation_results$conf.int[2], 4), "]\n")
cat("\n")

