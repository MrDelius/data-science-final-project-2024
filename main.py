import pandas as pd

file_path = r'C:\Users\user\Desktop\files\mobile_sales.csv'
df = pd.read_csv(file_path, delimiter=',')  # Adjust delimiter if needed

# Drop rows with any NaN values
df_cleaned = df.dropna()

# Save the cleaned DataFrame to a new CSV file
output_file_path = r'C:\Users\user\Desktop\files\mobile_sales_cleaned.csv'
df_cleaned.to_csv(output_file_path, index=False)