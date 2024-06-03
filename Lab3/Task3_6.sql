--Показать список покупателей (CustomerID), которые имеют несколько
--сумм налога (TaxAmt), из таблицы Sales.SalesOrderHeader,
--используя SELF JOIN. Сумма налога меньше 100
SELECT DISTINCT SOH1."CustomerID"
FROM "Sales"."SalesOrderHeader" AS SOH1
INNER JOIN "Sales"."SalesOrderHeader" AS SOH2 ON SOH1."CustomerID" = SOH2."CustomerID"
WHERE SOH1."TaxAmt" <> SOH2."TaxAmt" AND SOH1."TaxAmt" < 100;