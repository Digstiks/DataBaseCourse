--Показать список остатков на складах (Quantity), которые
--соответствуют нескольким продуктам (ProductID), из таблицы
--Production.ProductInventory, используя SELF JOIN.
SELECT DISTINCT PI1."ProductID", PI1."Quantity"
FROM "Production"."ProductInventory" AS PI1
INNER JOIN "Production"."ProductInventory" AS PI2 ON PI1."ProductID" = PI2."ProductID"
WHERE PI1."Quantity" <> PI2."Quantity";