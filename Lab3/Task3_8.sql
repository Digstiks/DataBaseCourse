--Показать список ProductID, которые содержатся в таблице Production.Product,
--но не содержатся в таблице Production.WorkOrder.
SELECT P."ProductID"
FROM "Production"."Product" AS P
LEFT JOIN "Production"."WorkOrder" AS WO ON P."ProductID" = WO."ProductID"
WHERE WO."ProductID" IS NULL;