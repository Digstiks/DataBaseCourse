--Вывести пол, где средний возраст больше 42 лет из таблицы
--HumanResources.Employee (не учитывать пустые значения).
select avg(cast(date_part('YEAR',age(current_date,"BirthDate")) as bigint))> '42' as "average",
"Gender" 
from "HumanResources"."Employee"
where "BirthDate" is not null
group by "Gender";