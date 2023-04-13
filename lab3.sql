-- Отримати список міст України які закінчуються на ‘ськ’
SELECT name FROM cities WHERE name LIKE '%ськ';

-- Отримати список міст України у назві яких є ‘донец’
SELECT name FROM cities WHERE name LIKE '%донец%';

-- Отримати список міст з населенням більше ніж 100 000 з назвою у вигляді НАЗВА_МІСТА (РЕГІОН). Результат відсортувати за алфавітом
SELECT CONCAT(name, ' (', region, ')') AS city_and_region
FROM cities
WHERE population > 100000
ORDER BY name ASC;

-- Отримати перші 50 міст України (за населенням) та додати до запити обчислюване поле в якому буде вказано який процент від усього населення країни проживає у цьому місті. За загальну кількість населення України беремо число - 40 000 000.
SELECT name, population, CONCAT(ROUND(population/400000, 2), '%') AS percentage_of_population
FROM cities
ORDER BY population DESC
LIMIT 50;

-- Отримати список міст України у яких населення більше чи дорівнює 0.1% від загального населення України. Список має бути у форматі НАЗВА_МІСТА - ПРОЦЕНТ_НАСЕЛЕННЯ %. Результат відсортувати за процентом населення.
SELECT CONCAT(name, ' - ', ROUND((population/40000000)*100, 2), '%') AS city_and_percentage
FROM cities
WHERE population >= 40000
ORDER BY population DESC, name ASC;
