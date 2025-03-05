/* Group user based on activity levels */
SELECT
  ActivitySegment,
  SUM(AvgActiveMinutes)
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.segmentedActivityLevels`
GROUP BY ActivitySegment
ORDER BY SUM(AvgActiveMinutes) DESC;
