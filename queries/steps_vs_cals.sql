/* Identify the impact steps has on calories burned */

SELECT
  steps.Id,
  ROUND(AVG(steps.StepTotal), 2) AS AvgDailySteps,
  ROUND(AVG(cals.Calories), 2) AS AvgCalories,
  ROUND(CORR(steps.StepTotal, cals.Calories), 2) AS StepsCalsCorrelation
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.dailySteps` steps
JOIN `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.dailyCalories` cals
  ON steps.Id = cals.Id AND steps.ActivityDay = cals.ActivityDay
GROUP BY steps.Id
ORDER BY StepsCalsCorrelation DESC;