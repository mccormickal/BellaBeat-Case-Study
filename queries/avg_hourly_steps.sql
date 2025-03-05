/* Find peak activity hours based on step counts */

SELECT
  FORMAT_DATE('%H', ActivityHour) AS Hour,
  ROUND(AVG(StepTotal), 2) AS AvgSteps
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.hourlySteps`
GROUP BY Hour
ORDER BY AvgSteps DESC;