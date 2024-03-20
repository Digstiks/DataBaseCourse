--Найти количество номеров телефона разного типа (PhoneNumberTypeID) из таблицы Person.PersonPhone, где
--номер начинается с 819 Сортировать по возрастанию.
select  count("PhoneNumberTypeID") as "CountTypeId"
from "Person"."PersonPhone" pp 
where "PhoneNumber" like '819%'
group by "PhoneNumberTypeID" ;