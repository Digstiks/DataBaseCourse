--Изменить запрос п.5 использовать CUBE. Отделить строки, созданные с
--помощью агрегатных функций от строк из фактической таблицы.
select "EmployeeID", "ShipDate", avg("SubTotal") as "averageSub",
grouping ("EmployeeID","ShipDate")as "Grouping"
from "Purchasing"."PurchaseOrderHeader" poh  
group by cube ("EmployeeID","ShipDate");