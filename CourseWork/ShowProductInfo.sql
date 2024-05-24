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