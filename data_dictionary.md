# Data Dictionary
This document describes the structure and contents of the FitBit Fitness Tracker dataset used in this case study.

## 1. Daily Activity Data ('dailyActivity.csv')
**Description:** Logs of daily steps, distance covered, calories burned, and active minutes.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| 'Id'        | Integer    | Unique identifier for each user |
| 'ActivityDate' | Date    | Date of recorded activity |
| 'TotalSteps'  | Integer  | Total steps taken that day |
| 'TotalDistance' |  Float  | Total distance (in miles) covered that day |
| 'Calories'  | Integer  | Total calories burned that day |
| 'VeryActiveMinutes'  | Integer  | Time spent in very active intensity (minutes) |
| 'FairlyActiveMinutes'  | Integer  | Time spent in fairly active intensity (minutes) |
| 'LightlyActiveMinutes'  | Integer  | Time spent in lightly active intensity (minutes) |
| 'SedentaryMinutes'  | Integer  | Time spent sedentary (minutes) |

---

## 2. Daily Calories Data ('dailyCalories.csv')
**Description:** Logs of daily total calories burned.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| 'Id'        | Integer    | Unique identifier for each user |
| 'ActivityDay' | Date    | Date of recorded activity |
| 'Calories'  | Integer  | Total calories burned |

## 3. Daily Steps Data ('dailySteps.csv')
**Description:** Logs of daily total steps taken.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| 'Id'        | Integer    | Unique identifier for each user |
| 'ActivityDay' | Date    | Date of recorded activity |
| 'StepTotal'  | Integer  | Total steps taken |

## 4. Daily Intensities Data ('dailyIntensities.csv')
**Description:** Logs of minutes and distance for very, fairly, light, and sedentary activity.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| 'Id'        | Integer    | Unique identifier for each user |
| 'ActivityDay' | Date    | Date of recorded activity |
| 'SedentaryMinutes'  | Integer  | Time spent sedentary (minutes) |
| 'LightlyActiveMinutes' |  Integer  | Time spent in light activity (minutes) |
| 'FairlyActiveMinutes'  | Integer  | Time spent in moderate activity (minutes) |
| 'VeryActiveMinutes'  | Integer  | Time spent in intense activity (minutes) |
| 'SedentaryDistance'  | Integer  | Total distance spent sedentary |
| 'LightlyActivDistance' |  Integer  | Total lightly active distance |
| 'FairlyActiveDistance'  | Integer  | Total fairly active distance |
| 'VeryActiveDistance'  | Integer  | Distance spent in intense activity (miles) |

## 5. Daily Sleep Data ('sleepDay.csv')
**Description:** Logs daily sleep patterns.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| 'Id'        | Integer    | Unique identifier for each user |
| 'SleepDay' | DateTime    | Date of recorded sleep data |
| 'TotalSleepRecords'  | Integer  | Number of sleep sessions per day  |
| 'TotalMinutesAsleep' |  Integer  | Total minutes user spent sleeping that day |
| 'TotalTimeInBed'  | Integer  | Total minutes (awake or asleep) user spent in bed that day |

## 6. Hourly Activity Data ('hourlySteps.csv', 'hourlyCalories.csv', 'hourlyIntensities.csv')
**Description:** Logs of hourly records of steps, calories burned, and activity intensity.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| 'Id'        | Integer    | Unique identifier for each user |
| 'ActivityHour' | DateTime    | Timestamp of recorded activity |
| 'StepTotal'  | Integer  | Total steps taken that hour  |
| 'Calories' |  Integer  | Total calories burned that hour |
| 'TotalIntensity'  | Integer  | Sum of intensity levels for that hour |
| 'AverageIntensity'  | Float  | Average intensity during the hour |

## 7. Minute-Level Activity Data ('minuteSteps.csv', 'minuteCalories.csv', 'minuteIntensities.csv')
**Description:** Logs of minute-by-minute steps, calories burned, and intensity levels.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| 'Id'        | Integer    | Unique identifier for each user |
| 'ActivityMinute' | DateTime    | Timestamp of recorded activity |
| 'StepTotal'  | Integer  | Total steps taken that minute  |
| 'Calories' |  Integer  | Total calories burned that minute |
| 'TotalIntensity'  | Integer  | Intensity level at that minute |

## 8. Heart Rate Data ('heartrateSeconds.csv')
**Description:** Second-level heart rate recordings.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| 'Id'        | Integer    | Unique identifier for each user |
| 'Time' | DateTime    | Timestamp of heart rate recording |
| 'Value'  | Integer  | Recorded heart rate (bpm) |

## 9. Weight Log Data ('weightLogInfo.csv')
**Description:** Logs data about users recorded weight over time.

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| 'Id'        | Integer    | Unique identifier for each user |
| 'Date' | DateTime    | Timestamp of weight recording |
| 'WeightKg'  | Float  | Users weight in kilograms |
| 'WeightPounds'  | Float  | Users weight in pounds |
| 'BMI'  | Float  | Body mass index calculated for each log entry |
| 'IsManualReport'  | Boolean | Shows TRUE if user manually reported and FALSE if they did not |
| 'LogId'  | Integer  | A unique identifier that groups related weight log entries |


### Notes
This dataset also contains wide data for the minute-level datasets. For this analysis, we focus on narrow (long) data instead of wide data because it provides granular, time-based insights into user behavior.
Narrow data allows us to track activity trends at the **minute and hourly level**, helping identify patterns in movement, sleep, and heart rate. Unlike wide data, which aggregates values into daily summaries, narrow data offers more **flexibility for trend analysis** and ensures a detailed, accurate representation of user engagement.

This approach enables Bellabeat to make more data-driven marketing decisions based on real usage patterns.

* The minuteMETs.csv file was left out of this case study because it is not relevant to the business task. Bellabeat's focus is on consumer behavior and smart device usage, while energy expenditure (METs) is more relevant for sports science or medical studies. METs values can often be inferred from **intensity levels and calorie burn**, making the table unnecessary.

* * minuteSleep I dont want to use
