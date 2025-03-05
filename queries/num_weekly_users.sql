/* Track weekly user activity */
SELECT
  FORMAT_DATE('%Y-%m-%U', ActivityDate) AS ActivityWeek,
  COUNT(DISTINCT Id) AS ActiveUsers
FROM `bellabeat-case-study-analysis.FitBit_Fitness_Tracker_Dataset.dailyActivity`
GROUP BY ActivityWeek
ORDER BY ActivityWeek;