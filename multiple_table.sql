SELECT id, trips_completed, model
FROM cars
ORDER BY 2 DESC
LIMIT 2;




SELECT COUNT(*) AS active
FROM cars
WHERE status = 'active';

SELECT *
FROM riders
WHERE total_trips < 500;


SELECT ROUND(AVG(cost), 2)
FROM trips;


SELECT *
FROM riders
UNION
SELECT *
FROM riders2;


SELECT * 
FROM trips
INNER JOIN cars
ON trips.car_id = cars.id;


SELECT *
FROM trips
LEFT JOIN riders
ON trips.rider_id = riders.id;


SELECT *
FROM riders
CROSS JOIN cars;


SELECT *
FROM trips
LIMIT 10;

SELECT *
FROM riders
LIMIT 10;

SELECT *
FROM cars
LIMIT 10;
