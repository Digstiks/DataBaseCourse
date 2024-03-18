--Показать название (Name) и размер (Size) товара из таблицы
--Production.Product, если имеются товары только размера 'M'.
--Заменить размер товара на NULL, если он имеет значение 'M'.
--Названия поля Size заменить на Class.
select "Name","Size",
coalesce(nullif("Size", 'M'), 'NULL')as "Class"
from "Production"."Product" p 
where "Size"='M';
 
