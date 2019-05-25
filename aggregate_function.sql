SELECT strftime("%H", timestamp) AS time, ROUND(AVG(score),2) AS avg_score, COUNT(*) AS '#'
FROM hacker_news
WHERE time IS NOT NULL

GROUP BY 1
ORDER BY 2 DESC;

SELECT strftime("%H", timestamp), AVG(score), COUNT(*)
FROM hacker_news
GROUP BY 1
ORDER BY 2 DESC;

SELECT timestamp, strftime("%H", timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 10;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT url, CASE
 	WHEN url LIKE '%github.com%' THEN 'GitHub'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  WHEN url IS NULL THEN "None"
  WHEN url LIKE "%youtube.com%" THEN "YouTube"
  ELSE "Other"
  END AS 'Source', COUNT(*)
FROM hacker_news
WHERE source != "None" AND source != "YouTube"
GROUP BY 2

ORDER BY 3 DESC
LIMIT 15;

SELECT url, CASE
 	WHEN url LIKE '%github.com%' THEN 'GitHub'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  WHEN url IS NULL THEN "None"
  WHEN url LIKE "%youtube.com%" THEN "YouTube"
  ELSE "Other"
  END AS 'Source'
FROM hacker_news
WHERE source != "None" AND source != "YouTube"
ORDER BY 1 DESC
LIMIT 15;

 
 SELECT user, COUNT(*)
 FROM hacker_news
 WHERE url = "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
 GROUP BY user
 ORDER BY 2 DESC;
   
 WITH superuser AS (
  SELECT user, SUM(score) as totalscore
 FROM hacker_news
 GROUP BY user
 HAVING SUM(score) > 200
 ORDER BY 2 DESC ),
 allscore AS (SELECT SUM(score) as total 
             FROM hacker_news)
             
 SELECT ROUND(100 * SUM(superuser.totalscore) / total, 2)
 
  FROM superuser, allscore;
  
  
 
 
 SELECT user, SUM(score)
 FROM hacker_news
 GROUP BY user
 HAVING SUM(score) > 200
 ORDER BY 2 DESC;
  
 SELECT SUM(score)
 FROM hacker_news;
  
 SELECT title, score
 FROM hacker_news
 ORDER BY score DESC
 LIMIT 5;
 
