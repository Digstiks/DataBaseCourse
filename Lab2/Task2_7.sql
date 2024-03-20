--Изменить запрос п.5 использовать GROUPING SETS. Отделить строки,
--созданные с помощью агрегатных функций от строк из фактической таблицы.
SELECT
COALESCE(CAST("EmployeeID" AS TEXT), 'All') AS EmployeeID,
COALESCE(CAST("ShipDate" AS TEXT), 'All') AS ShipDate,
AVG("SubTotal") AS Average
FROM
"Purchasing"."PurchaseOrderHeader"
GROUP BY
GROUPING SETS (
("EmployeeID", "ShipDate"),
()
)
HAVING
("EmployeeID" IS NOT NULL OR "ShipDate" IS NOT NULL)
OR
(GROUPING("EmployeeID") = 1 AND GROUPING("ShipDate") = 1);