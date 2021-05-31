SELECT * FROM Customers
ORDER BY Country ASC; -- 오름차순

SELECT * FROM Customers
ORDER BY Country DESC; -- 내림차순

SELECT * FROM Customers
ORDER BY Country, City; -- 기본값 ASC(오름차순). Country(ASC), City(ASC)라고 보면 됨