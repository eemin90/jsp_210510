

-- EXISTS (전체 레코드 대상으로 해당 조건이 TRUE인 경우만 모아서 출력)
SELECT SupplierName
FROM Suppliers
WHERE EXISTS 
(SELECT ProductName 
 FROM Products 
 WHERE Products.SupplierID = Suppliers.supplierID 
 AND Price < 20);

