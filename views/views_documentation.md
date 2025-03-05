# FitBit Fitness Dataset - Documented Views

## 1. View: *`ActiveInactiveSteps`* - activeUserView
**Purpose:** 
This view categorizes users as 'Highly Active', 'Moderately Active', or 'Inactive' based on their avergae daily step count.
The view aggregates data from the `dailySteps` table to calculate average step total per user and classifies them accordingly. 
It helps in analyzing user activity patterns, which can be used for segmentation, targeting specific groups for personalized marketing, product recommendations, or engagement strategies based on activity levels.

**Usage:**
This view can be used to:
1. **User Segmentation**: Segment users based on their activity levels to target them with specific marketing campaigns or product features.
2. **Trend Analysis**: Analyze the distribution of users across activity levels and how it changes over time.
3. **Engagement Strategies**: Identify groups that need engagement strategies, like encouraging inactive users to become more active.


## 2. View: *`hourlyStepAverages`* - peakActivityHourView
**Purpose:** 
This view identifies the peak hours of activity based on the average step count per hour.
It aggregates the data from the `hourlySteps` table and calculates the average steps for each hour of the day. 
The view helps identify when users are most active throughout the day, which can be used to optimize engagement strategies, product release features, or marketing campaigns by targeting peak activity times.

**Usage:**
This view can be used to:
1. **Peak Hour Analysis**: Identify the hours during which users are most active, aiding in scheduling notifications, product suggestions, or fitness challenges.
2. **Marketing Optimization**: Optimize marketing campaigns by targeting users during their peak activity times.
3. **Product Usage Trends**: Understand when users are most likely to use  the device or engage with fitness-related features, helping improve product design or features.
