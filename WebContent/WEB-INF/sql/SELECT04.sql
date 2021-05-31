SELECT CustomerName FROM Customers
WHERE CustomerID = 1;

SELECT CustomerName, City FROM Customers
WHERE CustomerID = 1;

SELECT CustomerID, CustomerName, City From Customers
WHERE CustomerID = 2;

SELECT CustomerID From Customers;

SELECT * FROM Employees
WHERE EmployeeID = 1;

SELECT DISTINCT City FROM Customers ORDER BY City;

SELECT EmployeeID, LastName, FirstName FROM Employees
WHERE EmployeeID = 1;

SELECT EmployeeID, LastName, FirstName, Notes FROM Employees;