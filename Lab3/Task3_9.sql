--Ограничить результирующий набор, полученный в п.8.
SELECT "ProductID"
FROM "Production"."Product"
EXCEPT
SELECT "ProductID"
FROM "Production"."WorkOrder"
LIMIT 10; -- Здесь выбираются только первые 10 записей