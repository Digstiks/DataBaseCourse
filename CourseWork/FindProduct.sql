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