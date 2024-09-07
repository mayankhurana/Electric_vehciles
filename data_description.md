# Data Description

This document provides an overview of the datasets used in the **Electric Vehicles Sales Prediction** project. These datasets are categorized into **Original Datasets**, **Prediction Datasets**, and **Training Datasets**.

## Datasets Overview

### 1. Original-Datasets

The **Original-Datasets** directory contains the raw data collected from various sources. These datasets are used for initial data cleaning and preprocessing before they are used to train or evaluate the machine learning models.

- **Purpose**: Serve as the starting point for the data processing pipeline.
- **Format**: The datasets are likely in CSV format and contain a mixture of numerical and categorical data related to economic indicators, vehicle sales, and electric vehicle stations.
  
### 2. Prediction-Datasets

The **Prediction-Datasets** directory contains the processed datasets used to generate predictions in the machine learning model. These datasets have undergone various transformations to ensure they are ready for the prediction phase.

- **Purpose**: Input data for generating predictions on electric vehicle sales.
- **Format**: Processed CSV files, including features such as GDP, population, inflation rate, and more.
- **Key Datasets**:
  - **For_EV-Sales**: Contains data used specifically for predicting electric vehicle sales.
  - **For_GDP**: GDP data used as one of the features for prediction.
  - **For_Inflation_Rate**: Contains inflation rate data used as a predictive feature.
  - **For_Petroleum**: Petroleum data, possibly used as a comparative feature to electric vehicle data.

### 3. Training-Datasets

The **Training-Datasets** directory contains cleaned and transformed data that is ready to be used for training the machine learning models. These datasets are created from the original datasets after data cleaning, feature engineering, and formatting.

- **Purpose**: Provide clean, structured data for training the machine learning models.
- **Format**: CSV files containing structured, ready-to-use data.
  
### 4. Predicted_EV_Sales.csv

This file contains the precomputed predictions of electric vehicle sales. It serves as an output of the machine learning model and allows for easy reference without rerunning the model.

- **Purpose**: Store the predicted sales data based on the trained model.
- **Format**: CSV file with columns such as predicted sales, date, region, etc.

## Data Processing Steps

The datasets undergo the following key steps:
1. **Data Cleaning**: Remove or handle missing values, correct inconsistencies in the data, and standardize formats (e.g., date formats).
2. **Feature Engineering**: Create new features from raw data to improve the model's predictive performance (e.g., creating decade-based data from years).
3. **Data Splitting**: Separate the data into training and prediction datasets for model training and evaluation.

## Notes on Data Sources

- The **Original-Datasets** may have been sourced from public or proprietary data providers such as government statistics, economic reports, and automotive industry reports.
- Data cleaning and feature extraction is performed using Python scripts in the `Codes/Data Cleaning and Interpolation` directory.

## Important Files

- **Sales.db**: A SQLite database containing historical vehicle sales data, which is used in SQL queries for analysis and transformation.
- **E-Vehicles.twbx**: Tableau workbook used for visualizing key insights from the datasets.

---

For any additional questions about the datasets or their structure, refer to the Python and SQL scripts in the `Codes` directory or contact the project contributors.
