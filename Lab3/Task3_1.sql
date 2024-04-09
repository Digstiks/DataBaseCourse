--Показать цену за штуку (UnitPrice)и поля Name, ProductNumber из таблиц
--Production.Product, Sales.SalesOrderDetail.
select "UnitPrice","Name","ProductNumber"  
from "Production"."Product" p ,"Sales"."SalesOrderDetail" sod 