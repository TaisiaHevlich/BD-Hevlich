USE mydatabase;

-- 1. Повернути другу п'ятірку міст України (за алфавітом) назву повернути у верхньому регістрі.
SELECT UPPER(name)
FROM cities
WHERE region = 'Ukraine'
ORDER BY name
LIMIT 5 OFFSET 5;

-- 2. Отримати назву міста і в окремому стовпчику довжину назви. У результат не повинні потрапити міста з довжиною назва 8,9 та 10 символів.
SELECT name, LENGTH(name) AS name_length
FROM cities
WHERE LENGTH(name) NOT IN (8, 9, 10);

-- 3. Отримати кількість населення у регіоні C та S.
SELECT region, SUM(population) AS total_population
FROM cities
WHERE region IN ('C', 'S')
GROUP BY region;

-- 4. Отримати середню кількість населення у містах з регіону W.
SELECT AVG(population) AS avg_population
FROM cities
WHERE region = 'W';

-- 5. Отримати кількість міст у регіоні E.
SELECT COUNT(*) AS count_cities
FROM cities
WHERE region = 'E';
