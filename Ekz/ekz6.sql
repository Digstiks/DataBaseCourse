SELECT DISTINCT a."CustomerID"
FROM "Sales"."SalesOrderHeader" a
JOIN "Sales"."SalesOrderHeader" b ON a."CustomerID" = b."CustomerID" AND a."DueDate" <> b."DueDate";