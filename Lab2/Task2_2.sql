--Найти суммарную цену (ListPrice) товара размера M из таблицы
--Production.Product, не учитывать пустые и нулевые значения.
select  "Name",
coalesce("Size",'M'),
sum("ListPrice") as "TotalM"
from "Production"."Product" p 
where "Size" like 'M%' and "ListPrice" is not null
group by rollup("ListPrice","Name","Size");
