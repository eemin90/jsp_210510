SELECT * FROM Customers
WHERE CustomerID =32;

-- 위험한 코드(전체 CustomerName이 바뀌게됨)
UPDATE Customers
SET CustomerName = '스파이더맨';

UPDATE Customers
SET CustomerName = '아이언맨'
WHERE CustomerID = 1;

UPDATE Customers
SET CustomerName = 'thor',
    ContactName = 'odinson',
    Address = 'Asgard'
WHERE CustomerID = 1;

-- exercise01
UPDATE
 Customers
SET
 City = 'Oslo';
 
-- exericse02
UPDATE
 Customers
SET
 City = 'Seoul'
WHERE
 Country = 'Norway';

-- exercise03
UPDATE
 Customers
SET
 City = 'Seoul'
, Country = 'Korea'
WHERE CustomerID = 32;

SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers
WHERE CustomerID = 1;

SELECT * FROM Customers;

SELECT EmployeeID, LastName, FirstName, Notes FROM Employees
WHERE EmployeeID = 1;

select * from Employees;