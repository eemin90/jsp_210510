USE test;

SELECT * FROM Customers;

SELECT Country, COUNT(CustomerID) AS cnt FROM Customers
GROUP BY Country
ORDER BY cnt DESC;

-- HAVING
SELECT Country, COUNT(CustomerID) cnt FROM Customers
GROUP BY Country
HAVING cnt > 5
ORDER BY cnt DESC;
