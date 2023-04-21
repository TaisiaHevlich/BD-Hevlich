SELECT *
FROM cities
ORDER BY [population] DESC
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;


SELECT top(30) *
FROM cities
ORDER BY [name] DESC


SELECT *
FROM cities
ORDER BY [region] ASC,
         [population] DESC


SELECT DISTINCT region
FROM cities


SELECT *
FROM cities
ORDER BY [region] DESC,
         [name] DESC