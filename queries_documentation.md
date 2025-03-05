# FitBit Data Analysis - Query Documentation

## 1. Active Users by Week ('queries/weekly_active_users.sql')
**Purpose:**
Idenitifies the number of active users each week based on recorded activity
**Query Breakdown:**
* Extracts the 'ActivityDate' and formats it into weeks.
* Counts the unique users who logged activity for that week.
**Usage in R:**
  This will be visualized as a line chart to show trends in user engagement.

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
**Usage in R:**
 Used to create scatter plots and trend lines to explore potential patterns.

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


## 4. Group Users by Activity Level ('queries/.sql')
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
 
