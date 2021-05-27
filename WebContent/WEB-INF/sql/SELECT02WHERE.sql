-- WHERE 절 : row를 조건으로 필터

-- Equal
SELECT * FROM Customers
WHERE Country = "Mexico";

SELECT * FROM Customers
WHERE CustomerID = 1;

SELECT * FROM Products
WHERE Price = 18;

-- Greater than
SELECT * FROM Products
WHERE Price > 30;

-- Less than
SELECT * FROM Products
WHERE Price < 30;

-- Greater than or equal
SELECT * FROM Products
WHERE Price >= 30;

-- Less than or equal
SELECT * FROM Products
WHERE Price <= 30;

-- Not equal
SELECT * FROM Products
WHERE Price <> 18;

SELECT * FROM Products
WHERE Price != 18; -- <>와 !=는 같은 기능을 한다(not equal). !=는 SQL 버전에 따라 사용 가능 여부가 다름

SELECT * FROM Products
WHERE NOT Price = 18; -- 위와 같음

-- BETWEEN
SELECT * FROM Products
WHERE Price BETWEEN 50 AND 60; -- 50과 60 사이

-- LIKE
SELECT * FROM Customers
WHERE City LIKE 's%'; -- s로 시작하는 (대소문자 구분 안함)

SELECT * FROM Customers
WHERE City LIKE '%z%'; -- 중간에 z가 있는 (대소문자 구분 안함)

SELECT * FROM Customers
WHERE Country LIKE '%us%'; -- 중간에 us가 있는 (대소문자 구분 안함)

-- IN
SELECT * FROM Customers
WHERE City IN ('Paris', 'London', 'Berlin'); -- 다중 선택(Paris이거나 London이거나 Berlin이거나)

SELECT * FROM Customers
WHERE City = 'Paris'
OR City = 'London'
OR City = 'Berlin'; -- 위와 같음

-- AND
SELECT * FROM Customers
WHERE Country = 'Germany' and City = 'Berlin';

-- OR
SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'München';

-- NOT
SELECT * FROM Customers
WHERE NOT Country='Germany';

-- AND, OR, NOT
SELECT * FROM Customers
WHERE Country = 'Germany'
OR (CustomerName LIKE '%s%' AND City Like '%ch%');

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';
