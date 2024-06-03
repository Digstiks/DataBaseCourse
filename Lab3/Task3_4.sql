--Показать список продуктов (ProductID), которые имеют несколько различных остатков на
--складах (Quantity), из таблицы Production.ProductInventory, используя SELF JOIN.
SELECT DISTINCT PI1."ProductID"
FROM "Production"."ProductInventory" AS PI1
INNER JOIN "Production"."ProductInventory" AS PI2 ON PI1."ProductID" = PI2."ProductID" and
PI1."Quantity" <> PI2."Quantity";