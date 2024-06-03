--Показать цену за штуку (UnitPrice)и поля Name, ProductNumber из таблиц
--Production.Product, Sales.SalesOrderDetail.
SELECT SOD."UnitPrice", P."Name", P."ProductNumber"
FROM "Production"."Product" P
INNER JOIN "Sales"."SalesOrderDetail" SOD ON P."ProductID" = SOD."ProductID";