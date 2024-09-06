import pandas as pd
from datetime import datetime

# Function to convert date format
def convert_date_format(date_str):
    return datetime.strptime(date_str, '%d-%b-%y').strftime('%Y-%m-%d')

# Function to modify and save CSV data
def modify_csv_data(csv_file):
    # Read the CSV file into a DataFrame
    df = pd.read_csv(csv_file)
    
    # Check if 'date' column exists and convert its format
    if 'date' in df.columns:
        df['date'] = df['date'].apply(convert_date_format)  # Convert date format
    
    # Save the modified DataFrame back to the CSV file
    df.to_csv(csv_file, index=False)
    print(f"Modified data saved in {csv_file}.")

# Define file paths
csv_files = [
    '/Users/faker/Desktop/Project/datasets/electric_vehicle_sales_by_state.csv',
    '/Users/faker/Desktop/Project/datasets/electric_vehicle_sales_by_makers.csv',
    '/Users/faker/Desktop/Project/datasets/dim_date.csv'
]

# Loop through the files and modify data
for csv_file in csv_files:
    modify_csv_data(csv_file)
