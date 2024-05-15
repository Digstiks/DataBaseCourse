--Показать товары, цена которых меньше средней цены в том же стиле
--(Таблица  Production.Product).  Показать поля  Name,  ListPrice и Style.
SELECT 
    p."Name",
    p."ListPrice",
    p."Style"
FROM 
    "Production"."Product" p
WHERE 
    p."ListPrice" < 
    (
        SELECT 
            AVG(p2."ListPrice")
        FROM 
            "Production"."Product" p2
        WHERE 
            p2."Style" = p."Style"
    );