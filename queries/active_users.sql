/* Identify active users vs. inactive users */
/* Categorize users based on their daily step count */

SELECT
  Id,
  ROUND(AVG(StepTotal), 2) AS AvgDailySteps,
  CASE
    WHEN AVG(StepTotal) >= 10000 THEN 'Highly Active'
    WHEN AVG(StepTotal) BETWEEN 5000 AND 9999 THEN 'Moderately Active'
    ELSE 'Inactive'
  END AS ActivityLevel
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.dailySteps`
GROUP BY Id
ORDER BY AvgDailySteps DESC;