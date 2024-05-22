--Представление продаж по каждому товару:
CREATE OR REPLACE VIEW "SalesByProduct" AS
SELECT o."name_object" AS "product_name",
       SUM(p."quantity") AS "total_quantity",
       SUM(p."total") AS "total_cost"
FROM "Purchases" p
INNER JOIN "Objects" o ON p."id_object" = o."ID"
GROUP BY o."name_object";