import sqlite3
import pandas as pd

from datetime import datetime

# Function to convert date format
def convert_date_format(date_str):
    return datetime.strptime(date_str, '%d-%b-%y').strftime('%Y-%m-%d')

# Connect to SQLite database (or create it if it doesn't exist)
conn = sqlite3.connect('/Users/faker/Desktop/Project/Sales.db')

# Import and convert CSV data
def import_csv_to_table(csv_file, table_name, conn):
    df = pd.read_csv(csv_file)
    if 'date' in df.columns:
        df['date'] = df['date'].apply(convert_date_format)  # Convert date format
    df.to_sql(table_name, conn, if_exists='replace', index=False)
    print(f"Imported data from {csv_file} into {table_name}.")

# Define file paths and table names
csv_files = [
    ('/Users/faker/Desktop/Project/datasets/electric_vehicle_sales_by_state.csv', 'state'),
    ('/Users/faker/Desktop/Project/datasets/electric_vehicle_sales_by_makers.csv', 'makers'),
    ('/Users/faker/Desktop/Project/datasets/dim_date.csv', 'dim_date')
]

# Loop through the files and import data
for csv_file, table_name in csv_files:
    import_csv_to_table(csv_file, table_name, conn)

# Commit changes and close the connection
conn.commit()
conn.close()
