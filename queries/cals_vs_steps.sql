/* Identify the correlation between step count and calories burned */
SELECT
  ROUND(CORR(steps.StepTotal, cals.Calories), 2) AS Steps_Calories_Correlation
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.dailySteps` steps
JOIN `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.dailyCalories` cals USING (Id, ActivityDay);