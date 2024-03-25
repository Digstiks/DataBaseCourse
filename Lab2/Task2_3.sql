--Найти количество номеров телефона разного типа (PhoneNumberTypeID) из таблицы Person.PersonPhone, где
--номер начинается с 819 Сортировать по возрастанию.
SELECT COUNT("PhoneNumberTypeID") AS "CountTypeId"
FROM "Person"."PersonPhone" pp 
WHERE "PhoneNumber" LIKE '819%'
GROUP BY "PhoneNumberTypeID"
ORDER BY "CountTypeId" ASC;