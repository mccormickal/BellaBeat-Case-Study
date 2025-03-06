/* Group user based on activity levels */
SELECT
  ActivitySegment,
  ROUND(AVG(AvgActiveMinutes), 2) AS AvgMinutes
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.userActivityLevelsView`
GROUP BY ActivitySegment
ORDER BY AvgMinutes DESC;
