SELECT UPPER(name) as name_uppercase
FROM cities
ORDER BY name
LIMIT 5 OFFSET 5;

SELECT name, LENGTH(name) as name_length
FROM cities
WHERE LENGTH(name) NOT IN (8,9,10);

SELECT region, SUM(population) as population_sum
FROM cities
WHERE region IN ('C', 'S')
GROUP BY region;

SELECT AVG(population) as population_avg
FROM cities
WHERE region = 'W';

SELECT COUNT(*) as city_count
FROM cities
WHERE region = 'E';

