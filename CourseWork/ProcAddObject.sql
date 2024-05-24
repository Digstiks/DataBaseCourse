--Процедура AddObject добавляет новый товар
CREATE OR REPLACE PROCEDURE AddObject(
    IN "p_id" INT,
    IN "p_name_object" VARCHAR(30),
    IN "p_manufacturer" VARCHAR(30),
    IN "p_price" INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Objects" ("ID", "name_object", "manufacturer", "price")
    VALUES ("p_id", "p_name_object", "p_manufacturer", "p_price");
END;
$$;
--Вызов процедуры AddObject
CALL AddObject(1, 'Ноутбук', 'HP', 80000);