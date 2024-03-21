--Изменить запрос п.5 использовать GROUPING SETS. Отделить строки,
--созданные с помощью агрегатных функций от строк из фактической таблицы.
select "EmployeeID", "ShipDate", avg("SubTotal") as "averageSub"
from "Purchasing"."PurchaseOrderHeader" poh 
group by grouping sets(("EmployeeID"),("ShipDate"),()) 