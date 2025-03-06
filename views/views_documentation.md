# FitBit Fitness Dataset - Documented Views

## 1. View: *`activeUserView.csv`*
**Purpose:** 
This view categorizes users as 'Highly Active', 'Moderately Active', or 'Inactive' based on their avergae daily step count.
The view aggregates data from the `dailySteps` table to calculate average step total per user and classifies them accordingly. 
It helps in analyzing user activity patterns, which can be used for segmentation, targeting specific groups for personalized marketing, product recommendations, or engagement strategies based on activity levels.

**Usage:**
This view can be used to:
1. **User Segmentation**: Segment users based on their activity levels to target them with specific marketing campaigns or product features.
2. **Trend Analysis**: Analyze the distribution of users across activity levels and how it changes over time.
3. **Engagement Strategies**: Identify groups that need engagement strategies, like encouraging inactive users to become more active.

--

## 2. View: *`hourlyStepsView.csv`*
**Purpose:** 
This view identifies the peak hours of activity based on the average step count per hour.
It aggregates the data from the `hourlySteps` table and calculates the average steps for each hour of the day. 
The view helps identify when users are most active throughout the day, which can be used to optimize engagement strategies, product release features, or marketing campaigns by targeting peak activity times.

**Usage:**
This view can be used to:
1. **Peak Hour Analysis**: Identify the hours during which users are most active, aiding in scheduling notifications, product suggestions, or fitness challenges.
2. **Marketing Optimization**: Optimize marketing campaigns by targeting users during their peak activity times.
3. **Product Usage Trends**: Understand when users are most likely to use  the device or engage with fitness-related features, helping improve product design or features.

--

## 3. View: *`segmentedMinutesView.csv`*
**Purpose:** 
This view groups together users based on their average intensity level: Low Activity, Moderately Active, or Highly Active.
It aggregates data from the `userActivityLevelsView` table and calculates the total duration each group of users spends being active.
This view helps understand user behavior, engagement levels, and trends in physical activity.

**Usage:**
This view can be used to:
1. **User Engagement Analysis**: Identify how much time different activity level groups spend being active, aiding in personalized recommendations and user engagement strategies.
2. **Product Feature Enhancement**: Understand how users interact with their fitness devices and optimize product features to encourage higher activity levels.

--

## 4. View: *`sleepStepsCorrView.csv`*
**Purpose:** 
This view analyzes the relationship between sleep duration and daily step count for individual users.
It aggregates data on average sleep minutes, average daily steps, and the correlation between those two variables.
This view helps understand how sleep patterns may influence physical activity levels, offering insights for health recommendations, product improvements, and personalized engagement strategies.

**Usage:**
This view can be used to:
1. **Behavioral Insights**: Identify trends between sleep duration and activity levels, helping users optimize their fitness and wellness routines.
2. **Personalized Recommendations**: Suggest tailored sleep and activity goals based on individual sleep-step correlations.
3. **Product Enhancements**: Improve smart device features by integrating sleep-activity insights into notifications, coaching programs,or fitness challenges.
4. **Marketing Stragegy**: Target users with relevant content based on their sleep and activity behavior.

--
