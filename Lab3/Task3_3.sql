--Показать список товаров (поле Name), в котором указан, есть ли у
--товара дата начала отслеживания цены (StartDate) или нет, из
--таблицы Production.ProductListPriceHistory, Production.Product, используя RIGHT OUTER JOIN.
SELECT P."Name", 
CASE WHEN PLPH."StartDate" IS NULL THEN 'No' ELSE 'Yes' END AS HasStartDate
FROM "Production"."Product" AS P
RIGHT OUTER JOIN "Production"."ProductListPriceHistory" AS PLPH
ON P."ProductID" = PLPH."ProductID";