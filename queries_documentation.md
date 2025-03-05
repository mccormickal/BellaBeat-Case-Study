# FitBit Data Analysis - Query Documentation

## 1. Active Users by Week ('queries/weekly_active_users.sql')
**Purpose:**
Tracks user activity on a weekly basis, counting the number of distinct active users per week.
It helps understand user engagement and activity trends over time.

**Tables Used:**
1. `dailyActivity` - Contains daily activity records for each user.
   
**Key Metrics:**
* `AcitvityWeek` - The week in which the activity occurrred (formatted as Year-Month-Week).
* `ActiveUsers` - The number of distinct users who were active in each week.
  
**Query Breakdown:**
* Extracts the 'ActivityDate' field and formats it into weeks.
* Counts the udistinct number of users who logged activity for that week.
* Groups the data by week to aggregate activity at the weekly level.


## 2. Sleep vs. Steps ('queries/sleep_vs_steps.sql')
**Purpose:**
Analyzes the impact sleep duration has on step count and identifies the potential relationships between sleep and activity levels.

**Tables Used:**
1. `sleepDay` - Contains user sleep records, including total sleep duration
2. `dailySteps` - Contains users' total steps per day
   
**Key Metrics:**
* `AvgDailySteps` - The average number of steps taken per day per user.
* `AvgSleepMinutes` - The average minutes asleep per user.
  
**Query Breakdown:**
* Joins `sleepDay` and `dailySteps` on `Id` and `ActivityDate`.
* Computes average sleep minutes and step count per user.
* Calculates correlation between sleep and steps.


## 3. Active vs. Inactive Users ('queries/.sql')
**Purpose:**
Categorizes users into different activity levels based on daily step counts.
This helps with understanding user engagement with fitness tracking and identifying inactive users who may need more motivation.

**Tables Used:**
1. `dailySteps` - Contains users' total steps per day.
   
**Key Metrics:**
* `AvgDailySteps` - The average number of steps taken per day per user.
* `ActivityLevel` - The assigned category based on step count.
  
**Query Breakdown:**
* Calculates and rounds the average daily step count per user.
* Assigns users into activity categories based on step count.
* Groups data by user to calculate averages.


## 4. User Segmentation Based on Activity Levels ('queries/.sql')
**Purpose:**
Segments users into different activity levels based on total active minutes in very active, fairly active, and lightly active categories.
This helps find patterns in intensity levels across all users.

**Tables Used:**
1. `dailyIntensities` - Contains data for users' active mintutes in various intensity levels.
   
**Key Metrics:**
* `AvgActiveMinutes` - The average total of active minutes per user.
* `ActivitySegment` - The assigned category based on very active minutes.
  
**Query Breakdown:**
* Sums the active minutes from different intensity levels and calculates the average for each user.
* Classifies users based on their minutes into "Highly Active", "Moderately Active", or "Low Activity".
* Groups data by user to calculate the average active minutes for each.


## 5. Group Users by Activity Level ('queries/.sql')
**Purpose:**
Groups users based on thier activity levels and calculates the total active minutes per segment. 
This helps analyze which activity segment contributes the most to the overall active time.

**Tables Used:**
1. `segmentedActivityLevels` - Contains user activity data categorized into segments.
   
**Key Metrics:**
* `ActivitySegment` - Predefined categories of activity levels
* `SUM(AvgActiveMinutes)` - Total active minutes summed for each activity segment.
  
**Query Breakdown:**
* Sum up total active minutes for each activity segment.
* Groups data by activity category


## 6. Peak Activity Hours ('queries/.sql')
**Purpose:**
Identifies the peak hours during the day when users are most active, based on the average number of steps taken during each hour.

**Tables Used:**
1. `hourlySteps` - Contains the step count data for each hour of the day.
   
**Key Metrics:**
* `Hour` - The hour of the day (24-hour format).
* `AvgSteps` - The average number of steps taken during that hour.
  
**Query Breakdown:**
* Extracts the hour from the `ActivityHour` field.
* Calculates and rounds the average number of steps taken each hour.
* Groups the data by hour to calculate average steps for each hour.


## 7. Peak Activity Days of Week ('queries/.sql')
**Purpose:**
Identifies which days of the week users are most active based on their average daily step count.
It helps understand user behavior and identify peak activity days.

**Tables Used:**
1. `dailySteps` - Contains users' total steps per day.
   
**Key Metrics:**
* `DayOfWeek` - The day of the week when the activity occurred.
* `AvgSteps` - The average number of steps taken during that hour.
  
**Query Breakdown:**
* Extracts the full week day name from `ActivityDate`.
* Calculates and rounds the average number of steps taken on each day.
* Groups the data by day of week to calculate average steps for each day.
