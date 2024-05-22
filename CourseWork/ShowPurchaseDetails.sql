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