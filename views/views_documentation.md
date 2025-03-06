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

## 2. View: *`deviceUsageView.csv`*
**Purpose:** 
This view groups together users based their daily smart device usage, measured in minutes, from the `dailyActivity` table.
It groups users into ranges of 60 minutes based on the total number of recorded minutes their device shows each day.
This helps analyze user engagement, identify trends in device usage, and optimize product features on marketing strategies to improve retention and user experience.

**Usage:**
This view can be used to:
1. **User Engagement Analysis**: Understand how odten users wear their smart devices, identifying highly engaged users versus those who need re-engagement.
2. **Product Optimization**: Improve device features, such as battery life, comfort, and wearability, based on user wear-time trends.
3. **Marketing Strategy**: Target users with personlized content, promotions, or engagement campaigns based on their device usage patterns.
4. **Feature Enhancement**: Develop adaptive notifications, reminders, or insights based on how frequently users wear their devices.

--

## 3. View: *`hourlyStepsView.csv`*
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

## 4. View: *`segmentedMinutesView.csv`*
**Purpose:** 
This view groups together users based on their average intensity level: Low Activity, Moderately Active, or Highly Active.
It aggregates data from the `userActivityLevelsView` table and calculates the total duration each group of users spends being active.
This view helps understand user behavior, engagement levels, and trends in physical activity.

**Usage:**
This view can be used to:
1. **User Engagement Analysis**: Identify how much time different activity level groups spend being active, aiding in personalized recommendations and user engagement strategies.
2. **Product Feature Enhancement**: Understand how users interact with their fitness devices and optimize product features to encourage higher activity levels.

--

## 5. View: *`sleepStepsCorrView.csv`*
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

## 6. View: *`userActivityLevelsView.csv`*
**Purpose:** 
This view categorizes users based on their average daily active minutes and intensities, grouping them into Low Activity, Moderately Active, and Highly Active segments. 
It provides insights into user activity levels, helping understand engagement patterns and tailor strategies accordingly.

**Usage:**
This view can be used to:
1. **User Behavior Analysis**: Identify trends in user activity levels to develop targeted engagement strategies.
2. **Personalized Recommendations**: Suggest tailored fitness challenges, workout suggestions, or motivational prompts based on activity levels.
3. **Marketing & Promotions**: Design marketing campaigns that cater to different activity segments, such as promoting beginner-friendly programs as well as advanced features.
4. **Product Development**: Enhance smart device functionalities to better serve users across different activity levels, improving retention and satisfaction.

--

## 7. View: *`weekdayStepsView.csv`*
**Purpose:** 
This view analyzes average daily step counts across different days of the week.
It helps identify patterns in user activity based on the day, providing insights into when users are the most and least active. 
These trends can inform engagement strategies, product enhancements, and marketing initiatives.

**Usage:**
This view can be used to:
1. **Activity Trend Analysis**: Understand which days users are most active, allowing for optimized scheduling of fitness challenges, reminders, or content release.
2. **Behavioral Insights**: Help users recognize their own step trends, encouraging them to stay active throughout the week.
3. **Marketing Optimization**: Tailor promotional campaigns based on user activity trends, such as offering step-based incentives on lower-activity days.
4. **Product Development**: Improve smart device features by integrating weekly step trends into personalized insights, coaching programs, or goal-setting recommendations.

--

## 8. View: *`weeklyUsersView.csv`*
**Purpose:** 
This view tracks the number of active users over 5 different weeks, providing insights into user engagement trends over time.
By analyzing fluctuations in active users, the company can assess user retention, engagement effectiveness, and the impact of product features or marketing efforts.

**Usage:**
This view can be used to:
1. **User Engagement Monitoring**: Identify trends in active user participation over time, helping track retention and engagement levels.
2. **Marketing Performance Evaluation**: Assess the impact of campaigns, promotions, or feature updates on user activity.
4. **Retention Analysis**: Detect periods of declining user activity and implement re-engagement strategies to maintain user interest.

--
