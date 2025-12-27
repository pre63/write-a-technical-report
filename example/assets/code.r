# Code generated with Grok
# Load the women dataset
data(women)

# Calculate BMI
women$bmi <- (women$weight * 703) / (women$height ^ 2)

# Assign binary labels: 0 for BMI < 23 (low), 1 for BMI >= 23 (high)
women$label <- ifelse(women$bmi < 23, 0, 1)

# Set seed for reproducibility
set.seed(42)

# Shuffle indices
indices <- sample(1:nrow(women))

# 70/30 train-test split (11 train, 4 test)
train_indices <- indices[1:11]
test_indices <- indices[12:15]

train_data <- women[train_indices, ]
test_data <- women[test_indices, ]

# Train logistic regression model
model <- glm(label ~ height + weight, data = train_data, family = binomial)

# Predict on training set
train_pred_prob <- predict(model, train_data, type = "response")
train_pred <- ifelse(train_pred_prob > 0.5, 1, 0)

# Training accuracy
train_accuracy <- mean(train_pred == train_data$label)
cat("Training Accuracy:", train_accuracy, "\n")

# Predict on test set
test_pred_prob <- predict(model, test_data, type = "response")
test_pred <- ifelse(test_pred_prob > 0.5, 1, 0)

# Test accuracy
test_accuracy <- mean(test_pred == test_data$label)
cat("Test Accuracy:", test_accuracy, "\n")

# Model summary for coefficients and interpretation
summary(model)