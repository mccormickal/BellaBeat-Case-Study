/* Identify which days of the week users are most active (based on steps) */
SELECT
  FORMAT_DATE('%A', ActivityDay) AS DayOfWeek,
  ROUND(AVG(StepTotal), 2) AS AvgSteps
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.dailySteps`
GROUP BY DayOfWeek
ORDER BY AvgSteps DESC;