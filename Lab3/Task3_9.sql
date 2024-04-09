--Ограничить результирующий набор, полученный в п.8.
SELECT P."ProductID"
FROM "Production"."Product" AS P
LEFT JOIN "Production"."WorkOrder" AS WO ON P."ProductID" = WO."ProductID"
WHERE WO."ProductID" IS NULL
LIMIT 10; -- Здесь выбираются только первые 10 записей