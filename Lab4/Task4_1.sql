--Показать   товары,   цена   которых   меньше   средней   цены   (Таблица
--Production.Product). Показать поля Name, Size и ListPrice.
SELECT "Name", "Size", "ListPrice"
FROM "Production"."Product"
WHERE "ListPrice" < (SELECT AVG("ListPrice") FROM "Production"."Product");