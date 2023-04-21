SELECT region, SUM(population) AS total_population
FROM cities
GROUP BY region;


SELECT region, SUM(population) AS total_population
FROM cities
WHERE region IN (
  SELECT region
  FROM cities
  GROUP BY region
  HAVING COUNT(*) >= 10
)
GROUP BY region;


SELECT name, population
FROM cities
WHERE region IN (
  SELECT region
  FROM cities
  GROUP BY region
  HAVING COUNT(DISTINCT SUBSTRING_INDEX(name, ' ', 1)) >= 5
)
ORDER BY population DESC
LIMIT 10, 5;


SELECT region, SUM(population) AS total_population
FROM cities
WHERE population > 300000
GROUP BY region;


SELECT name, population
FROM cities
WHERE region IN (
  SELECT region
  FROM cities
  GROUP BY region
  HAVING COUNT(DISTINCT SUBSTRING_INDEX(name, ' ', 1)) <= 5
)
AND population NOT BETWEEN 150000 AND 500000;
