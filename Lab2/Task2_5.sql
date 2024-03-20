--Вывести EmployeeID, ShipDate и среднее по SubTotal для
--всевозможных EmployeeID с одинаковой ShipDate из таблицы
--Purchasing.PurchaseOrderHeader. (Использовать ROLLUP).
select "EmployeeID", "ShipDate", avg("SubTotal") as "averageSub"
from "Purchasing"."PurchaseOrderHeader" poh 
group by ("EmployeeID","ShipDate") 