--Показать товары, цена которых меньше средней цены в том же стиле
--(Таблица  Production.Product).  Показать поля  Name,  ListPrice и Style.
WITH "AveragePrices" AS 
    (SELECT "Style", AVG("ListPrice") AS "AverageListPrice"
     FROM "Production"."Product"
     GROUP BY "Style")
SELECT p."Name", p."ListPrice" , p."Style"
FROM "Production"."Product" p
JOIN "AveragePrices" ap
ON p."Style" = ap."Style"
WHERE p."ListPrice" < ap."AverageListPrice"
  AND p."ListPrice" > 0;