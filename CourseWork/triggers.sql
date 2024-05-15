--Создание триггера подсчета суммы покупки
CREATE TRIGGER "CalculateTotalTrigger"
BEFORE INSERT OR UPDATE OF "quantity", "id_object", "sale"
ON "Purchases"
FOR EACH ROW
EXECUTE FUNCTION UpdateTotal();

--Функция Триггера подсчета стоимости покупки с учетом скидки
CREATE OR REPLACE FUNCTION UpdateTotal()
RETURNS TRIGGER AS $$
BEGIN
    -- Вычисляем общую стоимость с учетом скидки
    NEW."total" := NEW."quantity" * (SELECT "price" FROM "Objects" WHERE "ID" = NEW."id_object") * (1 - (NEW."sale" / 100.0));
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
