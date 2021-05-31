SELECT * FROM Customers
LIMIT 10; -- 최초 10개만

SELECT * FROM Customers
ORDER BY Country
LIMIT 10;

SELECT * FROM Customers
ORDER By CustomerID
LIMIT 10;

SELECT * FROM Customers
ORDER By CustomerID
LIMIT 0, 10; -- 0번 index부터 10개

SELECT * FROM Customers
ORDER By CustomerID
LIMIT 10, 10; -- 10번 index부터 10개

SELECT * FROM Customers
ORDER By CustomerID
LIMIT 20, 10; -- 20번 index부터 10개

SELECT * FROM Customers
ORDER By CustomerID
LIMIT 30, 10; -- 30번 index부터 10개
