--Ранжирование   сотрудников   по   должности   в   алфавитном   порядке.
--("HumanResources"."Employee").  Примечание   к   ранжированию  –
--ранг  может  начинаться  с  произвольного  числа   (например,  2  или  5),
--главное – ранг не должен уменьшаться.
SELECT 
    emp."BusinessEntityID",
    emp."JobTitle",
    ROW_NUMBER() OVER (ORDER BY emp."JobTitle") + 1 AS "Rank"
FROM 
    "HumanResources"."Employee" emp
ORDER BY 
    "Rank";