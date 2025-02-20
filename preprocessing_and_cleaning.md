# Data Pre-Processing & Cleaning Documentation

## 1. Overview
This document outlines the steps taken to preprocess and clean the dataset before analysis. The dataset originates from Kaggle and includes information on fitness smart device usage. 
The objective is to ensure the data is clean, consistent, and ready for analysis.

## 2. Data Loading
### 2.1 Source
* **Dataset Name:** FitBit Fitness Tracker Dataset
* **Source:** Kaggle [add link]
* **Format:** Excel

## 3. Excel Preprocessing Steps
The following transformations were performed in Excel before saving the cleaned dataset:
### 3.1 Removing Duplicates
* Used **Data &rarr; Remove Duplicates** feature in Excel
* Duplicate rows were identified and removed based on the ID column
* In Google Sheets: Data &rarr; Data Cleanup &rarr; Remove Duplicates
  * **sleepDay:** 3 duplicate entries were removed

### 3.2 Handling Missing Values
* **weightLogInfo:** The 'Fat' column had only 2 values, so it was removed as it was not necessary for analysis.
* **sleepDay:** 3 rows with no 'Id' or 'SleepDay' were removed as they were not necessary for analysis.

### 3.3 Handling Outliers
* **weightLogInfo:** BMI outlier was examine and found to make sense with the recorded weight.
* **dailySteps:** The highest step count was 36,000 (next highest 29,000). While high, it was determined to be possible and was retained for analysis.
* No other tables contained any significant outliers.

### 3.4 Data Type Conversion
* Converted columns to the appropriate data type
  * Columns with dates converted to **Date**.
  * Columns with dates and timestamps converted to **DateTime**.
  * Columns with decimal numbers converted to **Float**.
  * Columns with non-decimal numbers converted to **Integer**.

### 3.5 Normalization & Scaling
* Reduced all floats to 2 decimal places as full precision was not needed for fitness data.
 
### 3.6 Feature Engineering
* Renamed **heartrate_seconds** to **heartrateSeconds** for consistency with other tables.
* Trimmed white space for all columns across all tables (TRIM function)

## 4. Data Quality Checks
* Ensured consistency in recorded values by checking for logical discrepencies (e.g., activity data aligning with expected patterns, total minutes summing appropriately, and tracker usage variations being reasonable).
* Verified that missing values and zero values were explained by user behavior (e.g., device not being worn, inactivity, recording gaps) which is therefore useful for our analysis.
* Reviewed extreme values and confirmed they were possible based on human activity trends.
* Ensured that derived distance, step, and calorie values followed expected relationships and were internally consistent.

## 5. Summary & Next Steps
* Data cleaning and pre-processing are complete.
* Next steps in exploratory Data Analysis (EDA) and Model Building.

