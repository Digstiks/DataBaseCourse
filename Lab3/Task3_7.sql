-- Показать комбинированный список таблиц Person.Address, Person.BusinessEntityAddress по
-- полям AddressID, ModifiedDate, используя UNION.

-- Выборка из таблицы Person.Address
SELECT "AddressID", "ModifiedDate"
FROM "Person"."Address"

UNION

-- Выборка из таблицы Person.BusinessEntityAddress
SELECT "AddressID", "ModifiedDate"
FROM "Person"."BusinessEntityAddress";