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
