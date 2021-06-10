USE test;

SELECT * FROM Customers;

SELECT Country, COUNT(*) FROM Customers
GROUP BY Country;

SELECT Country, COUNT(CustomerID) cnt FROM Customers
GROUP BY Country
ORDER BY cnt DESC;
