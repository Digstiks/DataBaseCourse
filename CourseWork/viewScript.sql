--Представление продаж по каждому товару:
CREATE OR REPLACE VIEW "SalesByProduct" AS
SELECT o."name_object" AS "product_name",
       SUM(p."quantity") AS "total_quantity",
       SUM(p."total") AS "total_cost"
FROM "Purchases" p
INNER JOIN "Objects" o ON p."id_object" = o."ID"
GROUP BY o."name_object";

--Представление общей стоимости продаж за каждый месяц:
CREATE OR REPLACE VIEW "TotalSalesByMonth" AS
SELECT DATE_TRUNC('month', p."purchase_date") AS month,
       SUM(p."total") AS "total_sales"
FROM "Purchases" p
GROUP BY DATE_TRUNC('month', p."purchase_date")
ORDER BY month;