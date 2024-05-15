--процедура AddPurchase принимает параметры p_id_buyer, p_id_object, p_purchase_date, p_total, и p_sale, 
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


--Вызов процедуры AddBuyer
CALL AddBuyer(6, 'Новый покупатель');
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


