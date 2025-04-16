-- ===========數學運算===========
SELECT 13*5, 81/2, 81 DIV 2, 11%3, 11 MOD 3


-- ===========SELECT查詢敘述===========
SELECT ID, Name
FROM   city

-- or wirte in one 
SELECT ID, Name FROM city

SELECT Name, ID
FROM   city

SELECT ID, Name, District
FROM   city


-- ===========別名===========
SELECT 'My name is Simon Johnson', 35 * 12


SELECT ename, salary * 12 AS 'Annual Salary'
FROM   cmdev.emp

SELECT ename, salary * 12 AS 'select'
FROM   cmdev.emp


SELECT ename, salary, salary * 12,
       (salary * 12) + (salary DIV 2)
FROM   cmdev.emp


SELECT ename, salary AS MonthSalary,
       salary * 12 AS AnnualSalary,
       (salary * 12) + (salary DIV 2) AnnualFullSalary
FROM   cmdev.emp


-- ===========註解===========
-- 這是單行註解

/*
此為多行註解
SELECT Name, ID
FROM   city
*/


-- ===========比較運算子===========
SELECT *
FROM   city
WHERE  CountryCode = 'TWN'


SELECT *
FROM   city
WHERE  CountryCode != 'TWN'


SELECT *
FROM   city
WHERE  Population < 800


SELECT *
FROM   city
WHERE  Population <= 800


-- 查找日期
SELECT *
FROM   cmdev.emp
WHERE  hiredate = '1981-09-08'


SELECT *
FROM   cmdev.emp
WHERE  hiredate > '1981-09-08'


SELECT *
FROM   cmdev.emp
WHERE  hiredate < '1981-09-08'

-- ===========邏輯運算子===========
-- NOT的用法
SELECT *
FROM   city
WHERE  NOT CountryCode = 'TWN'


-- AND的用法
SELECT *
FROM   city
WHERE  CountryCode = 'TWN' AND Population < 100000


-- OR的用法
SELECT *
FROM   city
WHERE  CountryCode = 'TWN' OR CountryCode='USA'


-- 要留意邏輯運算子的優先順序
-- AND和OR在同一行時，AND會優先處理
SELECT Name, Continent, Population
FROM   country
WHERE  Continent='Europe' OR Continent='Africa' AND Population<10000


SELECT Name, Continent, Population
FROM   country
WHERE  (Continent='Europe' OR Continent='Africa') AND Population<10000

-- ===========其他運算子===========
-- BETWEEN...AND...
SELECT *
FROM   city
WHERE  Population BETWEEN 80000 AND 90000


SELECT *
FROM   city
WHERE  Population >= 80000 AND Population <= 90000


SELECT *
FROM   city
WHERE  Population > 80000 AND Population < 90000


SELECT ename, hiredate
FROM   cmdev.emp
WHERE  hiredate BETWEEN '1981-01-01' AND '1981-05-01'


-- IN的用法
SELECT *
FROM   city
WHERE  CountryCode = 'TWN' OR 
       CountryCode = 'USA' OR
       CountryCode = 'JPN' OR
       CountryCode = 'ITA' OR
       CountryCode = 'KOR'


SELECT *
FROM   city
WHERE  CountryCode IN ('TWN','USA','JPN','ITA','KOR')


-- 資料中有NULL值
SELECT Name, LifeExpectancy
FROM   country
WHERE  LifeExpectancy = NULL


SELECT Name, LifeExpectancy
FROM   country
WHERE  LifeExpectancy IS NULL


SELECT Name, LifeExpectancy
FROM   country
WHERE  LifeExpectancy <=> NULL


SELECT Name, LifeExpectancy
FROM   country
WHERE  LifeExpectancy <> NULL


SELECT Name, LifeExpectancy
FROM   country
WHERE  LifeExpectancy IS NOT NULL


-- 特定字元查詢
SELECT Name FROM   city WHERE  Name = 'w'


SELECT Name
FROM   city
WHERE  Name LIKE 'w'


SELECT Name
FROM   city
WHERE  Name LIKE 'w%'


SELECT Name
FROM   city
WHERE  Name LIKE 'w%'


SELECT Name
FROM   city
WHERE  Name LIKE '%w'


SELECT Name
FROM   city
WHERE  Name LIKE '%w%'


SELECT Name
FROM   city
WHERE  Name LIKE 'w_____'


SELECT Name
FROM   city
WHERE  Name LIKE '_____w'


SELECT Name
FROM   city
WHERE  Name LIKE '_____w%'


SELECT Name
FROM   city
WHERE  Name LIKE '______________________________%'


-- ===========資料排序===========
SELECT   CountryCode, Name
FROM     city
ORDER BY CountryCode ASC


SELECT   CountryCode, Name
FROM     city
ORDER BY CountryCode


SELECT   CountryCode, Name
FROM     city
ORDER BY CountryCode DESC


SELECT   CountryCode, Name
FROM     city
ORDER BY CountryCode


SELECT   CountryCode, Name
FROM     city
ORDER BY CountryCode, Name


SELECT   CountryCode, Name
FROM     city
ORDER BY CountryCode DESC, Name ASC


SELECT   ename, salary * 12 AS AnnualSalary
FROM     cmdev.emp
ORDER BY salary * 12


SELECT   ename, salary * 12 AS AnnualSalary
FROM     cmdev.emp
ORDER BY AnnualSalary


-- ===========限制顯示列數===========
SELECT   ename, salary * 12 AS AnnualSalary
FROM     cmdev.emp
ORDER BY 2


SELECT   CountryCode, Name
FROM     city
ORDER BY Population


SELECT empno, ename 
FROM   cmdev.emp 
LIMIT  5


SELECT empno, ename 
FROM   cmdev.emp 
LIMIT  5, 5


SELECT   empno, ename, salary
FROM     cmdev.emp
ORDER BY salary DESC
LIMIT    3


SELECT   empno, ename, salary
FROM     cmdev.emp
ORDER BY salary ASC
LIMIT    3


-- ===========為查詢結果排除重複===========
SELECT Continent 
FROM country


SELECT DISTINCT Continent 
FROM country


SELECT DISTINCT Continent 
FROM country
ORDER BY Continent