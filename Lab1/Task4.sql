--Из таблицы Sales.SalesOrderDetail показать ID продажи
--(SalesOrderID) и ID товара (ProductID). Показать только те
--товары, у которых есть CarrierTrackingNumber.
select "SalesOrderID",
"ProductID"
from "Sales"."SalesOrderDetail" 
where "CarrierTrackingNumber" like '%';