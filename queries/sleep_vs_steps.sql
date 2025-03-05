/* Identify the impact sleep has on fitness activity */
/* Find how sleep duration affects step count */

SELECT
  sleep.Id,
  ROUND(AVG(sleep.TotalMinutesAsleep), 2) AS AvgSleepMinutes,
  ROUND(AVG(steps.StepTotal), 2) AS AvgDailySteps,
  ROUND(CORR(sleep.TotalMinutesAsleep, steps.StepTotal), 2) AS SleepStepsCorrelation
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.sleepDayView` sleep
JOIN `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.dailySteps` steps
  ON sleep.Id = steps.Id AND sleep.ActivityDay = steps.ActivityDay
GROUP BY sleep.Id
ORDER BY SleepStepsCorrelation DESC;
