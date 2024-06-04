SELECT DISTINCT a."ProductSubcategoryID"
FROM "Production"."Product" a
JOIN "Production"."Product" b ON a."ProductSubcategoryID" = b."ProductSubcategoryID"
WHERE a."StandardCost" > 500 AND b."StandardCost" > 500 AND a."ProductID" <> b."ProductID";