--Процедура AddBuyer добавления нового покупателя
CREATE OR REPLACE PROCEDURE AddBuyer(
    IN "p_id" INT,
    IN "p_buyer_name" VARCHAR(30)
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Buyers" ("ID", "buyer_name")
    VALUES ("p_id", "p_buyer_name");
END;
$$;
--Вызов процедуры AddBuyer
CALL AddBuyer(6, 'Новый покупатель');