--Вывести EmployeeID, ShipDate и среднее по SubTotal для
--всевозможных EmployeeID с одинаковой ShipDate из таблицы
--Purchasing.PurchaseOrderHeader. (Использовать ROLLUP).
SELECT "EmployeeID", "ShipDate", AVG("SubTotal") AS "averageSub"
FROM "Purchasing"."PurchaseOrderHeader" poh 
GROUP BY ROLLUP("EmployeeID", "ShipDate");