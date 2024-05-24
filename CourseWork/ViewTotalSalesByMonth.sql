--Представление общей стоимости продаж за каждый месяц:
CREATE OR REPLACE VIEW "TotalSalesByMonth" AS
SELECT DATE_TRUNC('month', p."purchase_date") AS month,
       SUM(p."total") AS "total_sales"
FROM "Purchases" p
GROUP BY DATE_TRUNC('month', p."purchase_date")
ORDER BY month;