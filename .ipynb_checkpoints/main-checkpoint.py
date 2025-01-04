import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

# Simulating residuals
np.random.seed(42)

# Overfitting: Residuals clustered around zero
residuals_overfit = np.random.normal(loc=0, scale=0.2, size=1000)

# Underfitting: Wide residual distribution
residuals_underfit = np.random.normal(loc=0, scale=2, size=1000)

# Balanced: Bell-shaped distribution centered around zero
residuals_balanced = np.random.normal(loc=0, scale=1, size=1000)

# Plotting histograms
plt.figure(figsize=(15, 5))

# Overfitting
plt.subplot(1, 3, 1)
sns.histplot(residuals_overfit, kde=True, bins=30, color='blue')
plt.title("Overfitting Residuals")
plt.xlabel("Residuals")
plt.ylabel("Frequency")

# Underfitting
plt.subplot(1, 3, 2)
sns.histplot(residuals_underfit, kde=True, bins=30, color='red')
plt.title("Underfitting Residuals")
plt.xlabel("Residuals")
plt.ylabel("Frequency")

# Balanced Model
plt.subplot(1, 3, 3)
sns.histplot(residuals_balanced, kde=True, bins=30, color='green')
plt.title("Balanced Model Residuals")
plt.xlabel("Residuals")
plt.ylabel("Frequency")

plt.tight_layout()
plt.show()