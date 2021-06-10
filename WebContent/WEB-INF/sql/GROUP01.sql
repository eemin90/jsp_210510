USE test;

SELECT * FROM Products;

-- MIN
SELECT MIN(Price) FROM Products;

SELECT * FROM Products
ORDER BY Price;

-- MAX
SELECT MAX(Price) FROM Products;

SELECT * FROM Products
ORDER BY Price DESC;

-- COUNT
SELECT COUNT(*) FROM Products;

-- AVG
SELECT AVG(Price) FROM Products;

-- SUM
SELECT SUM(Price) FROM Products;
