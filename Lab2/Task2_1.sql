--Показать количество разнообразных цветов товара (Color) из
--таблицы Production.Product.
select count(distinct"Color")as "CountColor"
from "Production"."Product" p 
where 
"Color" is not null ;