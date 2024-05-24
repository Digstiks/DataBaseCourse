-процедура AddPurchase принимает параметры p_id_buyer, p_id_object, p_purchase_date, p_total, и p_sale, 
--и использует их для вставки новой записи в таблицу Purchases.
CREATE OR REPLACE PROCEDURE AddPurchase(
    IN "p_id_buyer" INT,
    IN "p_id_object" INT,
    IN "p_purchase_date" DATE,
    IN "p_total" INT,
    IN "p_sale" INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Purchases" (id_buyer, id_object, purchase_date, total, sale)
    VALUES (p_id_buyer, p_id_object, p_purchase_date, p_total, p_sale);
END;
$$;

--Вызов процедуры AddPurchase
CALL "AddPurchase"(1, 1, '2024-05-15', 50000, 0);