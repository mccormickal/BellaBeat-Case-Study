# FitBit Data Analysis - Query Documentation

## 1. Active vs. Inactive Users - *`'active_users.sql'`*
**Purpose:**
Categorizes users into different activity levels based on daily step counts.
This helps with understanding user engagement with fitness tracking and identifying inactive users who may need more motivation.

**Tables Used:**
1. `dailySteps` - Contains users' total steps per day.
   
**Key Metrics:**
1. `AvgDailySteps` - The average number of steps taken per day per user.
2. `ActivityLevel` - The assigned category based on step count.
  
**Query Breakdown:**
* Calculates and rounds the average daily step count per user.
* Assigns users into activity categories based on step count.
* Groups data by user to calculate averages.
<br/>
<br/>


## 2. Peak Activity Hours - *`'avg_hourly_steps.sql'`*
**Purpose:**
Identifies the peak hours during the day when users are most active, based on the average number of steps taken during each hour.

**Tables Used:**
1. `hourlySteps` - Contains the step count data for each hour of the day.
   
**Key Metrics:**
1. `Hour` - The hour of the day (24-hour format).
2. `AvgSteps` - The average number of steps taken during that hour.
  
**Query Breakdown:**
* Extracts the hour from the `ActivityHour` field.
* Calculates and rounds the average number of steps taken each hour.
* Groups the data by hour to calculate average steps for each hour.
<br/>
<br/>


## 3. Group Users by Activity Level - *`'avg_segment_minutes.sql'`*
**Purpose:**
Groups users based on thier activity levels and calculates the total active minutes per segment. 
This helps analyze which activity segment contributes the most to the overall active time.

**Tables Used:**
1. `segmentedActivityLevels` - Contains user activity data categorized into segments.
   
**Key Metrics:**
1. `ActivitySegment` - Predefined categories of activity levels.
2. `SUM(AvgActiveMinutes)` - Total active minutes summed for each activity segment.
  
**Query Breakdown:**
* Sum up total active minutes for each activity segment.
* Groups data by activity category.
<br/>
<br/>


## 4. Peak Activity Days of Week - *`'avg_weekday_steps.sql'`*
**Purpose:**
Identifies which days of the week users are most active based on their average daily step count.
It helps understand user behavior and identify peak activity days.

**Tables Used:**
1. `dailySteps` - Contains users' total steps per day.
   
**Key Metrics:**
1. `DayOfWeek` - The day of the week when the activity occurred.
2. `AvgSteps` - The average number of steps taken during that hour.
  
**Query Breakdown:**
* Extracts the full week day name from `ActivityDate`.
* Calculates and rounds the average number of steps taken on each day.
* Groups the data by day of week to calculate average steps for each day.
<br/>
<br/>

## 5. Active Users by Week - *`'num_weekly_users.sql'`*
**Purpose:**
Tracks user activity on a weekly basis, counting the number of distinct active users per week.
It helps understand user engagement and activity trends over time.

**Tables Used:**
1. `dailyActivity` - Contains daily activity records for each user.
   
**Key Metrics:**
1. `AcitvityWeek` - The week in which the activity occurrred (formatted as Year-Month-Week).
2. `ActiveUsers` - The number of distinct users who were active in each week.

**Query Breakdown:**
* Extracts the `ActivityDate` field and formats it into weeks.
* Counts the udistinct number of users who logged activity for that week.
* Groups the data by week to aggregate activity at the weekly level.
<br/>
<br/>


## 6. Group Users Based on Daily Smart Device Usage - *`'device_usage_minutes.sql'`*
**Purpose:**
Groups users based on how many minutes per day they wear their smart device, helping to identify how many users fall into different usage categories.
This helps understand user engagement with the smart device and inform marketing efforts aimed at increasing device usage.

**Tables Used:**
1. `dailyActivity` - Contains daily activity records for each user.
   
**Key Metrics:**
1. `MinuteRange` - The range of minutes (in increments of 60 minutes) that users wear the smart device.
2. `NumUsers` - The count of users within each range of smart device usage.
  
**Query Breakdown:**
* Counts the number of users in each minute range.
* Divides total minutes by 60, floors the result to the nearest lower integer, and multiplies by 60 to create minute ranges (e.g., 0-60, 61-120).
* Groups users based on their smart device usage in the specified minute ranges.
<br/>
<br/>

## 7. Sleep vs. Steps - *`'sleep_vs_steps.sql'`*
**Purpose:**
Analyzes the impact sleep duration has on step count and identifies the potential relationships between sleep and activity levels.

**Tables Used:**
1. `sleepDay` - Contains user sleep records, including total sleep duration.
2. `dailySteps` - Contains users' total steps per day.
   
**Key Metrics:**
1. `AvgDailySteps` - The average number of steps taken per day per user.
2. `AvgSleepMinutes` - The average minutes asleep per user.
  
**Query Breakdown:**
* Joins `sleepDay` and `dailySteps` on `Id` and `ActivityDate`.
* Computes average sleep minutes and step count per user.
* Calculates correlation between sleep and steps.
<br/>
<br/>


## 8. User Segmentation Based on Activity Levels - *`'user_activity_levels.sql'`*
**Purpose:**
Segments users into different activity levels based on total active minutes in very active, fairly active, and lightly active categories.
This helps find patterns in intensity levels across all users.

**Tables Used:**
1. `dailyIntensities` - Contains data for users' active mintutes in various intensity levels.
   
**Key Metrics:**
1. `AvgActiveMinutes` - The average total of active minutes per user.
2. `ActivitySegment` - The assigned category based on very active minutes.
  
**Query Breakdown:**
* Sums the active minutes from different intensity levels and calculates the average for each user.
* Classifies users based on their minutes into "Highly Active", "Moderately Active", or "Low Activity".
* Groups data by user to calculate the average active minutes for each.
<br/>
<br/>



