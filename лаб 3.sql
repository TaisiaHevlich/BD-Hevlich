LOAD DATA INFILE 'cities.csv'
INTO TABLE cities
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM cities WHERE name LIKE '%ськ';

SELECT * FROM cities WHERE name LIKE '%донец%';

SELECT CONCAT(name, ' (', region, ')') AS city_with_region 
FROM cities 
WHERE population > 100000 
ORDER BY name ASC;

SELECT name, population, CONCAT(ROUND(population/400000, 2), '%') AS percentage_of_population 
FROM cities 
ORDER BY population DESC 
LIMIT 50;

SELECT CONCAT(name, ' - ', ROUND(population, 2)) AS info FROM countries;
