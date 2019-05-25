 SELECT *
 FROM users
 LIMIT 10;

SELECT email, birthday
FROM users
WHERE birthday >= "1980-01-01"
	AND birthday <= "1989-12-31"
  LIMIT 10;
  
  SELECT email, created_at
  FROM users
  WHERE created_at < "2017-05-01"
  LIMIT 10;
  
  SELECT email, test
  FROM users
  WHERE test = "bears"
  LIMIT 10;
  
  SELECT email, campaign
  FROM users
  WHERE campaign LIKE "BBB%"
  LIMIT 10;
  
  SELECT email, campaign
  FROM users
  WHERE campaign LIKE "%2"
  LIMIT 10;
  
  SELECT email, campaign, test
  
  FROM users
  WHERE campaign IS NOT NULL
  	AND test IS NOT NULL
  LIMIT 10;
  
  
