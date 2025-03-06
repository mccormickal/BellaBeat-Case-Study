/* Group users based on how many minutes a day they wear their smart device */
SELECT
  COUNT(Id) AS NumUsers,
  FLOOR(Total_Minutes / 60) * 60 AS MinuteRange
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.dailyActivity`
GROUP BY MinuteRange
ORDER BY MinuteRange DESC;
