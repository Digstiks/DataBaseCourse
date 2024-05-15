--Показывать ассортимент выбранного товара и его цену.
CREATE OR REPLACE FUNCTION ShowProductInfo(
    IN p_id INT
)
RETURNS TABLE ("product_name" VARCHAR(30), "product_manufacturer" VARCHAR(30), "product_price" INT) AS $$
BEGIN
    RETURN QUERY
    SELECT "name_object" AS "product_name", "manufacturer" AS "product_manufacturer", "price" AS "product_price"
    FROM "Objects"
    WHERE "ID" = "p_id";
END;
$$ LANGUAGE plpgsql;
--Вызов функции:
SELECT * FROM ShowProductInfo(1);



--Находить товар по названию (по фирме изготовителя).
CREATE OR REPLACE FUNCTION FindProduct(
    IN "p_search_text" VARCHAR(30)
)
RETURNS TABLE ("product_id" INT, "product_name" VARCHAR(30), "product_manufacturer" VARCHAR(30), "product_price" INT) AS $$
BEGIN
    RETURN QUERY
    SELECT "ID" AS "product_id", "name_object" AS "product_name", "manufacturer" AS "product_manufacturer", "price" AS "product_price"
    FROM "Objects"
    WHERE "name_object" ILIKE '%' || "p_search_text" || '%' OR "manufacturer" ILIKE '%' || "p_search_text" || '%';
END;
$$ LANGUAGE plpgsql;
--Вызов функции:
SELECT * FROM FindProduct('HP');





--Рассчитывать стоимость покупки, учитывая скидку.
CREATE OR REPLACE FUNCTION ShowPurchaseDetails(
    IN "p_purchase_id" INT
)
RETURNS TABLE (
    "name_object" VARCHAR(30),
    "discount_percentage" INT,
    "quantity" INT,
    "total" INT
) AS $$
BEGIN
    RETURN QUERY
    SELECT o."name_object",
           p."sale",
           p."quantity",
           p."total"
    FROM "Purchases" p
    INNER JOIN "Objects" o ON p."id_object" = o."ID"
    WHERE p."ID" = "p_purchase_id";
END;
$$ LANGUAGE plpgsql;
--Вызов функции:
SELECT * FROM ShowPurchaseDetails(2);
   


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
