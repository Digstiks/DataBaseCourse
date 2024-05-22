--Показывать количество(стоимость)проданного товара(по выбранному товару, по магазину в целом) за отчетный период.
CREATE OR REPLACE FUNCTION GetProductSales(
    IN "p_product_name" VARCHAR(30),
    IN "p_start_date" DATE,
    IN "p_end_date" DATE
)
RETURNS TABLE (
    "total_quantity" BIGINT,
    "total_cost" BIGINT
) AS $$
BEGIN
    RETURN QUERY
    SELECT SUM(p."quantity") AS "total_quantity",
           SUM(p."total") AS "total_cost"
    FROM "Purchases" p
    INNER JOIN "Objects" o ON p."id_object" = o."ID"
    WHERE o."name_object" = "p_product_name"
    AND p."purchase_date" BETWEEN "p_start_date" AND "p_end_date";
END;
$$ LANGUAGE plpgsql;
--Вызов функции:
SELECT * FROM GetProductSales('Фотоаппарат', '2020-01-01', '2025-12-31');