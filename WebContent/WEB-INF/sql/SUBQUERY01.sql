USE test;

SELECT Country FROM Customers
WHERE CustomerID = 1;

SELECT * FROM Customers
WHERE Country = 'Germany';

-- SUBQUERY
SELECT * FROM Customers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = 1);

-- 1번 고객과 같은 나라에 있는 Suppliers 출력
SELECT * FROM Suppliers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = 1);

-- 1번 고객과 다른 나라에 있는 Customers 출력
SELECT * FROM Customers
WHERE Country <> (SELECT Country FROM Customers WHERE CustomerID = 1);
SELECT * FROM Customers
WHERE Country != (SELECT Country FROM Customers WHERE CustomerID = 1);

-- Employees 테이블에서 Fuller 보다 나이가 많은 사람
SELECT * FROM Employees
WHERE BirthDate < (SELECT BirthDate FROM Employees WHERE LastName = 'Fuller');
