/* User segmentation based on activity levels */
/* Groups based on active minutes */

SELECT 
  Id,
  ROUND(AVG(VeryActiveMinutes + FairlyActiveMinutes + LightlyActiveMinutes), 2) AS AvgActiveMinutes,
  CASE
    WHEN AVG(VeryActiveMinutes) > 30 THEN 'Highly Active'
    WHEN AVG(VeryActiveMinutes) BETWEEN 10 AND 29 THEN 'Moderately Active'
    ELSE 'Low Activity'
  END AS ActivitySegment
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.dailyIntensities`
GROUP BY Id
ORDER BY AvgActiveMinutes DESC;
